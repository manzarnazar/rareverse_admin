<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class WholesalePricing extends Model
{
    protected $table = 'wholesale_pricing';

    protected $fillable = [
        'product_id',
        'min_qty',
        'max_qty',
        'price',
    ];

    protected $casts = [
        'product_id' => 'integer',
        'min_qty' => 'integer',
        'max_qty' => 'integer',
        'price' => 'float',
    ];

    public function product(): BelongsTo
    {
        return $this->belongsTo(Product::class);
    }
}
