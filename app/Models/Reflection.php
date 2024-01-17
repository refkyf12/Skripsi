<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Reflection extends Model
{
    use HasFactory;

    protected $table = 'reflection';
    
    protected $fillable = [
        'nama_refleksi',
        'pilihan_refleksi',
        'refleksi_benar'
    ];

    public function reflections()
    {
        return $this->hasMany(ReflectionAnswer::class);
    }
}
