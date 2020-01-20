<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Dokumen_Kegiatan;
use App\Dokumen;
use App\Agenda_Kegiatan;

class DokumenKegiatanController extends Controller
{
    public function index(){
        $dokumen_kegiatan = Dokumen_Kegiatan::where('deleted_at', NULL)->get();
        $dokumen = Dokumen::where('deleted_at', NULL)->get();
        $increment = Dokumen::all()->where('deleted_ad', '')->count();
        $agenda_kegiatan = Agenda_Kegiatan::where('deleted_at', NULL)->get();
        
        return view('/admin/dokumen_kegiatan', ['dokumen_kegiatan'=>$dokumen_kegiatan, 'dokumen'=>$dokumen, 'agenda_kegiatan'=>$agenda_kegiatan, 'increment'=>$increment]);
    }
}
