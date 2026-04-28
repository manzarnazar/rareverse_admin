<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class ProductTierDiscount extends Model
{
    protected $fillable = [
        'product_id',
        'min_qty',
        'max_qty',
        'discount_type',
        'discount',
    ];

    protected $casts = [
        'product_id' => 'integer',
        'min_qty' => 'integer',
        'max_qty' => 'integer',
        'discount_type' => 'string',
        'discount' => 'float',
    ];

    public function product(): BelongsTo
    {
        return $this->belongsTo(Product::class, 'product_id');
    }
}
