<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    use HasFactory;
    protected $fillable = [
        'business_name',
        'business_address',
        'business_email',
        'business_phone',
        'customer_id',
        'link',
        'subscription',
        'date_created',
        'status',
        'jstat',
        'aid',
    ];
}
