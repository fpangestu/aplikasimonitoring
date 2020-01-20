<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDokumenKegiatansTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('dokumen_kegiatans', function (Blueprint $table) {
            $table->increments('id_dokumen_kegiatan');
            $table->integer('id_agenda_kegiatan')->unsigned();
            $table->integer('id_dokumen')->unsigned();
            $table->datetime('deleted_at')->nullable();
            $table->timestamps();

            $table->foreign('id_dokumen')->references('id_dokumen')->on('dokumens');
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
        Schema::dropIfExists('dokumen_kegiatans');
    }
}
