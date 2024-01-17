<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comments extends Model
{
    use HasFactory;

    protected $table = 'comments';

    protected $fillable = [
        'id_post',
        'id_user',
        'content'
    ];

    // Relasi antara Materi dan Quiz
    public function post()
    {
        return $this->belongsTo(Post::class);
    }

    public function user()
    {
        return $this->hasOne(User::class, "id", "id_user");
    }

    public $timestamps = false;
}
