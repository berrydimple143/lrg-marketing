<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddDetailsToCallsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('calls', function (Blueprint $table) {
            $table->string('name')->nullable()->default('');
            $table->string('email')->nullable()->default('');
            $table->string('mobile')->nullable()->default('');
            $table->string('position')->nullable()->default('');
            $table->string('closed')->nullable()->default('no');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('calls', function (Blueprint $table) {
            $table->dropColumn('name');
            $table->dropColumn('email');
            $table->dropColumn('mobile');
            $table->dropColumn('position');            
            $table->dropColumn('closed');
        });
    }
}
