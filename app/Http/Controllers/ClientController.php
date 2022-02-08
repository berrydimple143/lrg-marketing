<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Client;
use App\Models\User;
use Illuminate\Support\Facades\Auth;

class ClientController extends Controller
{
    public function index()
    {
        $clients = Client::where('id', '!=', null)
               ->orderBy('created_at', 'desc')               
               ->paginate(10);        
        return HelperController::viewPage('admin.client', $clients, 'client', '', '');
    }
    public function sort($field, $pos) {
        $clients = Client::where('aid', Auth::user()->id)
               ->orderBy($field, $pos)   
               ->paginate(10);        
        return HelperController::viewPage('admin.client', $clients, 'client', '', '');
    }
    public function create()
    {
        return HelperController::viewPage('admin.client_add', '', 'client', 'add', '');
    }
    public function store(Request $req)
    {
        $v = $req->validate([            
            'aid' => 'required|max:255',     
            'customer_id' => 'required|max:255',
            'email' => 'required|email',
            'password' => 'required|max:255',      
        ]);        
        $cl = Client::create([
            'aid' => $req->aid,
            'customer_id' => $req->customer_id,
            'firstname' => $req->firstname,
            'lastname' => $req->lastname,
            'email' => $req->email,
            'mobile' => $req->mobile,
            'password' => $req->password,
            'location' => $req->location,
            'notes' => $req->notes                                                   
        ]);       
        return redirect()->route('client')->withSuccess('Client added successfully!');
    }
    public function edit($id)
    {
        $cl = Client::where('id', $id)->first();          
        return HelperController::viewPage('admin.client_edit', $cl, 'client', 'edit', '');
    }
    public function update(Request $req, $id)
    {
        $req->validate([
            'aid' => 'required|max:255',     
            'customer_id' => 'required|max:255',
            'email' => 'required|email',
            'password' => 'required|max:255',                   
        ]);        
        $data = [
            'aid' => $req->aid,
            'customer_id' => $req->customer_id,
            'firstname' => $req->firstname,
            'lastname' => $req->lastname,
            'email' => $req->email,
            'mobile' => $req->mobile,
            'password' => $req->password,
            'location' => $req->location,
            'notes' => $req->notes
        ];
        $cl = Client::where('id', $id)->update($data);
        return redirect()->route('client')->withSuccess('Client updated successfully');
    }
    public function delete($id)
    {        
        $cl = Client::destroy($id); 
        return redirect()->route('client')->withWarning('Client deleted successfully');        
    }
}
