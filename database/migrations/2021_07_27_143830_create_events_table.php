<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEventsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('events', function (Blueprint $table) {
            $table->id();
            $table->string('customer_id');
            $table->string('business_name')->nullable()->default('');
            $table->string('business_address')->nullable()->default('');
            $table->string('business_email')->nullable()->default('');
            $table->string('business_phone')->nullable()->default('');            
            $table->string('link')->nullable()->default('');
            $table->string('subscription')->nullable()->default('');
            $table->string('status')->nullable()->default('');
            $table->timestamp('date_created')->nullable();
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
        Schema::dropIfExists('events');
    }
}
