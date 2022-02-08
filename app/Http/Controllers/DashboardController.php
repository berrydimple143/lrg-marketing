<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Alert;
use App\Models\Client;
use LaravelDaily\LaravelCharts\Classes\LaravelChart;

class DashboardController extends Controller
{
    public function index()
    {          
        $ad_icon = $ar_icon = $evt_icon = $tots_icon = $sl_icon = 'down';
        $ad_counter = HelperController::countAds();
        $article_counter = HelperController::countArticles();
        $event_counter = HelperController::countEvents();
        $total_sales = HelperController::getTotalSales();
        $sales = HelperController::getSales();
        if($ad_counter > 0) { $ad_icon = 'up'; }       
        if($article_counter > 0) { $ar_icon = 'up'; }   
        if($event_counter > 0) { $evt_icon = 'up'; }
        if($total_sales > 0) { $tots_icon = 'up'; }
        if($sales > 0) { $sl_icon = 'up'; }        
        $options = [
            'chart_title' => 'Clients by payment status',
            'report_type' => 'group_by_string',
            'model' => 'App\Models\Client',
            'group_by_field' => 'payment_status',
            'chart_type' => 'bar',
            'filter_field' => 'created_at',
            'filter_period' => 'month', 
        ]; 
        $chart = new LaravelChart($options); 
        return view('admin.dashboard', [
            'chart' => $chart, 
            'ad_counter' => $ad_counter, 
            'article_counter' => $article_counter, 
            'event_counter' => $event_counter,
            'prtn_counter' => HelperController::countPartners(),
            'cl_counter' => HelperController::countClients(), 
            'usr_counter' => HelperController::countUsers(),
            'tsk_counter' => HelperController::countTasks(),
            'callback_counter' => HelperController::countAllCallbacks(),
            'total_sales' => $total_sales, 
            'sales' => $sales, 
            'ad_icon' => $ad_icon, 
            'ar_icon' => $ar_icon, 
            'evt_icon' => $evt_icon, 
            'tots_icon' => $tots_icon, 
            'sl_icon' => $sl_icon, 
            'mainpage' => 'dashboard'
        ]);
    }

	public function logout()
    {
        $name = Auth::user()->firstname or 'admin';
        $msg = "Good bye, ".$name."!";        
    	Auth::logout();
        return redirect()->route('signin')->withSuccess($msg);
    }       
}
