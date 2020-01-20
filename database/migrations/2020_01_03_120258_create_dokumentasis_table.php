<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDokumentasisTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('dokumentasis', function (Blueprint $table) {
            $table->increments('id_dokumentasi');
            $table->integer('id_kegiatan_penelitian')->unsigned();
            $table->integer('id_dokumen_kegiatan')->unsigned();
            $table->string('kebutuhan');
            $table->string('tanggung_jawab');
            $table->string('etc');
            $table->string('user');
            $table->datetime('deleted_at')->nullable();
            $table->timestamps();

            $table->foreign('id_kegiatan_penelitian')->references('id_kegiatan_penelitian')->on('kegiatan_penelitians');
            $table->foreign('id_dokumen_kegiatan')->references('id_dokumen_kegiatan')->on('dokumen_kegiatans');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('dokumentasis');
    }
}
