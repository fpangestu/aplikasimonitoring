<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Agenda_Kegiatan;

class AgendaKegiatanController extends Controller
{
    public function index(){
        $agenda_kegiatan = Agenda_Kegiatan::where('deleted_at', NULL)->get();

        return view('/admin/agenda_kegiatan', ['agenda_kegiatan'=>$agenda_kegiatan]);
    }
}
