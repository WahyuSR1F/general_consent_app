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
        Schema::create('general_consent', function (Blueprint $table) {
            $table->id();
            $table->string('puskesmas_id');
            $table->string('petugas_id');
            $table->string('pasien_id');
            $table->date('wali_id');
            $table->string('file');
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        //
    }
};
