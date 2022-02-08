<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTasksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tasks', function (Blueprint $table) {
            $table->id();
            $table->string('name')->nullable()->default('');
            $table->string('address')->nullable()->default('');
            $table->string('email')->nullable()->default('');
            $table->string('phone')->nullable()->default('');
            $table->string('mobile')->nullable()->default('');
            $table->string('website')->nullable()->default('');
            $table->string('strategy')->nullable()->default('');            
            $table->string('response')->nullable()->default('no');
            $table->string('status')->nullable()->default('');
            $table->string('partner')->nullable()->default('');
            $table->string('aid')->nullable()->default('');
            $table->integer('transaction')->default(1);
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
        Schema::dropIfExists('tasks');
    }
}
