<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Database\Eloquent\SoftDeletes;

class Pasien extends Model
{
    use HasFactory, SoftDeletes;
    protected $table = 'master_pasien';
    protected $fillable = [
        'uuid',
        'nama',
        'tempat_lahir',
        'tanggal_lahir',
        'telephone',
        'alamat',
        'puskesmas_id',
        'nik',
        'no_rm',
        'signature',
        'username',
        'password',
        'url_ip',
    ];

    public function puskesmas(): BelongsTo
    {
        return $this->BelongsTo(Puskesmas::class,'puskesmas_id','uuid');
    }

    public function generalConsent(): HasOne
    {
        return $this->HasOne(GeneralConsent::class,'pasien_id','uuid');
    }
}
