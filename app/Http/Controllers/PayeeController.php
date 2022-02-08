<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Payee;

class PayeeController extends Controller
{
    public function index()
    {
        $payees = Payee::where('id', '!=', null)
               ->orderBy('created_at', 'desc')               
               ->paginate(10);        
        return HelperController::viewPage('admin.payee', $payees, 'payee', '', '');
    }
    public function create()
    {
        return HelperController::viewPage('admin.payee_add', '', 'payee', 'add', '');
    }
    public function store(Request $request)
    {
        //
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
