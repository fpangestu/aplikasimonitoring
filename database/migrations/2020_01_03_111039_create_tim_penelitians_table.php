<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTimPenelitiansTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tim_penelitians', function (Blueprint $table) {
            $table->increments('id_tim_penelitian');
            $table->string('nip', '18');
            $table->string('kode_penelitian');
            $table->integer('id_peran')->unsigned(); 
            $table->datetime('deleted_at')->nullable(); 
            $table->timestamps();
            
            $table->foreign('id_peran')->references('id_peran')->on('peran_penelitians');
            $table->foreign('nip')->references('nip')->on('pegawais');
            $table->foreign('kode_penelitian')->references('kode_penelitian')->on('penelitians');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tim_penelitians');
    }
}
