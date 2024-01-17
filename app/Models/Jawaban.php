<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Jawaban extends Model
{
    use HasFactory;

    protected $table = 'jawaban';

    protected $fillable = [
        'soal_id',
        'user_id',
        'pilihanuser',
        'pilihanbenar',
    ];

    // Relasi antara Jawaban dan Soal
    public function soal()
    {
        return $this->belongsTo(Soal::class);
    }
}
