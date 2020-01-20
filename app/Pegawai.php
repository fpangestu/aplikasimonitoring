<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class Pegawai extends Authenticatable
{
    use Notifiable;

    protected $table = "pegawais";

    protected $fillable = [
        'nip', 'nama', 'email', 'password', 'no_tlp','jabatan', 'nilai', 'img', 'deleted_at', 'created_at','update_at'
    ];

    protected $hidden = [
        'password',
    ];
}
