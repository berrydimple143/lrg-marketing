<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Attendance;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;

class SigninController extends Controller
{
    public function index()
    {
        return view('pages.signin');
    }   
    public function signin(Request $req) {
    	$v = $req->validate([
	        'username' => 'required|string|max:255',
	        'password' => 'required|min:4',
	    ]);
	    $user = User::where('username', $req->username)->first();
	    if($user != null) {
            if(Hash::check($req->password, $user->password)) {
                Auth::login($user);
                $att = Attendance::create([
                    'user_id' => $user->id,
                    'status' => 'present'                   
                ]);
                $name = $user->firstname or 'Admin';                
                $msg = "Hello ".$name.", God bless you today!";                          
                return redirect()->route('dashboard')->withSuccess($msg); 
            } else {
                return redirect()->back()->with('warning', 'Invalid username/password');
            }
        } else {
            return redirect()->back()->with('warning', 'Username not found');
        }
    }
}
