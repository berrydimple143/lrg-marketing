<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Task;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use Alert;

class TaskController extends Controller
{
    public function index()
    {          
        $tasks = Task::where('id', '!=', null)
               ->orderBy('created_at', 'desc')               
               ->paginate(10);       
        return HelperController::viewPage('admin.task', $tasks, 'task', '', HelperController::getAgents());
    }

    public function print(Request $request) {
        $aid = $request->aid;
        $fdate = $request->fdate;       
        $counter = Task::where('created_at', 'like', '%'.$fdate.'%')->count();
        $ltitle = "List of Agent Tasks";
        if($aid == "all") {
            $tasks = Task::where('created_at', 'like', '%'.$fdate.'%')->orderBy('created_at', 'desc')->get();                     
        } else {
            $user = User::where('id', $aid)->first();
            $ltitle = "List of " . $user->firstname . "'s tasks";
            $tasks = Task::where('aid', $aid)->where('created_at', 'like', '%'.$fdate.'%')->orderBy('created_at', 'desc')->get();
            $counter = Task::where('aid', $aid)->where('created_at', 'like', '%'.$fdate.'%')->count();
        }
        return view('admin.printtask', ['tasks' => $tasks, 'counter' => $counter, 'ltitle' => $ltitle]);
    }

    public function create() {             
        return HelperController::viewPage('admin.task_add', '', 'task', 'add', '');
    }
    public function search(Request $req) {        
        $txt = $req->search_text;
        $tasks = Task::where('name', 'like', '%'.$txt.'%')
                        ->orWhere('address', 'like', '%'.$txt.'%')
                        ->orWhere('phone', 'like', '%'.$txt.'%')
                        ->orWhere('website', 'like', '%'.$txt.'%')
                        ->orWhere('email', 'like', '%'.$txt.'%')
                        ->orderBy('created_at', 'desc')
                        ->paginate(10);        
        return HelperController::viewPage('admin.task', $tasks, 'task', '', HelperController::getAgents());
    }
    public function show($id) {        
        $tasks = Task::where('aid', $id)
               ->orderBy('created_at', 'desc')               
               ->paginate(10);        
        return HelperController::viewPage('admin.task', $tasks, 'task', '', HelperController::getAgents());   
    }
    public function store(Request $req) {
        $v = $req->validate([            
            'name' => 'required|string|unique:tasks,name|max:255',            
            'address' => 'required|string|unique:tasks,address',
            'email' => 'email|nullable',
            'phone' => 'nullable|unique:tasks,phone|max:255',
            'website' => 'required|string|unique:tasks,website|max:255',
        ]);        
        $usr = Task::create([
            'name' => $req->name,
            'address' => $req->address,
            'phone' => $req->phone,
            'website' => $req->website,
            'email' => $req->email,
            'directory' => $req->directory,
            'category' => $req->category,
            'town' => $req->town,
            'strategy' => $req->strategy,
            'aid' => Auth::user()->id                                           
        ]);       
        return redirect()->route('task')->withSuccess('Task created successfully!');
    }

    public function edit(Request $req, $id) {
        $ad = Task::where('id', $id)->first();
        $dt = Carbon::parse($ad->date_created);        
        return HelperController::viewPage('admin.task_edit', $ad, 'task', 'edit', $dt);
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
            'directory' => $request->directory,
            'category' => $request->category,
            'town' => $request->town,
            'link' => $request->link,
            'jstat' => $request->jstat,
            'date_created' => $request->date_created,
        ];
        $ad = Task::where('id', $id)->update($data);
        return redirect()->route('task')->withSuccess('Task updated successfully');
    }
    public function delete(Request $request, $id)
    {     
        $aid = Auth::user()->id;
        $info = Task::where('aid', $aid)->where('id', $id)->first();
        if($info != null) {
            $ad = Task::destroy($id); 
            return redirect()->route('task')->withWarning('Task deleted successfully');
        } else {
            return redirect()->route('task')->withWarning('You cannot delete this one!');
        }
    }
    public function change($tid, $val) {
        $aid = Auth::user()->id;
        $level = Auth::user()->level;
        $info = Task::where('aid', $aid)->where('id', $tid)->first();
        if($info != null or $level == "Admin" or $level == "Owner") {
            if($level != "Agent") {
                $info = Task::where('id', $tid)->first();
            }
            $data = ['response' => 'no'];            
            $msg = $info->name . " has not responded yet!";
            $ico = 'warning';
            if($val == "no") {
                $data = ['response' => 'yes'];
                $msg = $info->name . " has responded already!";
                $ico = 'success';
            }
            $ad = Task::where('id', $tid)->update($data);
            return redirect()->route('task')->with($ico, $msg);
        } else {
            return redirect()->route('task')->withWarning('You cannot change this one!');
        }   
    }
}
