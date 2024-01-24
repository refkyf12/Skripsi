<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Auth;
use App\Models\Post;
use App\Models\Comments;
use App\Models\User;
use App\Models\Materi;
use App\Models\Soal;

use Illuminate\Http\Request;

class FordisController extends Controller
{
    public function indexPost()
    {
        $post= Post::all();
        $materi = Materi::where('quiz_id', 1)->get();
        $soal = Soal::where('quiz_id', 1)->get();

        return view('siswa.fordis.fordis',['data'=>$post, 'materi' => $materi,'soal'=> $soal]);
    }

    public function storePost(Request $request)
    {
        $request->validate([
            'content' => 'required'
        ]);

        $content = $request->input('content');
        $judul_konten = $request->input('judul_konten');

        $user = Auth::user();

        $file = $request->file('pdf');
        $fileName = $file->getClientOriginalName();
        $filePath = $file->storeAs('pdfs', $fileName, 'public');
        
        $pdfPath = Storage::url($filePath);
        
        Post::create([
            'judul_konten' => $judul_konten,
            'content' => $content,
            'id_user' => $user->id,
            'path_pdf' => $filePath
        ]);
        return redirect()->route('indexPost')->with('success', 'Materi berhasil ditambahkan.');
    }

    public function storeComments(Request $request)
    {
        $request->validate([
            'komen' => 'required'
        ]);

        $content = $request->input('komen');
        $id_post = $request->input('id_post');

        $user = Auth::user();

        Comments::create([
            'content' => $content,
            'id_user' => $user->id,
            'id_post' => $id_post
        ]);

        return redirect()->route('indexPost')->with('success', 'Materi berhasil ditambahkan.');
    }
}
