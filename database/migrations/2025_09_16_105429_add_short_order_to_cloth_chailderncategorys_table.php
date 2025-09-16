<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
   public function up()
{
    Schema::table('cloth_chailderncategorys', function (Blueprint $table) {
        $table->integer('short_order')->nullable()->after('status');
    });
}

public function down()
{
    Schema::table('cloth_chailderncategorys', function (Blueprint $table) {
        $table->dropColumn('short_order');
    });
}

};
