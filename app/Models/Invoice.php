<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Item;
use App\Models\Payer;
use App\Models\Payee;

class Invoice extends Model
{
    use HasFactory;
    protected $fillable = [
        'number',
        'invoice_date', 
        'balance_due',
        'notes',
        'amount_paid',
        'amount_enclosed',
        'payer_id',
        'payee_id',
    ];    
}
