<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateInvoicesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('invoices', function (Blueprint $table) {
            $table->id();
            $table->string('number')->nullable()->default('');
            $table->string('notes')->nullable()->default('');
            $table->timestamp('invoice_date')->nullable();
            $table->bigInteger('payer_id')->nullable();
            $table->bigInteger('payee_id')->nullable();
            $table->decimal('balance_due', 8, 2)->nullable()->default(0.00);
            $table->decimal('amount_paid', 8, 2)->nullable()->default(0.00);
            $table->decimal('amount_enclosed', 8, 2)->nullable()->default(0.00);            
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
        Schema::dropIfExists('invoices');
    }
}
