<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::create('wholesale_pricing', function (Blueprint $table) {
            $table->id();
            $table->foreignId('product_id')->constrained('products')->cascadeOnDelete();
            $table->unsignedInteger('min_qty');
            $table->unsignedInteger('max_qty')->nullable();
            $table->decimal('price', 21, 12);
            $table->timestamps();

            $table->index(['product_id', 'min_qty']);
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('wholesale_pricing');
    }
};
