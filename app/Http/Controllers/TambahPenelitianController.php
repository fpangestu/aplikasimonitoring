<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Pegawai;
use App\Peran_Peneliti;
use App\Agenda_Kegiatan;
use Carbon\Carbon;


class TambahPenelitianController extends Controller
{
    public function index(Request $request){
        $pegawai = Pegawai::where('nama', '<>', 'ADMINISTRATOR')
                        ->where(function ($query) {
                            $query->whereNull('deleted_at');
                        })->get();
        $peran = Peran_Peneliti::where('deleted_at', NULL)->get();
        $agenda_kegiatan = Agenda_Kegiatan::where('deleted_at', NULL)->get();
        $pegawai_total_admin = Pegawai::whereNull('deleted_at')->get();

        foreach($pegawai_total_admin as $p){
            if($p->nama == $request->session()->get('nama')){
                $value = $p->nip;
            }
        }  

        return view('/admin/tambah_penelitian', ['value'=>$value, 'pegawai_total_admin'=>$pegawai_total_admin, 'pegawai'=>$pegawai, 'peran'=>$peran, 'agenda_kegiatan'=>$agenda_kegiatan]);
    }

    public function store(Request $request){
        $startDate = date_create_from_format('m/d/Y', substr ($request->reservation, 0,10));
        $endDate = date_create_from_format('m/d/Y', substr ($request->reservation, -10));
        
        //Insert Data ke Table Penelitian
        DB::table('penelitians')->insert([
            'kode_penelitian' => $request->kodePenelitian,
            'judul_penelitian' => $request->namaPenelitian,
            'tgl_mulai' => $startDate,
            'tgl_selesai' => $endDate
        ]);

        //Insert Data ke Table Tim Peneliti
        for ($i = 0; $i < count($request->namaTim); $i++) {
            DB::table('tim_penelitians')->insert([
                'nip' => $request->namaTim[$i],
                'kode_penelitian' => $request->kodePenelitian,
                'id_peran' => $request->peranPegawai[$i]
            ]);
        }

        //Insert Data ke Table Kegiatan Penelitian
        $urutan=0;
        for ($i = 0; $i < count($request->namaAgenda); $i++) {
            $startDate = date_create_from_format('m/d/Y', substr ($request->reservation2[$i], 0,10));
            $endDate = date_create_from_format('m/d/Y', substr ($request->reservation2[$i], -10));

            DB::table('kegiatan_penelitians')->insert([
                'kode_penelitian' => $request->kodePenelitian,
                'id_agenda_kegiatan' => $request->tipeKegiatan[$i],
                'kode_kegiatan_penelitian'=>$request->kodeKegiatan[$i],
                'agenda'=> $request->namaAgenda[$i],
                'urutan'=>$urutan++,
                'tgl_mulai' => $startDate,
                'tgl_selesai' => $endDate
            ]);
        }
        
        // alihkan halaman ke halaman pegawai
        return redirect('/admin/home');

    }

}
