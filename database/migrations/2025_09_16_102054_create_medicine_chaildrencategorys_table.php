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
        Schema::create('medicine_chaildrencategorys', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('short_order')->nullable();
            $table->unsignedBigInteger('medicinesubcategory_id')->index('medicine_chaildrencategorys_medicinesubcategory_id_foreign');
            $table->string('name');
            $table->string('title');
            $table->enum('status', ['0', '1'])->default('1')->comment('0 Inactive, 1 Active');
            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('medicine_chaildrencategorys');
    }
};
