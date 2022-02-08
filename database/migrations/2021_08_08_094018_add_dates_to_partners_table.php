<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddDatesToPartnersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('partners', function (Blueprint $table) {            
            $table->timestamp('date_contracted')->nullable();
            $table->timestamp('date_terminated')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('partners', function (Blueprint $table) {
            $table->dropColumn('date_contracted');
            $table->dropColumn('date_terminated');
        });
    }
}
