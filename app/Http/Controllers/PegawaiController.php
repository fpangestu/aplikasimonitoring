<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Pegawai;

class PegawaiController extends Controller
{
    public function index(){
        $pegawai = Pegawai::where('deleted_at', NULL)->get();

        return view('/admin/pegawai', ['pegawai'=>$pegawai]);
    }
}
