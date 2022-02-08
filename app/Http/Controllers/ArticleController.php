<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Article;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;
use Alert;

class ArticleController extends Controller
{
    public function index()
    {
        $articles = Article::where('aid', Auth::user()->id)
               ->orderBy('date_created', 'desc')               
               ->paginate(8);        
        return HelperController::viewPage('admin.article', $articles, 'article', '', '');      
    }
    public function create() {     	
        return HelperController::viewPage('admin.article_add', '', 'article', 'add', '');
    }
    public function search(Request $req) {
        $txt = $req->search_text;
        $articles = Article::where('customer_id', 'like', '%'.$txt.'%')
                                ->orWhere('business_name', 'like', '%'.$txt.'%')
                                ->orWhere('link', 'like', '%'.$txt.'%')
                                ->paginate(8);        
        return HelperController::viewPage('admin.article', $articles, 'article', '', '');
    }
    public function store(Request $req) {
    	$v = $req->validate([
	        'customer_id' => 'required|string|max:255',
	        'business_name' => 'max:255',
	        'business_address' => 'max:255',
	        'business_email' => 'max:255',
	        'business_phone' => 'max:255',
	        'link' => 'required|string|unique:articles,link',
	        'date_created' => 'required|date',
	    ]);
    	$usr = Article::create([
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
        return redirect()->route('article')->withSuccess('Article task created successfully!');
    }

    public function edit(Request $req, $id) {
        $article = Article::where('id', $id)->first();
        $dt = Carbon::parse($article->date_created);        
        return HelperController::viewPage('admin.article_edit', $article, 'article', 'edit', $dt);
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
        $ad = Article::where('id', $id)->update($data);
        return redirect()->route('article')->withSuccess('Article task updated successfully');
    }
}
