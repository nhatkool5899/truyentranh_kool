<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('truyen', function (Blueprint $table) {
            $table->id();
            $table->string('tentruyen');
            $table->string('slug_truyen');
            $table->text('tomtat');
            $table->string('hinhanh');
            $table->integer('danhmuc_id');
            $table->integer('hienthi');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('truyen');
    }
};
