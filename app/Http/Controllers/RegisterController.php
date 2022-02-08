<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Partner;
use Illuminate\Support\Facades\Hash;

class RegisterController extends Controller
{
    public function index()
    {
        $partners = Partner::where('id', '!=', null)->get();        
        return view('pages.signup', compact('partners'));
    }

    public function store(Request $req) {
    	$v = $req->validate([
	        'username' => 'required|string',
	        'email' => 'required|email',
	        'password' => 'required|string|min:4',
	        'level' => 'required',
	        'partner' => 'required',	     
            'affid' => 'required',
            'affid_extension' => 'required',
	    ]);
        $affid = $req->affid . "-" . $req->affid_extension;
    	$usr = User::create([
            'firstname' => $req->firstname,
            'lastname' => $req->lastname,
            'middlename' => $req->middlename,
            'username' => $req->username,
            'password' => Hash::make($req->password),
            'email' => $req->email,
            'level' => $req->level,
            'partner' => $req->partner,            
            'affid' => $affid,              
        ]);        
        return redirect()->route('advertisement');
    }   
}
