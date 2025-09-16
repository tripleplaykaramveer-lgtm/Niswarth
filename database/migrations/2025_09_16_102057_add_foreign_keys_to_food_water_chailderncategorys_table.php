<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('food_water_chailderncategorys', function (Blueprint $table) {
            $table->foreign(['food_water_subcategory_id'])->references(['id'])->on('food_water_subcategorys')->onUpdate('restrict')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('food_water_chailderncategorys', function (Blueprint $table) {
            $table->dropForeign('food_water_chailderncategorys_food_water_subcategory_id_foreign');
        });
    }
};
