<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Partner;
use Carbon\Carbon;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function index()
    {
        $partners = User::where('id', '!=', null)
               ->orderBy('created_at', 'desc')            
               ->paginate(8);        
        return HelperController::viewPage('admin.user', $partners, 'user', '', '');
    }
    public function create()
    {
        $partners = Partner::where('id', '!=', null)->get();
        return HelperController::viewPage('admin.user_add', $partners, 'user', 'add', '');
    }
    public function store(Request $req)
    {
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
        return redirect()->route('user')->withSuccess('User created successfully!');
    }
    public function show($id)
    {
        
    }
    public function edit($id)
    {
        $user = User::where('id', $id)->first();
        return HelperController::viewPage('admin.user_edit', $user, 'user', 'edit', '');
    }
    public function update(Request $req, $id)
    {
        $req->validate([
            'username' => 'required|string',
            'email' => 'required|email',            
        ]);        
        $data = [
            'firstname' => $req->firstname,
            'lastname' => $req->lastname,
            'middlename' => $req->middlename,
            'username' => $req->username,            
            'email' => $req->email            
        ];
        $ad = User::where('id', $id)->update($data);
        return redirect()->route('user')->withSuccess('User updated successfully');
    }
    public function delete(Request $request, $id)
    {
        $ad = User::destroy($id); 
        return redirect()->route('user')->withWarning('User deleted successfully');
    }
}
