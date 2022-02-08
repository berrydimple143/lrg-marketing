<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Partner extends Model
{
    use HasFactory;
    protected $fillable = [
        'company_name',
        'company_share',
        'company_agent_share',
        'company_affiliate_id',
        'date_contracted',
        'date_terminated',
    ];
}
