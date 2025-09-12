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
        Schema::create('deals', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('lead_id');
            $table->foreign('lead_id')->references('id')->on('leads')->onDelete('cascade');

            $table->string('deal_name');
            $table->decimal('deal_value', 15, 2)->default(0);
            $table->date('close_date')->nullable();
            $table->foreignId('pipeline_id')->constrained()->onDelete('cascade');
            $table->foreignId('deal_stage_id')->constrained()->onDelete('cascade');
            $table->foreignId('deal_category_id')->nullable()->constrained()->nullOnDelete();
            $table->foreignId('deal_agent_id')->nullable()->constrained('users')->nullOnDelete();
            $table->timestamps();
});

    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('deals');
    }
};
