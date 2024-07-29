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
        Schema::table('master_pasien', function (Blueprint $table) {
            $table->string('nama')->nullable()->change();
            $table->string('tempat_lahir')->nullable()->change();
            $table->date('tanggal_lahir')->nullable()->change();
            $table->string('telephone')->nullable()->change();
            $table->string('alamat')->nullable()->change();
            $table->string('puskesmas_id')->nullable()->change();
            $table->string('nik')->nullable()->change();
            $table->string('no_rm')->nullable()->change();
            $table->string('signature')->nullable()->change();
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
