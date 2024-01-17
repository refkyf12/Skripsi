<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Materi extends Model
{
    use HasFactory;

    protected $table = 'materi';

    protected $fillable = [
        'quiz_id',
        'judul',
        'konten'
    ];

    // Relasi antara Materi dan Quiz
    public function quizzes()
    {
        return $this->hasMany(Quiz::class);
    }
}
