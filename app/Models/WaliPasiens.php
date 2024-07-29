<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Database\Eloquent\SoftDeletes;

class WaliPasiens extends Model
{
    use HasFactory, SoftDeletes;
    protected $table = 'master_wali_pasien';
    protected $fillable = [
        'uuid',
        'nama',
        'tempat_lahir',
        'tanggal_lahir',
        'telephone',
        'alamat',
        'status',
    ];

    
    public function generalConsent(): HasOne
    {
        return $this->HasOne(GeneralConsent::class,'wali_id','uuid');
    }

  
}
