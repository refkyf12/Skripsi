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
        $soal = Reflection::all();
        $soal_id = $id;
        $pa_response = "Halo! Kuis tentang Karya Tulis Ilmiah akan dimulai. Fokuslah pada setiap pertanyaan. Ini peluang untuk memeriksa pemahamanmu tentang menulis KTI. Ayo mulai dan berikan yang terbaik!";
        

        return view('siswa.hasil.reflection', ['data'=>$soal, 'response'=>$pa_response]);
    }

    public function reflectionnext(Request $request)
    {
        try{
            $request->validate([
                'inputJawaban.*' => 'required',
            ]);
    
            $jawaban = $request->all();
            $user_id = Auth::user()->id;
    
            $pertanyaanIds = $request->input('pertanyaan_id');
    
            $dataToInsert = [];
            foreach ($jawaban['inputJawaban'] as $index => $data) {
                $dataToInsert[] = [
                    'reflection_id' => $pertanyaanIds[$index],
                    'user_id' => $user_id,
                    'pilihanuser' => $data,
                    'created_at' => now(),
                    'updated_at' => now(),
                ];
            }
    
            ReflectionAnswer::insert($dataToInsert);
    
            return redirect('/hasil-pembelajaran')->with('success', 'Jawaban berhasil disimpan');
        } catch(\Exception $e) {
            return redirect('reflection/1')->with('answer_error', $e->getMessage());
        }
        
    }

    public function indexHasilPembelajaran(){
        return view('siswa.hasil.hasil-pembelajaran');
    }

}
