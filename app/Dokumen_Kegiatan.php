<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Dokumen_Kegiatan extends Model
{
    protected $table = "dokumen_kegiatans";

    public function dokumen(){
        return $this->hasMany('App\Dokumen');
    } 
}
