<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Narasumber;

class NarasumberController extends Controller
{
    public function index(){
        $narasumber = Narasumber::where('deleted_at', NULL)->get();

        return view('/admin/narasumber', ['narasumber'=>$narasumber]);
    }
    
}
