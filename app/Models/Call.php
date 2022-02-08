<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Call extends Model
{
    use HasFactory;
    protected $fillable = [        
        'caller',
        'notes',
        'name',
        'email',
        'mobile',
        'position',
        'closed',
        'callback',
        'mailback',
        'appointment',
        'task_id',  
    ];

    public function task()
    {
        return $this->belongsTo(Task::class);
    }
}
