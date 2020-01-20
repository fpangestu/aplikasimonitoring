<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Dokumen extends Model
{
    protected $table = "dokumens";

    public function dokumen_kegiatan(){
        return $this->belongsTo('App\Dokumen_Kegiatan');
    } 
}
