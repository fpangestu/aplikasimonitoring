<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Pegawai;
use App\Point_Penilaian_Pegawai;
use App\Tim_Penelitian;
use App\Peran_Peneliti;
use App\Penilaian_Pegawai;

class PenilaianPegawaiController extends Controller
{
    // public function __construct()
    // {
    //     $this->middleware('auth');
    // }

    public function index(Request $request){
        $pegawai = Pegawai::where('nama', '<>','ADMINISTRATOR')
                        ->where(function ($query) {
                            $query->whereNull('deleted_at');
                        })
                        ->orderBy('nama', 'asc')
                        ->paginate(9);

        $pegawai_total = Pegawai::where('nama', '<>','ADMINISTRATOR')
                        ->where(function ($query) {
                            $query->whereNull('deleted_at');
                        })
                        ->orderBy('nama', 'asc')
                        ->get();

        $pegawai_total_admin = Pegawai::whereNull('deleted_at')->get();

        $pointPenilaianPegawai = Point_Penilaian_Pegawai::where('point_penilaian', '<>','Catatan')
                        ->where(function ($query) {
                            $query->whereNull('deleted_at');
                        })
                        ->get();
        
        $penilaianPegawai = Penilaian_Pegawai::whereNull('deleted_at')->get();
        // $value = $request->session()->get('nip');
        foreach($pegawai_total_admin as $p){
            if($p->nama == $request->session()->get('nama')){
                $value = $p->nip;
            }
        }
        return view('/admin/penilaian_pegawai', ['value'=>$value, 'pegawai_total_admin'=>$pegawai_total_admin, 'pegawai'=>$pegawai, 'pegawai_total'=>$pegawai_total, 'pointPenilaianPegawai'=>$pointPenilaianPegawai, 'penilaianPegawai'=>$penilaianPegawai]);
    }

    public function penilaian(Request $request){
        $pegawai = Pegawai::where('nip', $request->id)
                        ->where(function ($query) {
                            $query->whereNull('deleted_at');
                        })
                        ->orderBy('nama', 'asc')
                        ->paginate(9);

        $pegawai_total = Pegawai::where('nilai', NULL)
                        ->where(function ($query) {
                            $query->whereNull('deleted_at');
                        })
                        ->orderBy('nama', 'asc')
                        ->get();

        $pegawai_total_admin = Pegawai::whereNull('deleted_at')->get();


        $pointPenilaianPegawai = Point_Penilaian_Pegawai::where('point_penilaian', '<>','Catatan')
                        ->where(function ($query) {
                            $query->whereNull('deleted_at');
                        })
                        ->get();

        $peranPenelitian = Peran_Peneliti::whereNull('deleted_at')
                        ->get();

        $timPenelitian = Tim_Penelitian::join('peran_penelitians', 'tim_penelitians.id_peran', '=', 'peran_penelitians.id_peran')
                        ->select('tim_penelitians.nip', 'tim_penelitians.kode_penelitian', 'tim_penelitians.id_peran', 'peran_penelitians.peran')
                        ->where('tim_penelitians.nip', '=', $request->id)
                        ->where(function ($query) {
                            $query->whereNull('tim_penelitians.deleted_at');
                        })
                        ->get();

        foreach($pegawai_total_admin as $p){
            if($p->nama == $request->session()->get('nama')){
                $value = $p->nip;
            }
        }
        return view('/admin/penilaian', ['value'=>$value, 'pegawai_total_admin'=>$pegawai_total_admin, 'pegawai'=>$pegawai, 'pointPenilaianPegawai'=>$pointPenilaianPegawai, 'timPenelitian'=>$timPenelitian, 'peranPenelitian'=>$peranPenelitian, 'penerimaNilai'=>$request->id]);
    }

