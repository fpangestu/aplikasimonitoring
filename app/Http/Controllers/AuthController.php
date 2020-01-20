<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Pegawai;
 
class AuthController extends Controller
{

    public function username()
    {
        return 'nama';
    }

    protected function guard()
    {
        return Auth::guard('pegawai');
    }

    public function getLogin(){
        return view('login');
    }

    public function postLogin(Request $request){

        if (Auth::guard('pegawais')->attempt(['email' => $request->email, 'password'=>$request->password])) {
            // Authentication passed...
            $request->session()->put('nama',Auth::guard('pegawais')->user()->nama);
            return redirect()->route('home');
        }

        return ('Error');
        // if(!\Auth::guard('pegawais')->attempt(['email' => $request->email, 'password'=>$request->password])){
        //     return redirect()->back();
        // }

        // return dd(Auth::guard('pegawais')->user());
        // return view('home', ['pekerja_nama']);
        // return redirect()->route('home');
        // dd(\Auth::guard('pegawai')->attempt(['email' => $request->email, 'password'=>$request->password]));
    }

    public function getRegister(){
        return view('register');
    }

    public function postRegister(Request $request){

        $this->validate($request, [
            'nip' => 'required|min:18|unique',
            'nama' => 'required|min:5',
            'email' => 'required|email',
            'password' => 'required|min:6|confirmed',
            'no_tlp' => 'required|min:8',
            'jabatan' => 'required'
        ]);

        Pegawai::create([
            'nip' => $request->nip,
            'nama' => $request->nama,
            'email' => $request->email,
            'password' => bcrypt($request->password),
            'no_tlp' => $request->no_tlp,
            'jabatan' => $request->jabatan
        ]);

        return redirect()->back();
    }

    public function logout(){
        \Auth::logout();

        return redirect()->route('login');
    }
}
