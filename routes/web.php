<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

// Route::get('/register', 'AuthController@getRegister');
// Route::post('/register', 'AuthController@postRegister')->name('register');
Route::get('/', 'AuthController@getLogin')->name('login');
Route::post('/', 'AuthController@postLogin');
Route::get('/home', function () {
     $pekerja = Auth::guard('pegawais')->user();
     $pekerja_nama = $pekerja->nip;
    return view('/admin/home', ['pekerja_nama']);
    // return dd(Auth::guard('pegawais')->user()->nip);
})->middleware('auth')->name('home2');
Route::get('/logout', 'AuthController@logout')->middleware('auth')->name('logout');

Route::get('/admin/penilaian_pegawai', 'PenilaianPegawaiController@index')->name('home');
Route::get('/admin/penilaian', 'PenilaianPegawaiController@penilaian');
Route::post('/admin/penilaian/store', 'PenilaianPegawaiController@store');
Route::get('/admin/profile', 'PenilaianPegawaiController@profile');

// Route::get('/admin/home', 'PenelitianController@index');

// Route::get('/admin/pegawai', 'PegawaiController@index');

// Route::get('/admin/narasumber', 'NarasumberController@index');

// Route::get('/admin/dokumen', 'DokumenController@index');

// Route::get('/admin/agenda_kegiatan', 'AgendaKegiatanController@index');

// Route::get('/admin/dokumen_kegiatan', 'DokumenKegiatanController@index');

// Route::get('/admin/tambah_penelitian', 'TambahPenelitianController@index');
// Route::post('/admin/tambah_penelitian/store', 'TambahPenelitianController@store');

// Route::get('/admin/rincian', 'RincianPenelitianController@index');


