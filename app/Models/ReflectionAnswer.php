<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Reflection;

class ReflectionAnswer extends Model
{
    use HasFactory;

    protected $table = 'reflection_answer';

    protected $fillable = [
        'reflection_id',
        'user_id',
        'pilihanuser',
    ];

    public function refleks()
    {
        return $this->hasOne(Reflection::class, "id", "reflection_id");
    }

    public $timestamps = false;

    

}
