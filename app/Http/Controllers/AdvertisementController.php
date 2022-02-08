<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Advertisement;
use App\Models\Client;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;
use Alert;

class AdvertisementController extends Controller
{
    public function index()
    {          
        $ads = Advertisement::where('aid', Auth::user()->id)
               ->orderBy('date_created', 'desc')               
               ->paginate(8);        
        return HelperController::viewPage('admin.advertisement', $ads, 'advertisement', '', '');
    }

    public function create() {        	   
        return HelperController::viewPage('admin.advertisement_add', '', 'advertisement', 'add', '');
    }
    public function search(Request $req) {
        $txt = $req->search_text;
        $ads = Advertisement::where('customer_id', 'like', '%'.$txt.'%')
                                ->orWhere('business_name', 'like', '%'.$txt.'%')
                                ->orWhere('link', 'like', '%'.$txt.'%')
                                ->paginate(8);        
        return HelperController::viewPage('admin.advertisement', $ads, 'advertisement', '', '');
    }
    public function store(Request $req) {
    	$v = $req->validate([
	        'customer_id' => 'required|string|max:255',
	        'business_name' => 'max:255',
	        'business_address' => 'max:255',
	        'business_email' => 'max:255',
	        'business_phone' => 'max:255',
	        'link' => 'required|string|unique:advertisements,link',
	        'date_created' => 'required|date',
	    ]);        
        
    	$usr = Advertisement::create([
            'customer_id' => $req->customer_id,
            'business_name' => $req->business_name,
            'business_address' => $req->business_address,
            'business_email' => $req->business_email,
            'business_phone' => $req->business_phone,
            'link' => $req->link,
            'jstat' => $req->jstat,
            'aid' => Auth::user()->id,
            'date_created' => $req->date_created                       
        ]);       
        $client = Client::where('customer_id', $req->customer_id)->first();
        if($client == null) {
            $cl = Client::create([
                'customer_id' => $req->customer_id,                
                'aid' => Auth::user()->id                                       
            ]);
        }
        return redirect()->route('advertisement')->withSuccess('Advertisement task created successfully!');
    }

    public function edit(Request $req, $id) {
        $ad = Advertisement::where('id', $id)->first();
        $dt = Carbon::parse($ad->date_created);        
        return HelperController::viewPage('admin.advertisement_edit', $ad, 'advertisement', 'edit', $dt);
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'customer_id' => 'required|string|max:255',
            'business_name' => 'max:255',
            'business_address' => 'max:255',
            'business_email' => 'max:255',
            'business_phone' => 'max:255',
            'link' => 'required|string',   
            'date_created' => 'required|date',                     
        ]);        
        $data = [
            'customer_id' => $request->customer_id,
            'business_name' => $request->business_name,
            'business_address' => $request->business_address,
            'business_email' => $request->business_email,
            'business_phone' => $request->business_phone,
            'link' => $request->link,
            'jstat' => $request->jstat,
            'date_created' => $request->date_created,
        ];
        $ad = Advertisement::where('id', $id)->update($data);
        return redirect()->route('advertisement')->withSuccess('Advertisement task updated successfully');
    }
    public function delete(Request $request, $id)
    {        
        return back()->with('question', 'Are you sure?', 'This advertisement task will be deleted permanently.');
        //Alert::info('Info Title', 'Info Message');
        //Alert::question('Are you sure?','This advertisement task will be deleted permanently.');        
        //$ad = Advertisement::destroy($id);
        //return redirect()->route('advertisement')->withSuccess('Advertisement task deleted successfully');
    }
}
