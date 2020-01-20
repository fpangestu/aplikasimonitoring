<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tim_Penelitian extends Model
{
    protected $table = "tim_penelitians";

    public function pegawai(){
    	return $this->belongsToMany('App\Pegawai');
    }
}
