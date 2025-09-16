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
        Schema::create('spirituals', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('short_order');
            $table->string('image');
            $table->string('title');
            $table->text('description');
            $table->string('button_text')->nullable();
            $table->enum('status', ['1', '2'])->default('1')->comment('0 Inactive 1 Active');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('spirituals');
    }
};
