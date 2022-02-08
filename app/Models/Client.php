<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Client extends Model
{
    use HasFactory;
    protected $fillable = [
        'aid',
        'customer_id',
        'subscription',
        'payment_status',
        'firstname',
        'lastname',
        'email',
        'mobile',   
        'password',
        'notes',
        'location',
    ];
}
