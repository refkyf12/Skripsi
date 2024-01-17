<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Soal;

class SoalController extends Controller
{
    public function index()
    {
        $soal = Soal::all();
        return view('admin.soal.index',['data'=>$soal]);
    }
}
