<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePenilaiansTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('penilaians', function (Blueprint $table) {
            $table->increments('id_penilaian');
            $table->string('pemberi_nilai');
            $table->string('penerima_nilai');
            $table->string('kode_penelitian');
            $table->integer('id_point_penilaian')->unsigned();
            $table->integer('point')->nullable();
            $table->text('catatan')->nullable();
            $table->datetime('deleted_at')->nullable();
            $table->timestamps();
            
            $table->foreign('id_point_penilaian')->references('id_point_penilaian')->on('point_penilaian_penelitis');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('penilaians');
    }
}
