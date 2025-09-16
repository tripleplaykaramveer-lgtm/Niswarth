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
        Schema::table('medicine_minichaildrencategorys', function (Blueprint $table) {
            $table->foreign(['medicinechaildrencategory_id'], 'med_mini_cat_med_childcat_fk')->references(['id'])->on('medicine_chaildrencategorys')->onUpdate('restrict')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('medicine_minichaildrencategorys', function (Blueprint $table) {
            $table->dropForeign('med_mini_cat_med_childcat_fk');
        });
    }
};
