<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Invoice;

class InvoiceController extends Controller
{    
    public function index()
    {
        $invoices = Invoice::where('id', '!=', null)
               ->orderBy('created_at', 'desc')               
               ->paginate(10);        
        return HelperController::viewPage('admin.invoice', $invoices, 'invoice', '', '');
    }
    public function create()
    {
        //
    }
    public function store(Request $request)
    {
        //
    }
    public function show($id)
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
