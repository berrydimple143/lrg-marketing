<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Partner;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;

class PartnerController extends Controller
{    
    public function index()
    {
        $partners = Partner::where('id', '!=', null)
               ->orderBy('created_at', 'desc')            
               ->paginate(8);        
        return HelperController::viewPage('admin.partner', $partners, 'partner', '', '');
    }
    public function create()
    {
        return HelperController::viewPage('admin.partner_add', '', 'partner', 'add', '');
    }
    public function store(Request $req)
    {
        $v = $req->validate([
            'company_name' => 'required|string|max:255',            
            'date_contracted' => 'date|nullable',
            'date_terminated' => 'date|nullable',
        ]);        
        
        $usr = Partner::create([
            'company_name' => $req->company_name,
            'company_share' => $req->company_share,
            'company_agent_share' => $req->company_agent_share,
            'company_affiliate_id' => $req->company_affiliate_id,
            'date_contracted' => $req->date_contracted,
            'date_terminated' => $req->date_terminated                   
        ]);        
        return redirect()->route('partner')->withSuccess('Partner created successfully!');
    }
    public function edit($id)
    {
        $ptrn = Partner::where('id', $id)->first();
        $dt = Carbon::parse($ptrn->date_contracted);
        $dt2 = Carbon::parse($ptrn->date_terminated);       
        $params = ['dt' => $dt, 'dt2' => $dt2]; 
        return HelperController::viewPage('admin.partner_edit', $ptrn, 'partner', 'edit', $params);
    }
    public function update(Request $req, $id)
    {
        $req->validate([
            'company_name' => 'required|string|max:255',            
            'date_contracted' => 'date|nullable',
            'date_terminated' => 'date|nullable',                  
        ]);        
        $data = [
            'company_name' => $req->company_name,
            'company_share' => $req->company_share,
            'company_agent_share' => $req->company_agent_share,
            'company_affiliate_id' => $req->company_affiliate_id,
            'date_contracted' => $req->date_contracted,
            'date_terminated' => $req->date_terminated
        ];
        $ad = Partner::where('id', $id)->update($data);
        return redirect()->route('partner')->withSuccess('Partner updated successfully');
    }
    public function delete(Request $request, $id)
    {
        $ad = Partner::destroy($id); 
        return redirect()->route('partner')->withWarning('Partner deleted successfully');
    }
}
