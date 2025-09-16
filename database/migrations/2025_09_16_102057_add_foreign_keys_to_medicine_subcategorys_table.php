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
        Schema::table('medicine_subcategorys', function (Blueprint $table) {
            $table->foreign(['medicine_id'])->references(['id'])->on('medicines')->onUpdate('restrict')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('medicine_subcategorys', function (Blueprint $table) {
            $table->dropForeign('medicine_subcategorys_medicine_id_foreign');
        });
    }
};
