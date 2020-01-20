<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Penelitian;
use App\Kegiatan_Penelitian;
use App\Tim_Penelitian;
use App\Pegawai;
use App\Peran_Peneliti;

class RincianPenelitianController extends Controller
{
    public function index(Request $request){
        $penelitian = Penelitian::where('kode_penelitian', '=', $request->id)
                                ->where(function ($query) {
                                    $query->whereNull('deleted_at');
                                })
                                ->get();
        
        $kegiatanPenelitian = Kegiatan_Penelitian::where('kode_penelitian', '=', $request->id)
                                ->where(function ($query) {
                                    $query->whereNull('deleted_at');
                                })
                                ->get();
    
        $timPenelitian = Tim_Penelitian::join('pegawais', 'tim_penelitians.nip', '=', 'pegawais.nip')
                                ->select('tim_penelitians.nip', 'pegawais.nama','tim_penelitians.kode_penelitian', 'tim_penelitians.id_peran')
                                ->where('kode_penelitian', '=', $request->id)
                                ->where(function ($query) {
                                    $query->whereNull('tim_penelitians.deleted_at');
                                })
                                ->get();
        $pegawai = Pegawai::where('deleted_at', NULL)->get();
        $peranPeneliti = Peran_Peneliti::where('deleted_at', NULL)->get();

        return view('/admin/rincian', ['penelitian'=>$penelitian, 'kegiatanPenelitian'=>$kegiatanPenelitian, 'timPenelitian'=>$timPenelitian, 'pegawai'=>$pegawai, 'peranPeneliti'=>$peranPeneliti]);
    }
}
