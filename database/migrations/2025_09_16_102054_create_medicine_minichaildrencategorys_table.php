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
        Schema::create('medicine_minichaildrencategorys', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('medicinechaildrencategory_id')->index('med_mini_cat_med_childcat_fk');
            $table->string('short_order')->nullable();
            $table->string('name');
            $table->string('title');
            $table->enum('status', ['0', '1'])->default('1')->comment('0 Inactive, 1 Active');
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('medicine_minichaildrencategorys');
    }
};
