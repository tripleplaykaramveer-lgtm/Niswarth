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
        Schema::create('bookings', function (Blueprint $table) {
            $table->integer('id', true);
            $table->integer('property_id');
            $table->date('booking_date')->nullable();
            $table->string('client_name')->nullable();
            $table->bigInteger('mobile_number')->nullable();
            $table->text('boking_perpes')->nullable();
            $table->integer('total_amount')->nullable();
            $table->integer('advance_amount')->nullable();
            $table->integer('due_amount')->nullable();
            $table->string('user_id')->nullable();
            $table->integer('vendor_user_id')->nullable();
            $table->date('parent_date')->nullable();
            $table->enum('status', ['1', '0'])->default('1');
            $table->timestamp('created_at')->useCurrent();
            $table->timestamp('updated_at')->useCurrent();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('bookings');
    }
};
