<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateKegiatanPenelitiansTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('kegiatan_penelitians', function (Blueprint $table) {
            $table->increments('id_kegiatan_penelitian');
            $table->string('kode_penelitian');
            $table->integer('id_agenda_kegiatan')->unsigned();
            $table->string('kode_kegiatan_penelitian');
            $table->string('agenda'); 
            $table->integer('urutan'); 
            $table->string('tempat')->nullable();
            $table->datetime('tgl_mulai'); 
            $table->datetime('tgl_selesai'); 
            $table->boolean('status')->default(false); 
            $table->datetime('deleted_at')->nullable(); 
            $table->timestamps();
            
            $table->foreign('kode_penelitian')->references('kode_penelitian')->on('penelitians');
            $table->foreign('id_agenda_kegiatan')->references('id_agenda_kegiatan')->on('agenda_kegiatans');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('kegiatan_penelitians');
    }
}
