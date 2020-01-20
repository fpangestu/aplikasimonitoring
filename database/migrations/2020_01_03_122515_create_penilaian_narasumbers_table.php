<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePenilaianNarasumbersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('penilaian_narasumbers', function (Blueprint $table) {
            $table->increments('id_penilaian');
            $table->string('pemberi_nilai');
            $table->string('penerima_nilai');
            $table->integer('id_kegiatan_penelitian')->unsigned();
            $table->integer('id_point_penilaian')->unsigned();
            $table->integer('point');
            $table->datetime('deleted_at')->nullable();
            $table->timestamps();

            $table->foreign('id_kegiatan_penelitian')->references('id_kegiatan_penelitian')->on('kegiatan_penelitians');
            $table->foreign('id_point_penilaian')->references('id_point_penilaian')->on('point_penilaian_narasumbers');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('penilaian_narasumbers');
    }
}
