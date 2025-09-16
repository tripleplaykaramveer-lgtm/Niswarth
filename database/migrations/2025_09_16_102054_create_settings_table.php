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
        Schema::create('settings', function (Blueprint $table) {
            $table->integer('id', true);
            $table->string('site_name')->nullable();
            $table->string('meta_title')->nullable();
            $table->string('meta_keyword', 500)->nullable();
            $table->text('meta_description')->nullable();
            $table->text('meta_image')->nullable();
            $table->text('logo_header')->nullable();
            $table->text('logo_footer')->nullable();
            $table->text('favicon')->nullable();
            $table->string('email')->nullable();
            $table->string('mobile')->nullable();
            $table->string('address', 500)->nullable();
            $table->string('fb_link', 500)->nullable();
            $table->string('insta_link', 500)->nullable();
            $table->string('linked_link', 500)->nullable();
            $table->string('youtube_link', 500)->nullable();
            $table->integer('radius')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('settings');
    }
};
