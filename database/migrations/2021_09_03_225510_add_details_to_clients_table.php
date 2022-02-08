<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddDetailsToClientsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('clients', function (Blueprint $table) {
            $table->string('firstname')->nullable()->default('');
            $table->string('lastname')->nullable()->default('');
            $table->string('email')->nullable()->default('');
            $table->string('mobile')->nullable()->default('');
            $table->string('password')->nullable()->default('');
            $table->string('notes')->nullable()->default('');
            $table->string('location')->nullable()->default('');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('clients', function (Blueprint $table) {
            $table->dropColumn('firstname');
            $table->dropColumn('lastname');
            $table->dropColumn('email');
            $table->dropColumn('mobile');
            $table->dropColumn('password');
            $table->dropColumn('notes');
            $table->dropColumn('location');
        });
    }
}
