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
        Schema::table('education_chailderncategorys', function (Blueprint $table) {
            $table->foreign(['educationsubcategory_id'], 'educationminichaild_educationchaild_id_foreign')->references(['id'])->on('education_subcategorys')->onUpdate('restrict')->onDelete('restrict');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('education_chailderncategorys', function (Blueprint $table) {
            $table->dropForeign('educationminichaild_educationchaild_id_foreign');
        });
    }
};
