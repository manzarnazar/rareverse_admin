<?php

namespace App\Utils;

use App\Models\WholesalePricing;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class WholesalePricingSync
{
    /**
     * Read wholesale tiers from request (JSON string or array) and replace rows for product.
     */
    public static function syncFromHttpRequest(Request $request, int $productId): void
    {
        $raw = $request->input('wholesale_pricing_json', $request->input('wholesale_pricing', []));
        if ($raw === '' || $raw === null) {
            $raw = [];
        }
        if (is_string($raw)) {
            $decoded = json_decode($raw, true);
            $raw = is_array($decoded) ? $decoded : [];
        }
        if (!is_array($raw)) {
            $raw = [];
        }
        if ($raw === []) {
            WholesalePricing::where('product_id', $productId)->delete();

            return;
        }
        self::syncFromRaw($productId, $raw);
    }

    /**
     * @param  array<int, array{min_qty: int, max_qty: int|null, price: float}>  $normalizedTiers
     */
    public static function replaceForProduct(int $productId, array $normalizedTiers): void
    {
        DB::transaction(function () use ($productId, $normalizedTiers) {
            WholesalePricing::where('product_id', $productId)->delete();
            foreach ($normalizedTiers as $row) {
                WholesalePricing::create([
                    'product_id' => $productId,
                    'min_qty' => $row['min_qty'],
                    'max_qty' => $row['max_qty'],
                    'price' => $row['price'],
                ]);
            }
        });
    }

    /**
     * @param  array<int, array{min_qty?: mixed, max_qty?: mixed, price?: mixed}>|\Illuminate\Support\Collection  $raw
     */
    public static function syncFromRaw(int $productId, array|\Illuminate\Support\Collection $raw): void
    {
        $normalized = WholesalePricingValidator::validateAndNormalize($raw);
        self::replaceForProduct($productId, $normalized);
    }
}
