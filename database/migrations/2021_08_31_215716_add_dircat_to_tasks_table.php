<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddDircatToTasksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('tasks', function (Blueprint $table) {
            $table->string('directory')->nullable()->default('');
            $table->string('category')->nullable()->default('');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('tasks', function (Blueprint $table) {
            $table->dropColumn('directory');
            $table->dropColumn('category');
        });
    }
}
