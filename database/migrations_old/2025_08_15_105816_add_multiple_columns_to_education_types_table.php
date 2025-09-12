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
        Schema::table('education_types', function (Blueprint $table) {
            $table->unsignedBigInteger('education_id')->after('id');
            $table->enum('status', ['0', '1'])
                ->default('1')
                ->comment('0 Inactive, 1 Active')
                ->after('slug');

            $table->foreign('education_id')->references('id')->on('education');
        });

    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('education_types', function (Blueprint $table) {
            $table->dropColumn([
            'education_id',
            'status',
        ]);
        });
    }
};
