<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUndanganNarasumbersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('undangan_narasumbers', function (Blueprint $table) {
            $table->increments('id_undangan_narasumber');
            $table->integer('id_kegiatan_penelitian')->unsigned();
            $table->integer('id_narasumber')->unsigned();
            $table->datetime('deleted_at')->nullable();
            $table->timestamps();

            $table->foreign('id_narasumber')->references('id_narasumber')->on('narasumbers');
            $table->foreign('id_kegiatan_penelitian')->references('id_kegiatan_penelitian')->on('kegiatan_penelitians');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('undangan_narasumbers');
    }
}
