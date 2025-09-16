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
        Schema::table('spiritual_subcategorys', function (Blueprint $table) {
            $table->foreign(['spiritual_id'], 'spiritual_subcategory_spiritual_id_foreign')->references(['id'])->on('spirituals')->onUpdate('restrict')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('spiritual_subcategorys', function (Blueprint $table) {
            $table->dropForeign('spiritual_subcategory_spiritual_id_foreign');
        });
    }
};
