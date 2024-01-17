<?php

namespace App\Http\Controllers;
use App\Models\Jawaban;
use App\Models\Reflection;
use App\Models\User;
use App\Models\ReflectionAnswer;
use Illuminate\Support\Facades\Auth;

use Illuminate\Http\Request;

class JawabanController extends Controller
{
    public function index()
    {
        $jawaban = Jawaban::all();
        return view('admin.jawaban.index',['data'=>$jawaban]);
    }

    public function evalSiswa()
    {
        $user = Auth::user();
        $jawaban = Jawaban::where('user_id', $user->id)->get();
        $soal = $jawaban[0]->soal->soal;
        $reflection = Reflection::first();
        $refleksi = ReflectionAnswer::get();
        return view('siswa.hasil.evaluation',['data'=>$jawaban, 'refleksi'=>$reflection, 'reflection'=>$refleksi, 'user'=>$user]);
    }

    public function reflection(Request $request, $id)
    {
        $user = Auth::user();
        $soal_refleksi = Reflection::find($id);
        $soal_id = $id;
        $pa_response = "Halo! Kuis tentang Karya Tulis Ilmiah akan dimulai. Fokuslah pada setiap pertanyaan. Ini peluang untuk memeriksa pemahamanmu tentang menulis KTI. Ayo mulai dan berikan yang terbaik!";
        
        $pilihan = json_decode($soal_refleksi -> pilihan_refleksi);
        

        return view('siswa.hasil.reflection', ['data'=>$soal_refleksi, 'pilihan'=>$pilihan, 'response'=>$pa_response]);
    }

    public function reflectionnext(Request $request, $id)
    {
        $pa_response = "Halo! Kuis tentang Karya Tulis Ilmiah akan dimulai. Fokuslah pada setiap pertanyaan. Ini peluang untuk memeriksa pemahamanmu tentang menulis KTI. Ayo mulai dan berikan yang terbaik!";
        $user = Auth::user();
        $soal_refleksi = Reflection::find($id);
        $pilihanUser = $request->input('answer');
        $soal_id = $id;
        $pilihanBenar = $soal_refleksi->refleksi_benar;

        if (!$request->has('answer')) {
            return redirect()->back()->with('answer_error', 'Pilih jawaban terlebih dahulu.');
        }

        ReflectionAnswer::create([
            'reflection_id' => $soal_id,
            'user_id' => $user->id,
            'pilihanuser' => $pilihanUser,
            'pilihanbenar' => $pilihanBenar,
        ]);

        if($pilihanUser == $pilihanBenar){
            $user = User::find($user->id);
            $user->reflectivePoint += 1;
            $user->save();
        }

        $soal_id = $soal_refleksi->id += 1;

        if($soal_id > 2){
            return redirect('/eval/' . $user->id)->with('pa_response', $pa_response)->with('user', $user);
        } else {
            return redirect('/reflection/' . $soal_id)->with('pa_response', $pa_response);
        }
    }

}
