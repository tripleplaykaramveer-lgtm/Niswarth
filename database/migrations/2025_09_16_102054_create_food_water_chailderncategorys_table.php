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
        Schema::create('food_water_chailderncategorys', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('food_water_subcategory_id')->index('food_water_chailderncategorys_food_water_subcategory_id_foreign');
            $table->string('name');
            $table->string('title');
            $table->enum('status', ['0', '1'])->default('1')->comment('0 Inactive, 1 Active');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('food_water_chailderncategorys');
    }
};
