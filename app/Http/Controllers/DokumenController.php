<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Dokumen;

class DokumenController extends Controller
{
    public function index(){
        $dokumen = Dokumen::where('deleted_at', NULL)->get();

        return view('/admin/dokumen', ['dokumen'=>$dokumen]);
    }
}
