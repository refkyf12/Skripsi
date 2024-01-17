<?php

namespace App\Http\Controllers;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use Exception;

use Illuminate\Http\Request;

class AuthController extends Controller
{
    public function showLoginForm()
    {
        return view('auth.login');
    }

    public function showRegisterForm()
    {
        return view('auth.register');
    }

    public function register(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|unique:users|max:255',
            'password' => 'required|string|min:6',
            'role' => 'required|integer', // Pastikan role yang diterima adalah angka
        ]);

        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'role' => $request->role,
        ]);

        // Setelah berhasil mendaftarkan pengguna, lakukan pengecekan peran dan redirect
        if ($user->role == 1) {
            return redirect()->route('dashboard-admin'); // Redirect ke dashboard-guru
        } elseif ($user->role == 2) {
            return redirect()->route('dashboard-siswa'); // Redirect ke dashboard-siswa
        }

        return response()->json(['message' => 'User registered successfully', 'user' => $user], 201);
    }

    public function login(Request $request)
    {
        $request->validate([
            'email' => 'required|string|email',
            'password' => 'required|string',
        ]);

        $credentials = $request->only('email', 'password');

        if (Auth::attempt($credentials)) {
            $user = Auth::user();
            if ($user->role == 1) {
                session()->put('name', Auth::user()->name);
                return redirect()->route('dashboard-admin'); // Redirect ke dashboard-guru
            } elseif ($user->role == 2) {
                session()->put('name', Auth::user()->name);
                return redirect()->route('dashboard-siswa'); // Redirect ke dashboard-siswa
            }
        }

        return response()->json(['message' => 'Invalid credentials'], 401);
    }

    public function logout() {
        try{
            \Session::flush();
            Auth::logout();
  
            return redirect('/login')->with('success', 'Berhasil logout');
        }catch(Exception $e){
            $errorMessage = $e->getMessage();
            return redirect('/login')->with('error', 'Gagal logout. Error : ' . $errorMessage);
        }
        
    }


}
