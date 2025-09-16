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
        Schema::table('tree_installation_subcategorys', function (Blueprint $table) {
            $table->foreign(['tree_installation_id'], 'tree_installation_subcategory_tree_installation_id_foreign')->references(['id'])->on('tree_installations')->onUpdate('restrict')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('tree_installation_subcategorys', function (Blueprint $table) {
            $table->dropForeign('tree_installation_subcategory_tree_installation_id_foreign');
        });
    }
};
