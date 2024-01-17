<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Soal extends Model
{
    use HasFactory;

    protected $table = 'soal';

    protected $fillable = [
        'quiz_id',
        'soal',
        'pilihan',
        'pilihan_benar',

    ];

    // Relasi antara Soal dan Quiz
    public function quiz()
    {
        return $this->belongsTo(Quiz::class);
    }

    // Relasi antara Soal dan Jawaban
    public function jawabans()
    {
        return $this->hasMany(Jawaban::class);
    }
}
