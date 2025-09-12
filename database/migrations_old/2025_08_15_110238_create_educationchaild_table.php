<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('educationchaild', function (Blueprint $table) {
            $table->id();

            // Create foreign key column first
            $table->unsignedBigInteger('educationtype_id');

            // Create the foreign key constraint
            $table->foreign('educationtype_id')
                  ->references('id')
                  ->on('education_types')
                  ->onDelete('cascade'); // Optional but recommended

            $table->string('name');
            $table->enum('status', ['0', '1'])->default('1')->comment('0 Inactive, 1 Active');
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('educationchaild');
    }
};
