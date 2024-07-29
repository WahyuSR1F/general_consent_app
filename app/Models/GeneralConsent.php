<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasOne;

class GeneralConsent extends Model
{
    use HasFactory;
    protected $table = 'general_consent';
    protected $fillable = [
        'uuid',
        'puskesmas_id',
        'petugas_id',
        'pasien_id',
        'wali_id',
        'file',
    ];

    public function puskesmas (): BelongsTo
    {
        return $this->belongsTo(Puskesmas::class, 'puskesmas_id', 'uuid');

    }

    public function petugas() : BelongsTo
    {
        return $this->belongsTo(Petugas::class, 'petugas_id', 'uuid');
    }


    public function pasien_id() : BelongsTo
    {
        return $this->belongsTo(Pasien::class, 'pasien_id', 'uuid');
    }
}
