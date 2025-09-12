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
            $table->id();
            $table->unsignedBigInteger('medicinesubcategory_id');
            $table->foreign('medicinesubcategory_id')
                  ->references('id')
                  ->on('medicine_subcategorys')
                  ->onDelete('cascade'); 
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
        Schema::dropIfExists('medicine_chaildrencategorys');
    }
};
