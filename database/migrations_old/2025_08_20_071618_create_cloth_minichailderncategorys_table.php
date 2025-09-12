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
        Schema::create('cloth_minichailderncategorys', function (Blueprint $table) {
            $table->id();
             $table->unsignedBigInteger('cloth_chailderncategory_id');
            $table->foreign('cloth_chailderncategory_id','med_mini_cat_cloth_chail_fk')
                  ->references('id')
                  ->on('cloth_chailderncategorys')
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
        Schema::dropIfExists('cloth_minichailderncategorys');
    }
};
