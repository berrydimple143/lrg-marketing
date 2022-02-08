<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAttendancesTable extends Migration
{
    public function up()
    {
        Schema::create('attendances', function (Blueprint $table) {
            $table->id();
            $table->string('status')->nullable()->default('present');
            $table->unsignedBigInteger('user_id');    
            $table->foreign('user_id')->references('id')->on('users')->constrained()->onUpdate('cascade')->onDelete('cascade');
            $table->timestamps();
        });
    }
    public function down()
    {
        Schema::dropIfExists('attendances');
    }
}
