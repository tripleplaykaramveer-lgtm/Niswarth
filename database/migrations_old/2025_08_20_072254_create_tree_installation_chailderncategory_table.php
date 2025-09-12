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
        Schema::create('tree_installation_chailderncategory', function (Blueprint $table) {
            $table->id();
               $table->unsignedBigInteger('tree_installation_subcategory_id');
            $table->foreign('tree_installation_subcategory_id')
                  ->references('id')
                  ->on('tree_installation_subcategorys')
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
        Schema::dropIfExists('tree_installation_chailderncategory');
    }
};
