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
        Schema::table('cloth_chailderncategorys', function (Blueprint $table) {
            $table->foreign(['cloth_subcategory_id'])->references(['id'])->on('cloth_subcategorys')->onUpdate('restrict')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('cloth_chailderncategorys', function (Blueprint $table) {
            $table->dropForeign('cloth_chailderncategorys_cloth_subcategory_id_foreign');
        });
    }
};
