<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UserIsAllowed
{
    public function handle(Request $request, Closure $next)
    {
        if (Auth::user()->level != 'Owner') {         
            return back()->withWarning('You are not allowed to enter in this page.');
        }
        return $next($request);
    }
}
