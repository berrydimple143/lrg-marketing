<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateItemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('items', function (Blueprint $table) {
            $table->id();
            $table->string('number')->nullable()->default('');
            $table->string('description')->nullable()->default('');
            $table->decimal('cost', 8, 2)->nullable()->default(0.00);
            $table->integer('quantity')->nullable()->default(0);
            $table->decimal('sub_total', 8, 2)->nullable()->default(0.00);
            $table->bigInteger('invoice_id')->nullable();
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
        Schema::dropIfExists('items');
    }
}
