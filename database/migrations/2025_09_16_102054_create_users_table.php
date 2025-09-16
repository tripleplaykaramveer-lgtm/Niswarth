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
        Schema::create('users', function (Blueprint $table) {
            $table->integer('id', true);
            $table->string('name')->nullable();
            $table->text('email')->nullable();
            $table->string('password');
            $table->bigInteger('mobile_number');
            $table->enum('status', ['1', '0'])->default('1');
            $table->integer('role')->default(0);
            $table->integer('assign_user')->nullable();
            $table->text('image')->nullable();
            $table->integer('is_verified')->nullable()->default(1);
            $table->text('device_user_token')->nullable();
            $table->timestamp('created_at')->useCurrent();
            $table->timestamp('updated_at')->useCurrent();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('users');
    }
};
