<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Task;
use App\Models\Call;
use Carbon\Carbon;

class CallController extends Controller
{
    public function index(Request $request, $id)
    {
        $calls = Task::find($id)->calls;
        $task = Task::find($id);
        return HelperController::viewPage('admin.calls', $calls, 'call', $task, $id);
    }
    public function create($id)
    {       
        $task = Task::find($id);
        return HelperController::viewPage('admin.call_add', $task, 'call', 'add', $id);
    }
    public function store(Request $req)
    {
        $v = $req->validate([
            'caller' => 'required',            
        ]);
        $cl = Call::create([
            'task_id' => $req->cid,
            'caller' => $req->caller,
            'notes' => $req->notes,
            'name' => $req->name,
            'email' => $req->email,
            'mobile' => $req->mobile,
            'position' => $req->position,
            'callback' => $req->callback,
            'mailback' => $req->mailback,
            'appointment' => $req->appointment,
            'closed' => $req->closed                   
        ]);        
        return redirect()->route('task')->withSuccess('Call task created successfully!');
    }
    public function callback() {
        $calls = Call::where('callback', 'yes')
               ->orderBy('created_at', 'desc')           
               ->paginate(10);
        return HelperController::viewPage('admin.callback', $calls, 'callback', '', '');
    }
    public function callback_delete($id) {

    }
    public function callback_add($id) {        
        $call = Call::where('id', $id)->first();
        $cl = Call::create([
            'task_id' => $call->task_id,
            'caller' => $call->caller,
            'notes' => $call->notes,
            'name' => $call->name,
            'email' => $call->email,
            'mobile' => $call->mobile,
            'position' => $call->position,
            'callback' => $call->callback,
            'mailback' => $call->mailback,
            'appointment' => $call->appointment,
            'closed' => $call->closed
        ]);
        return redirect()->route('call.back')->withSuccess('Call added successfully.');        
    }
    public function canCall($phone)
    {
        $msg = "Cannot call this business anymore with phone number: ". $phone;
        return redirect()->route('task')->withWarning($msg);
    }
    public function edit($id, $tid)
    {
        $call = Call::where('id', $id)->first();
        $dt = Carbon::parse($call->appointment);
        return HelperController::viewPage('admin.call_edit', $call, 'call', 'edit', $tid);
    }
    public function update(Request $req, $id)
    {
        $req->validate([
            'caller' => 'required',                     
        ]);        
        $data = [
            'caller' => $req->caller,
            'notes' => $req->notes,
            'name' => $req->name,
            'email' => $req->email,
            'mobile' => $req->mobile,
            'callback' => $req->callback,
            'mailback' => $req->mailback,
            'position' => $req->position,
            'appointment' => $req->appointment,
            'closed' => $req->closed
        ];
        $call = Call::where('id', $id)->update($data);
        return redirect()->route('phone.calls', ['id' => $req->cid])->withSuccess('Call task updated successfully');
    }
    public function delete($id, $tid)
    {
        $ct = Call::destroy($id); 
        return redirect()->route('phone.calls', ['id' => $tid])->withWarning('Call task deleted successfully');
    }
}
