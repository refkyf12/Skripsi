<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\QuizController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

//Auth
Route::get('/login', 'App\Http\Controllers\AuthController@showLoginForm')->name('login');
Route::get('/logout', 'App\Http\Controllers\AuthController@logout')->name('logout');
Route::get('/register', 'App\Http\Controllers\AuthController@showRegisterForm');
Route::post('/registering', 'App\Http\Controllers\AuthController@register');
Route::post('/authenticate', 'App\Http\Controllers\AuthController@login');
Route::middleware('auth')->get('/dashboard-admin', 'App\Http\Controllers\DashboardController@dashboardAdmin')->name('dashboard-admin');
Route::middleware('auth')->get('/dashboard-siswa', 'App\Http\Controllers\DashboardController@dashboardSiswa')->name('dashboard-siswa');


//Materi
Route::get('/materi', 'App\Http\Controllers\MateriController@index')->name('indexMateri');
Route::get('/materi/add', 'App\Http\Controllers\MateriController@create')->name('addMateri');
Route::post('/materi/post', 'App\Http\Controllers\MateriController@store')->name('postMateri');

//Quiz
Route::get('/quiz', 'App\Http\Controllers\QuizController@index')->name('indexQuiz');
Route::get('/quiz/add', 'App\Http\Controllers\QuizController@create')->name('addQuiz');
Route::post('/quiz/post', 'App\Http\Controllers\QuizController@store')->name('postQuiz');

//StartQuiz
Route::get('/read-materi/{id}', 'App\Http\Controllers\QuizController@materi')->name('readMateri');
Route::get('/start-quiz/{quiz_id}/{id}', 'App\Http\Controllers\QuizController@soal')->name('startQuiz');
Route::post('/next/{quiz_id}/{id}', 'App\Http\Controllers\QuizController@next')->name('nextQuiz');
Route::get('/hasil/{user_id}/{quiz_id}', 'App\Http\Controllers\QuizController@indexUser')->name('indexUser');

//Jawaban
Route::get('/jawaban', 'App\Http\Controllers\JawabanController@index')->name('indexJawaban');
Route::get('/eval/{id}', 'App\Http\Controllers\JawabanController@evalSiswa')->name('evalSiswa');
Route::get('/reflection/{id}', 'App\Http\Controllers\JawabanController@reflection')->name('reflectionSiswa');
Route::post('/refleksi/submit', 'App\Http\Controllers\JawabanController@reflectionnext')->name('reflectionSiswa');

//Fordis
Route::get('/fordis', 'App\Http\Controllers\FordisController@indexPost')->name('indexPost');
Route::get('/fordis-kesimpulan', 'App\Http\Controllers\FordisController@indexKesimpulan')->name('indexKesimpulan');
Route::get('/fordis-perbedaan', 'App\Http\Controllers\FordisController@indexPerbedaan')->name('indexPerbedaan');
Route::post('/post', 'App\Http\Controllers\FordisController@storePost')->name('storePost');
Route::post('/comments', 'App\Http\Controllers\FordisController@storeComments')->name('storeComments');

//Soal
Route::get('/soal', 'App\Http\Controllers\SoalController@index')->name('indexSoal');

//Pemantik
Route::get('/pemantik', 'App\Http\Controllers\PemantikController@index')->name('');
Route::get('/hasil-pemantik', 'App\Http\Controllers\PemantikController@hasilPemantik')->name('');
Route::post('/pemantik/submit', 'App\Http\Controllers\PemantikController@storePemantik')->name('');

//AkhirPembelajaran
Route::get('/hasil-pembelajaran', 'App\Http\Controllers\JawabanController@indexHasilPembelajaran')->name('');