    public function store(Request $request){
        $pegawai = Pegawai::where('nilai', NULL)
                        ->where(function ($query) {
                            $query->whereNull('deleted_at');
                        })
                        ->orderBy('nama', 'asc')
                        ->paginate(9);

        $pointPenilaianPegawai = Point_Penilaian_Pegawai::where('point_penilaian', '<>','Catatan')
                        ->where(function ($query) {
                            $query->whereNull('deleted_at');
                        })
                        ->get();
        
        $pointPenilaianPegawai2 = Point_Penilaian_Pegawai::where('point_penilaian', '=','Catatan')
                        ->where(function ($query) {
                            $query->whereNull('deleted_at');
                        })
                        ->get();
        
        // SIMPAN DATA NILAI KE DATABASE
        foreach($pointPenilaianPegawai as $ppp){
            $point = preg_replace('/\s+/', '_', $ppp->point_penilaian);

            DB::table('penilaians')->insert([
                'pemberi_nilai' => $request->pemberiNilai,
                'penerima_nilai' => $request->penerimaNilai,
                'id_point_penilaian'=>$ppp->id_point_penilaian,
                'point'=> $request->$point
            ]);
        }

        foreach($pointPenilaianPegawai2 as $ppp){ 
            $point = preg_replace('/\s+/', '_', $ppp->point_penilaian);

            DB::table('penilaians')->insert([
                'pemberi_nilai' =>  $request->pemberiNilai,
                'penerima_nilai' => $request->penerimaNilai,
                'id_point_penilaian'=>$ppp->id_point_penilaian,
                'catatan'=> $request->$point
            ]);
        }
        
        // BACA DATA HASIL SIMPAN
        $penilaianPegawai = Penilaian_Pegawai::whereNull('deleted_at')
                        ->get();

        return redirect('/admin/penilaian_pegawai');
    }

    public function profile(Request $request){
        $pegawai = Pegawai::where('nip', $request->id)
                        ->where(function ($query) {
                            $query->whereNull('deleted_at');
                        })
                        ->orderBy('nama', 'asc')
                        ->paginate(9);

        $pegawai_total = Pegawai::where('nilai', NULL)
                        ->where(function ($query) {
                            $query->whereNull('deleted_at');
                        })
                        ->orderBy('nama', 'asc')
                        ->get();

        $pegawai_total_admin = Pegawai::whereNull('deleted_at')->get();


        $pointPenilaianPegawai = Point_Penilaian_Pegawai::where('point_penilaian', '<>','Catatan')
                        ->where(function ($query) {
                            $query->whereNull('deleted_at');
                        })
                        ->get();
        
        $penilaianPegawai = Penilaian_Pegawai::where([
                            ['id_point_penilaian', '=','6'],
                            ['penerima_nilai', '=',$request->id],
                        ])
                        ->where(function ($query) {
                            $query->whereNull('deleted_at');
                        })
                        ->get();

        $peranPenelitian = Peran_Peneliti::whereNull('deleted_at')
                        ->get();

        $timPenelitian = Tim_Penelitian::join('peran_penelitians', 'tim_penelitians.id_peran', '=', 'peran_penelitians.id_peran')
                        ->select('tim_penelitians.nip', 'tim_penelitians.kode_penelitian', 'tim_penelitians.id_peran', 'peran_penelitians.peran')
                        ->where('tim_penelitians.nip', '=', $request->id)
                        ->where(function ($query) {
                            $query->whereNull('tim_penelitians.deleted_at');
                        })
                        ->get();

        foreach($pegawai_total_admin as $p){
            if($p->nama == $request->session()->get('nip')){
                $value = $p->nip;
            }
        }
        return view('/admin/penilaian_pegawai_profile', ['penilaianPegawai'=>$penilaianPegawai, 'value'=>$value, 'pegawai_total_admin'=>$pegawai_total_admin, 'pegawai'=>$pegawai, 'pointPenilaianPegawai'=>$pointPenilaianPegawai, 'timPenelitian'=>$timPenelitian, 'peranPenelitian'=>$peranPenelitian, 'penerimaNilai'=>$request->id]);
    }
}
