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
        Schema::table('cloth_minichailderncategorys', function (Blueprint $table) {
            $table->foreign(['cloth_chailderncategory_id'], 'med_mini_cat_cloth_chail_fk')->references(['id'])->on('cloth_chailderncategorys')->onUpdate('restrict')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('cloth_minichailderncategorys', function (Blueprint $table) {
            $table->dropForeign('med_mini_cat_cloth_chail_fk');
        });
    }
};
