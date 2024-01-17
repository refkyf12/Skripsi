<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use App\Models\Quiz;

use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function dashboardAdmin()
    {
        $user = Auth::user();

        // Pastikan pengguna adalah guru (role 1)
        if ($user->role != 1) {
            return redirect()->route('login'); // Redirect jika pengguna bukan guru
        }
        
        $siswa = User::where('role', 2)->get();

        return view('admin.dashboard-admin',['data'=>$siswa]); // Tampilkan tampilan dashboard-guru
    }

    public function dashboardSiswa()
    {
        $user = Auth::user();

        // Pastikan pengguna adalah siswa (role 2)
        if ($user->role != 2) {
            return redirect()->route('login'); // Redirect jika pengguna bukan siswa
        }

        $quiz = Quiz::all();
        return view('siswa.dashboard-siswa2',['data'=>$quiz])->with('user', $user); // Tampilkan tampilan dashboard-siswa
    }
}
