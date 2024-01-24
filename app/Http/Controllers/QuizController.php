<?php

namespace App\Http\Controllers;
use App\Models\Quiz;
use App\Models\Materi;
use App\Models\Soal;
use App\Models\Jawaban;
use App\Models\User;
use Illuminate\Support\Facades\Auth;

use Illuminate\Http\Request;

class QuizController extends Controller
{
    public function index()
    {
        $quiz = Quiz::all();
        return view('admin.quiz.index',['data'=>$quiz]);    
    }

    public function create() {
        $quiz = Quiz::all();
        return view('admin.quiz.addQuiz',['data'=>$quiz]);
    }

    public function store(Request $request) {
        $request->validate([
            'nama_quiz' => 'required'
        ]);

        Quiz::create($request->all());
        
        return redirect()->route('indexQuiz')->with('success','Quiz berhasil ditambah');
    }

    public function materi(Request $request, $quiz_id)
    {   
        $materi = Materi::where('quiz_id', $quiz_id)->get();
        $soal = Soal::where('quiz_id', $quiz_id)->get();

        $pa_responses = [
            "Selamat datang! Materi yang sedang kamu baca adalah tentang pemrograman dasar. Fokuskan perhatianmu pada konsep dasar seperti variabel, pernyataan kondisional, dan pengulangan.",
            "Baca setiap bagian secara cermat dan pastikan kamu memahami definisi serta contoh yang diberikan.",
            "Jangan ragu untuk membuat catatan tentang konsep yang mungkin sulit dipahami. Hal ini akan membantumu untuk mengingat kembali dan memahami dengan lebih baik",
            "Jika ada istilah atau konsep yang masih membingungkan, gunakan sumber daya tambahan seperti video tutorial atau buku referensi untuk memperdalam pemahamanmu.",
            "Ingatlah bahwa pemahamanmu adalah kuncinya. Selamat belajar!"
        ];

        return view('siswa.materi.page-materi', ['data'=>$materi, 'data2'=>$soal, 'pa_responses' => $pa_responses]);
    }

    public function soal(Request $request, $quiz_id, $id)
    {
        $soal = Soal::where('quiz_id', $quiz_id)
                ->where('id', $id)
                ->get();

        $pa_response = "Halo! Kuis tentang Karya Tulis Ilmiah akan dimulai. Fokuslah pada setiap pertanyaan. Ini peluang untuk memeriksa pemahamanmu tentang menulis KTI. Ayo mulai dan berikan yang terbaik!";
        
        $id_user = Auth::user()->id;
        if($id == 1) {
            $quiz = User::find($id_user);
            $quiz->poin = 0;
            $quiz->streak = 0;
            $quiz->save();
        }

        $pilihan = json_decode($soal[0]->pilihan);
        return view('siswa.quiz.page-soal', ['data'=>$soal, 'pilihan'=>$pilihan, 'response'=>$pa_response]);
    }

    public function next(Request $request, $quiz_id, $id)
    {
        $id_user = Auth::user()->id;
        $user = Auth::user();

        $pa_responseBenar = "Bagus sekali! Jawabanmu benar. Itu menunjukkan pemahaman yang baik tentang tahapan penulisan Karya Tulis Ilmiah. Lanjutkan kerja bagusmu!";
        $pa_responseSalah = "Hmm, sepertinya jawabanmu belum tepat. Yuk, kita coba lagi. Perhatikan dengan seksama dan pastikan untuk memahami konsep ini sebelum menjawab.";
        $pa_responseBenarStreak = "Kamu sangat baik dalam memahami konsep ini! Pertahankan kerja kerasmu dalam menjawab soal-soal seperti ini.";
        $pa_responseSalahStreak = "Pahami dengan tenang, ini adalah bagian yang memerlukan perhatian lebih. Mungkin kamu perlu meninjau kembali bagian yang berkaitan sebelum mencoba lagi. Jika perlu, tanyakan pertanyaan yang lebih spesifik.";
        $pa_nilaiBagus = "Hebat! Hasilnya memuaskan. Kamu telah menunjukkan pemahaman yang kuat tentang bagaimana menulis Karya Tulis Ilmiah. Pastikan untuk mempertahankan standar ini dalam setiap tahap pembelajaranmu.";
        $pa_nilaiSalah = "Hasilnya masih kurang memuaskan, tetapi jangan khawatir! Ini kesempatan untuk belajar lebih lanjut. Periksa kembali langkah-langkahnya dan pastikan memahami setiap aspek dengan baik sebelum mencoba lagi.";


        $soal = Soal::where('quiz_id', $quiz_id)
                ->where('id', $id)
                ->get();

        $user_id = Auth::user()->id;
        $pilihanUser = $request->input('answer');
        $id_quiz = $quiz_id;
        $soal_id = $id;
        $pilihanBenar = $soal[0]->pilihan_benar;

        if (!$request->has('answer')) {
            return redirect()->back()->with('answer_error', 'Pilih jawaban terlebih dahulu.');
        }

        $quiz = Quiz::find($id_quiz);
        $total_soal = $quiz->jumlah_soal;

        Jawaban::create([
            'soal_id' => $soal_id,
            'user_id' => $user_id,
            'pilihanuser' => $pilihanUser,
            'pilihanbenar' => $pilihanBenar,
        ]);

        $counterStreak = 0;

        
        if($pilihanUser == $pilihanBenar){
            $counterStreak += 1;
            $quiz = User::find($id_user);
            $quiz->poin += 1;
            $quiz->streak += 1;
            $quiz->save();
            $pa_response = $pa_responseBenar;
            if ($quiz->streak >= 2){
                $pa_response = $pa_responseBenarStreak;
            }
        } else {
            $quiz = User::find($id_user);
            if($quiz->streak >= 0){
                $quiz = User::find($id_user);
                $quiz->streak = -1;
                $quiz->save();
                $pa_response = $pa_responseSalah;
            } else {
                $quiz = User::find($id_user);
                $quiz->streak -= 1;
                $quiz->save();
                if($quiz->streak <= -2) {
                    $pa_response = $pa_responseSalahStreak;
                }
            }
        }
        
        $id_soal = $soal[0] -> id += 1;
        
        
        if($id_soal > $total_soal){
            $user = User::find($id_user);
            if($user->poin > 3){
                $pa_response = $pa_nilaiBagus;
                return redirect('/hasil/' . $user_id . '/' . $quiz_id)->with('pa_response', $pa_response)->with('user', $user_id);
            }else{
                $pa_response = $pa_nilaiSalah;
                return redirect('/hasil/' . $user_id . '/' . $quiz_id)->with('pa_response', $pa_response)->with('user', $user_id);
            }
        } else {
            return redirect('/start-quiz/' . $quiz_id . '/' . $id_soal)->with('pa_response', $pa_response);
        }
        
    }

    public function indexUser(Request $request, $id_user, $id_quiz)
    {
        $user = User::find($id_user);
        return view('siswa.hasil.index',['data'=>$user]);    
    }

}
