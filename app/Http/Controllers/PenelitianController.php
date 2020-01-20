<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

use App\Penelitian;
use App\Kegiatan_Penelitian;
use App\Tim_Penelitian;
use App\Pegawai;

class PenelitianController extends Controller
{
    // public function __construct()
    // {
    //     $this->middleware('auth:pegawais');
    // }

    public function index(Request $request){
        $penelitian = Penelitian::where('deleted_at', NULL)->get();
        $kegiatanPenelitian = Kegiatan_Penelitian::where('deleted_at', NULL)->get();
        $timPenelitian = Tim_Penelitian::where('deleted_at', NULL)->get();
        $pegawai = Pegawai::where('deleted_at', NULL)->get();
        $pegawai_total_admin = Pegawai::whereNull('deleted_at')->get();

        foreach($pegawai_total_admin as $p){
            if($p->nama == $request->session()->get('nama')){
                $value = $p->nip;
            }
        }        
        // dd(Session::all());
        return view('/admin/home', ['value'=>$value, 'pegawai_total_admin'=>$pegawai_total_admin, 'penelitian'=>$penelitian, 'kegiatanPenelitian'=>$kegiatanPenelitian, 'timPenelitian'=>$timPenelitian, 'pegawai'=>$pegawai, 'value'=>$value]);
    }
}
