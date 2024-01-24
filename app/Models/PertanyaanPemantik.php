<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PertanyaanPemantik extends Model
{
    use HasFactory;

    protected $table = 'pertanyaan_pemantik';
    
    protected $fillable = [
        'pertanyaan'
    ];

    public function pemantiks()
    {
        return $this->hasMany(JawabanPemantik::class);
    }
}
