<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddCallbacksToCallsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('calls', function (Blueprint $table) {
            $table->string('callback')->nullable()->default('yes');
            $table->string('mailback')->nullable()->default('yes');
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
            $table->dropColumn('callback');
            $table->dropColumn('mailback');
        });
    }
}
