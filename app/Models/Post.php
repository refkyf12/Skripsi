<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;

    protected $table = 'post';

    protected $fillable = [
        'judul_konten',
        'content',
        'id_user',
        'path_pdf',
        'type'
    ];

    // Relasi antara Materi dan Quiz
    public function user()
    {
        return $this->hasOne(User::class, "id", "id_user");
    }

    public function comment(){
        return $this->hasMany(Comments::class, "id_post");
    }

    public $timestamps = false;
}
