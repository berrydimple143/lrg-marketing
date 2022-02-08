<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Task extends Model
{
    use HasFactory;
    protected $fillable = [
        'name',
        'address',
        'email',
        'phone',
        'mobile',
        'website', 
        'strategy',
        'response',
        'status',
        'partner',
        'directory',
        'category',
        'town',
        'aid',
        'transaction',        
    ];

    public function calls()
    {
        return $this->hasMany(Call::class);
    }
}
