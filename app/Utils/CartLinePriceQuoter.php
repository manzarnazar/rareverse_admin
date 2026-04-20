<?php

namespace App\Utils;

use App\Models\Cart;
use App\Models\Product;
use App\Models\WholesalePricing;

class CartLinePriceQuoter
{
    /**
     * List/reference unit before wholesale (variant price or unit_price).
     */
    public static function referenceUnitPrice(Product $product, ?string $variantKey): float
    {
        $variantKey = $variantKey ?? '';
        if ($variantKey !== '' && $product->product_type === 'physical') {
            $productVariation = json_decode($product->variation ?? '', true);
            if (is_array($productVariation)) {
                foreach ($productVariation as $variation) {
                    if (isset($variation['type'], $variation['price']) && $variation['type'] === $variantKey) {
                        return (float) $variation['price'];
                    }
                }
            }
        }

        if ($product->product_type === 'digital' && $variantKey !== '') {
            $product->loadMissing('digitalVariation');
            foreach ($product->digitalVariation as $variation) {
                $key = is_array($variation) ? ($variation['variant_key'] ?? null) : $variation->variant_key;
                if ($key === $variantKey) {
                    $p = is_array($variation) ? ($variation['price'] ?? null) : $variation->price;

                    return (float) ($p ?? $product->unit_price);
                }
            }
        }

        return (float) $product->unit_price;
    }

    /**
     * Tier unit price for quantity, or null if no tier applies.
     */
    public static function tierUnitPrice(Product $product, int $qty): ?float
    {
        if (!$product->relationLoaded('wholesalePricing')) {
            $product->load('wholesalePricing');
        }

        foreach ($product->wholesalePricing as $tier) {
            $min = (int) $tier->min_qty;
            $max = $tier->max_qty !== null ? (int) $tier->max_qty : null;
            if ($qty < $min) {
                continue;
            }
            if ($max !== null && $qty > $max) {
                continue;
            }

            return (float) $tier->price;
        }

        return null;
    }

    /**
     * @return array{unit: float, discount: float, wholesale_applied: bool}
     */
    public static function quote(Product $product, ?string $variantKey, int $qty): array
    {
        $reference = self::referenceUnitPrice($product, $variantKey);
        $tier = self::tierUnitPrice($product, $qty);

        if ($tier !== null) {
            return [
                'unit' => $tier,
                'discount' => 0.0,
                'wholesale_applied' => true,
            ];
        }

        $productArr = self::productToArrayForPricing($product);
        $discount = (float) getProductPriceByType(
            product: $productArr,
            type: 'discounted_amount',
            result: 'value',
            price: $reference
        );

        return [
            'unit' => $reference,
            'discount' => $discount,
            'wholesale_applied' => false,
        ];
    }

    /**
     * @return array<string, mixed>
     */
    public static function productToArrayForPricing(Product $product): array
    {
        $product->loadMissing(['clearanceSale' => fn ($q) => $q->active()]);
        $arr = $product->toArray();
        if ($product->relationLoaded('clearanceSale') && $product->clearanceSale) {
            $arr['clearanceSale'] = $product->clearanceSale->toArray();
        }

        return $arr;
    }

    public static function syncCartRow(Cart $cart): void
    {
        $product = Product::with(['wholesalePricing', 'clearanceSale' => fn ($q) => $q->active(), 'digitalVariation'])
            ->find($cart->product_id);
        if (!$product) {
            return;
        }

        $variant = (string) ($cart->variant ?? '');
        $qty = max(1, (int) $cart->quantity);

        $quote = self::quote($product, $variant !== '' ? $variant : null, $qty);
        $tax = Helpers::tax_calculation(
            product: $product,
            price: $quote['unit'],
            tax: $product['tax'],
            tax_type: 'percent'
        );

        Cart::where('id', $cart->id)->update([
            'price' => $quote['unit'],
            'discount' => $quote['discount'],
            'wholesale_applied' => $quote['wholesale_applied'] ? 1 : 0,
            'tax' => $tax,
        ]);
    }

    public static function productHasWholesaleTiers(Product $product): bool
    {
        if ($product->relationLoaded('wholesalePricing')) {
            return $product->wholesalePricing->isNotEmpty();
        }

        return WholesalePricing::where('product_id', $product->id)->exists();
    }
}
