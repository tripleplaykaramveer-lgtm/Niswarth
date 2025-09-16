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
        Schema::create('properties', function (Blueprint $table) {
            $table->integer('id', true);
            $table->text('title');
            $table->text('email')->nullable();
            $table->bigInteger('mobile_number')->nullable();
            $table->integer('capacity')->nullable();
            $table->string('price')->nullable();
            $table->text('amenity')->nullable();
            $table->text('location')->nullable();
            $table->text('address')->nullable();
            $table->text('city')->nullable();
            $table->text('landmark')->nullable();
            $table->integer('vanue_type')->nullable();
            $table->string('room')->nullable();
            $table->string('food_type')->nullable();
            $table->longText('description')->nullable();
            $table->string('dining_capacity')->nullable();
            $table->integer('pincode')->nullable();
            $table->string('state')->nullable();
            $table->double('rating', null, 0)->nullable();
            $table->enum('featured', ['1', '0'])->default('0');
            $table->text('latitude')->nullable();
            $table->text('longitude')->nullable();
            $table->integer('user_id')->nullable();
            $table->bigInteger('whatshapp_number')->nullable();
            $table->string('ac_room')->nullable();
            $table->string('non_ac_room')->nullable();
            $table->integer('added_by')->nullable();
            $table->string('slug')->nullable();
            $table->enum('status', ['1', '0'])->default('0');
            $table->timestamp('created_at')->useCurrent();
            $table->timestamp('updated_at')->useCurrent();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('properties');
    }
};
