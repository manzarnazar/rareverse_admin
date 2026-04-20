<?php

namespace App\Utils;

use Illuminate\Support\Collection;
use Illuminate\Validation\ValidationException;

class WholesalePricingValidator
{
    /**
     * @param  array<int, array{min_qty?: mixed, max_qty?: mixed, price?: mixed}>|Collection  $tiers
     * @return array<int, array{min_qty: int, max_qty: int|null, price: float}> normalized rows
     *
     * @throws ValidationException
     */
    public static function validateAndNormalize(array|Collection $tiers): array
    {
        if ($tiers instanceof Collection) {
            $tiers = $tiers->all();
        }

        if ($tiers === []) {
            return [];
        }

        $rows = [];
        foreach ($tiers as $index => $row) {
            $min = isset($row['min_qty']) ? (int) $row['min_qty'] : null;
            $max = array_key_exists('max_qty', $row) && $row['max_qty'] !== '' && $row['max_qty'] !== null
                ? (int) $row['max_qty']
                : null;
            $price = isset($row['price']) ? (float) $row['price'] : null;

            if ($min === null || $min < 1) {
                throw ValidationException::withMessages([
                    'wholesale_pricing' => ['Each wholesale tier must have min_qty at least 1.'],
                ]);
            }
            if ($max !== null && $max < $min) {
                throw ValidationException::withMessages([
                    'wholesale_pricing' => ['Wholesale tier max_qty must be greater than or equal to min_qty.'],
                ]);
            }
            if ($price === null || $price <= 0) {
                throw ValidationException::withMessages([
                    'wholesale_pricing' => ['Wholesale tier price must be positive.'],
                ]);
            }

            $rows[] = ['min_qty' => $min, 'max_qty' => $max, 'price' => $price];
        }

        usort($rows, fn ($a, $b) => $a['min_qty'] <=> $b['min_qty']);

        for ($i = 1, $n = count($rows); $i < $n; $i++) {
            $prev = $rows[$i - 1];
            $curr = $rows[$i];
            if ($curr['min_qty'] === $prev['min_qty']) {
                throw ValidationException::withMessages([
                    'wholesale_pricing' => ['Wholesale tiers must not duplicate min_qty.'],
                ]);
            }
            if ($prev['max_qty'] === null) {
                throw ValidationException::withMessages([
                    'wholesale_pricing' => ['Only the last wholesale tier may have an open-ended max_qty.'],
                ]);
            }
            if ($curr['min_qty'] <= $prev['max_qty']) {
                throw ValidationException::withMessages([
                    'wholesale_pricing' => ['Wholesale tier ranges must not overlap (e.g. 1–5 and 5–10 both include 5).'],
                ]);
            }
        }

        $last = $rows[count($rows) - 1];
        if ($last['max_qty'] !== null) {
            // optional: allow all closed ranges — no extra rule
        }

        return $rows;
    }
}
