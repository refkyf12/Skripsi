<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\PertanyaanPemantik;
use App\Models\JawabanPemantik;
use App\Models\Materi;
use Illuminate\Support\Facades\Auth;

class PemantikController extends Controller
{
    public function index()
    {
        $soal = PertanyaanPemantik::all();
        $pa_response = "Silahkan jawab pertanyaan berikut, tidak perlu takut salah untuk menjawab.";
        return view('siswa.pertanyaan_pemantik.page-pemantik',['data'=>$soal, 'response'=>$pa_response]);
    }

    public function storePemantik(Request $request){
        try {
            $request->validate([
                'inputJawaban.*' => 'required',
            ]);
    
            $jawaban = $request->all();
            $user_id = Auth::user()->id;
    
            $pertanyaanIds = $request->input('pertanyaan_id');
    
            $dataToInsert = [];
            foreach ($jawaban['inputJawaban'] as $index => $data) {
                $dataToInsert[] = [
                    'pertanyaan_id' => $pertanyaanIds[$index],
                    'user_id' => $user_id,
                    'jawaban' => $data,
                    'created_at' => now(),
                    'updated_at' => now(),
                ];
            }
    
            JawabanPemantik::insert($dataToInsert);
    
            return redirect('/hasil-pemantik')->with('success', 'Jawaban berhasil disimpan');
        } catch (\Exception $e) {
            return redirect('/pemantik')->with('error', $e->getMessage());
        }
        
    }

    public function hasilPemantik(){
        $materi = Materi::where('quiz_id', 1)->get();
        return view('siswa.pertanyaan_pemantik.hasil-pemantik', ['data'=>$materi]);
    }
}
