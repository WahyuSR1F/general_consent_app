<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Petugas extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = 'master_petugas';
    protected $fillable = [
        'uuid',
        'puskesmas_id',
        'nama',
        'nip',
        'signature',
    ];
}
