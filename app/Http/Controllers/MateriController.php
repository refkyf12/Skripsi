<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Materi;
use App\Models\Quiz;

class MateriController extends Controller
{
    public function index()
    {
        $materis = Materi::all();
        return view('admin.materi.index',['data'=>$materis]);
    }

    public function create()
    {
        $quizzes = Quiz::all();
        return view('admin.materi.addMateri', ['data'=>$quizzes]);
    }

    public function store(Request $request)
    {
        $request->validate([
            'judul' => 'required',
            'konten' => 'required'
        ]);

        Materi::create($request->all());

        return redirect()->route('indexMateri')->with('success', 'Materi berhasil ditambahkan.');
    }

    public function edit(Materi $materi)
    {
        return view('materi.edit', compact('materi'));
    }

    public function update(Request $request, Materi $materi)
    {
        $request->validate([
            'judul' => 'required',
            'konten' => 'required'
        ]);

        $materi->update($request->all());

        return redirect()->route('materi.index')->with('success', 'Materi berhasil diperbarui.');
    }

    public function destroy(Materi $materi)
    {
        $materi->delete();

        return redirect()->route('materi.index')->with('success', 'Materi berhasil dihapus.');
    }
}
