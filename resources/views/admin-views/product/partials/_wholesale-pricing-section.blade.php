@php
    $wTiers = isset($tiers) ? $tiers : collect();
    $wInitial = [];
    foreach ($wTiers as $t) {
        $wInitial[] = ['min_qty' => (int) $t->min_qty, 'max_qty' => $t->max_qty, 'price' => (float) $t->price];
    }
@endphp
<div class="col-12 mt-4">
    <div class="border rounded-10 p-3 p-sm-4 bg-light">
        <div class="d-flex justify-content-between align-items-center mb-3">
            <div>
                <h3 class="h5 mb-1">{{ translate('Wholesale_pricing') }}</h3>
                <p class="fs-12 text-muted mb-0">{{ translate('Optional_quantity_breaks._Ranges_must_not_overlap_(e.g._1–4_then_5–9).') }}</p>
            </div>
            <button type="button" class="btn btn-outline-primary btn-sm" id="wholesale-add-tier">{{ translate('Add_tier') }}</button>
        </div>
        <div class="table-responsive">
            <table class="table table-bordered table-sm align-middle mb-0">
                <thead>
                <tr>
                    <th>{{ translate('Min_Qty') }}</th>
                    <th>{{ translate('Max_Qty') }} <span class="text-muted">({{ translate('leave_empty_for_unlimited') }})</span></th>
                    <th>{{ translate('Unit_price') }} ({{ getCurrencySymbol(currencyCode: getCurrencyCode()) }})</th>
                    <th style="width:60px"></th>
                </tr>
                </thead>
                <tbody id="wholesale-tier-rows"></tbody>
            </table>
        </div>
        <input type="hidden" name="wholesale_pricing_json" id="wholesale_pricing_json" value="">
    </div>
</div>
<script>
(function () {
    const initial = @json($wInitial);
    const tbody = document.getElementById('wholesale-tier-rows');
    const hidden = document.getElementById('wholesale_pricing_json');
    const form = document.getElementById('product_form');
    if (!tbody || !hidden) return;

    function rowTpl(data) {
        const tr = document.createElement('tr');
        tr.setAttribute('data-tier-row', '1');
        tr.innerHTML = '<td><input type="number" min="1" class="form-control form-control-sm wp-min" required value="' + (data.min_qty ?? '') + '"></td>' +
            '<td><input type="number" min="1" class="form-control form-control-sm wp-max" placeholder="∞" value="' + (data.max_qty ?? '') + '"></td>' +
            '<td><input type="number" min="0" step="0.01" class="form-control form-control-sm wp-price" required value="' + (data.price ?? '') + '"></td>' +
            '<td><button type="button" class="btn btn-sm btn-outline-danger wholesale-remove-tier">&times;</button></td>';
        tr.querySelector('.wholesale-remove-tier').addEventListener('click', () => tr.remove());
        return tr;
    }

    document.getElementById('wholesale-add-tier')?.addEventListener('click', () => tbody.appendChild(rowTpl({})));

    initial.forEach(d => tbody.appendChild(rowTpl(d)));

    function serializeWholesale() {
        const rows = [];
        tbody.querySelectorAll('tr[data-tier-row]').forEach(tr => {
            const min = parseInt(tr.querySelector('.wp-min').value, 10);
            const maxRaw = tr.querySelector('.wp-max').value.trim();
            const price = parseFloat(tr.querySelector('.wp-price').value);
            if (!Number.isFinite(min) || min < 1) return;
            if (!Number.isFinite(price) || price <= 0) return;
            rows.push({
                min_qty: min,
                max_qty: maxRaw === '' ? null : parseInt(maxRaw, 10),
                price: price
            });
        });
        hidden.value = JSON.stringify(rows);
    }

    form?.addEventListener('submit', function () {
        serializeWholesale();
    }, true);
})();
</script>
