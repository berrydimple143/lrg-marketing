<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Payer;

class PayerController extends Controller
{
    public function index()
    {
        $payers = Payer::where('id', '!=', null)
               ->orderBy('created_at', 'desc')               
               ->paginate(10);        
        return HelperController::viewPage('admin.payer', $payers, 'payer', '', '');
    }
    public function create()
    {        
        return HelperController::viewPage('admin.payer_add', '', 'payer', 'add', HelperController::getAllCountries());
    }
    public function search(Request $req) {
        $txt = $req->search_text;
        $payers = Payer::where('company_name', 'like', '%'.$txt.'%')
                                ->orWhere('owner', 'like', '%'.$txt.'%')
                                ->orWhere('address', 'like', '%'.$txt.'%')
                                ->orWhere('postcode', 'like', '%'.$txt.'%')
                                ->orWhere('country', 'like', '%'.$txt.'%')
                                ->orWhere('tax_id', 'like', '%'.$txt.'%')
                                ->orWhere('created_at', 'like', '%'.$txt.'%')
                                ->paginate(10);        
        return HelperController::viewPage('admin.payer', $payers, 'payer', '', '');
    }
    public function store(Request $req) {
        $v = $req->validate([
            'company_name' => 'required|string|max:255',
            'owner' => 'required|string|max:255|unique:payers,owner',
            'address' => 'string|nullable|max:255',
            'postcode' => 'string|nullable|max:255',
            'country' => 'string|nullable|max:255',
            'tax_id' => 'string|nullable|max:255',            
        ]);        
        
        $usr = Payer::create([
            'company_name' => $req->company_name,
            'owner' => $req->owner,
            'address' => $req->address,
            'postcode' => $req->postcode,
            'country' => $req->country,
            'tax_id' => $req->tax_id                              
        ]);       
        return redirect()->route('payer')->withSuccess('Payer created successfully!');
    }
    public function edit($id)
    {
        //
    }
    public function update(Request $request, $id)
    {
        //
    }
    public function destroy($id)
    {
        //
    }
}
