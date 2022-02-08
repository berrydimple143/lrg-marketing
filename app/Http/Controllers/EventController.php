<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Event;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;
use Alert;

class EventController extends Controller
{    
    public function index()
    {        
        $events = Event::where('aid', Auth::user()->id)
               ->orderBy('date_created', 'desc')               
               ->paginate(8);        
        return HelperController::viewPage('admin.event', $events, 'event', '', '');      
    }    
    public function create() {   	
        return HelperController::viewPage('admin.event_add', '', 'event', 'add', '');
    }
    public function search(Request $req) {
        $txt = $req->search_text;
        $events = Event::where('customer_id', 'like', '%'.$txt.'%')
                                ->orWhere('business_name', 'like', '%'.$txt.'%')
                                ->orWhere('link', 'like', '%'.$txt.'%')
                                ->paginate(8);        
        return HelperController::viewPage('admin.event', $events, 'event', '', '');
    }
    public function store(Request $req) {
    	$v = $req->validate([
	        'customer_id' => 'required|string|max:255',
	        'business_name' => 'max:255',
	        'business_address' => 'max:255',
	        'business_email' => 'max:255',
	        'business_phone' => 'max:255',	        
            'link' => 'required|string|unique:events,link',
	        'date_created' => 'required|date',
	    ]);
    	$usr = Event::create([
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
        return redirect()->route('event')->withSuccess('Event task created successfully!');
    }

    public function edit(Request $req, $id) {
        $event = Event::where('id', $id)->first();
        $dt = Carbon::parse($event->date_created);        
        return HelperController::viewPage('admin.event_edit', $event, 'event', 'edit', $dt);
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
            'date_created' => $request->date_created    
        ];
        $ad = Event::where('id', $id)->update($data);
        return redirect()->route('event')->withSuccess('Event task updated successfully');
    }    
}
