<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\PertanyaanPemantik;

class JawabanPemantik extends Model
{
    use HasFactory;

    protected $table = 'jawaban_pemantik';

    protected $fillable = [
        'pertanyaan_id',
        'user_id',
        'jawaban'
    ];

    public function pemantiks()
    {
        return $this->hasOne(PertanyaanPemantik::class, "id", "pertanyaan_id");
    }

    

}
