<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCallsTable extends Migration
{
    public function up()
    {
        Schema::create('calls', function (Blueprint $table) {
            $table->id();
            $table->string('caller')->nullable()->default('');
            $table->text('notes')->nullable()->default('');    
            $table->unsignedBigInteger('task_id');    
            $table->foreign('task_id')->references('id')->on('tasks')->constrained()->onUpdate('cascade')->onDelete('cascade');
            $table->timestamps();
        });
    }
    public function down()
    {
        Schema::dropIfExists('calls');
    }
}
