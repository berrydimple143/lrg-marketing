<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Item extends Model
{
    use HasFactory;
    protected $fillable = [
        'number',
        'description',
        'cost',
        'quantity',
        'sub_total',        
        'invoice_id',
    ];
}
