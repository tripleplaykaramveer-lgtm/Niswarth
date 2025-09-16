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
        Schema::table('medicine_chaildrencategorys', function (Blueprint $table) {
            $table->foreign(['medicinesubcategory_id'])->references(['id'])->on('medicine_subcategorys')->onUpdate('restrict')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('medicine_chaildrencategorys', function (Blueprint $table) {
            $table->dropForeign('medicine_chaildrencategorys_medicinesubcategory_id_foreign');
        });
    }
};
