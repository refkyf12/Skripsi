<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Quiz extends Model
{
    use HasFactory;

    protected $table = 'quiz';
    
    protected $fillable = [
        'nama_quiz'
    ];

    // Relasi antara Quiz dan Materi
    public function materi()
    {
        return $this->belongsTo(Materi::class);
    }

    // Relasi antara Quiz dan Soal
    public function soals()
    {
        return $this->hasMany(Soal::class);
    }
}
