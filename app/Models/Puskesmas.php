<?php

namespace App\Models;

use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Database\Eloquent\SoftDeletes;

class Puskesmas  extends Authenticatable
{
    use HasFactory, SoftDeletes;

    protected $table = 'master_puskesmas';
    protected $fillable = [
        'uuid',
        'nama',
        'username',
        'password',
        'url_ip',
    ];

    public function pasiens(): HasMany
    {
        return $this->HasMany(Pasien::class,'puskesmas_id','uuid');
    }

    public function generalConsent(): HasOne
    {
        return $this->hasOne(GeneralConsent::class,'puskesmas_id','uuid');
    }

}
