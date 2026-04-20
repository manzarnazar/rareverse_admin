{{-- Expects $product as Product model with wholesalePricing relation --}}
@if(isset($product) && $product->wholesalePricing && $product->wholesalePricing->count() > 0)
    @php
        $ref = (float) $product->unit_price;
    @endphp
    <div class="mb-30 wholesale-pricing-block" id="wholesale-pricing-wrapper">
        <h3 class="fs-16 mb-3">{{ translate('Wholesale_pricing') }}</h3>
        <div class="table-responsive rounded border">
            <table class="table table-sm mb-0 wholesale-tier-table">
                <thead class="table-light">
                <tr>
                    <th>{{ translate('Qty') }}</th>
                    <th>{{ translate('Discount') }} (%)</th>
                    <th>{{ translate('Unit_price') }}</th>
                </tr>
                </thead>
                <tbody>
                @foreach($product->wholesalePricing as $t)
                    @php
                        $dto = $ref > 0 ? round(100 * ($ref - (float) $t->price) / $ref, 2) : null;
                        $label = $t->max_qty ? $t->min_qty . ' – ' . $t->max_qty : $t->min_qty . '+';
                    @endphp
                    <tr class="wholesale-tier-row" data-min="{{ (int) $t->min_qty }}" data-max="{{ $t->max_qty ?? '' }}">
                        <td>{{ $label }}</td>
                        <td>{{ $dto !== null ? $dto : '—' }}</td>
                        <td>{{ webCurrencyConverter($t->price) }}</td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
    </div>
    <script>
        (function () {
            function currentQty() {
                const el = document.querySelector('.add-to-cart-details-form .product-details-cart-qty, .add-to-cart-details-form input[name="quantity"]');
                const v = el ? parseInt(el.value, 10) : 1;
                return Number.isFinite(v) && v > 0 ? v : 1;
            }
            function highlightWholesaleRows() {
                const q = currentQty();
                document.querySelectorAll('.wholesale-tier-row').forEach(function (tr) {
                    const min = parseInt(tr.getAttribute('data-min'), 10);
                    const maxRaw = tr.getAttribute('data-max');
                    const max = maxRaw === '' ? null : parseInt(maxRaw, 10);
                    const inRange = q >= min && (max == null || q <= max);
                    tr.classList.toggle('table-success', inRange);
                });
            }
            window.highlightWholesalePricingRows = highlightWholesaleRows;
            document.addEventListener('DOMContentLoaded', highlightWholesaleRows);
            $(document).on('keyup input change', '.product-details-cart-qty, .add-to-cart-details-form input[name="quantity"]', highlightWholesaleRows);
        })();
    </script>
@endif
