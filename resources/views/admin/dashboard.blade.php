@extends('layouts.back')
@section('title', 'LRG-ARN Administration Panel')
@section('content')
	<div class="container">
		<!-- Statistics Button Container -->
		<div class="mws-stat-container clearfix">
			
		    <!-- Statistic Item -->
			<a class="mws-stat" href="#">
		    	<!-- Statistic Icon (edit to change icon) -->
		    	<span class="mws-stat-icon icol32-building"></span>
		        
		        <!-- Statistic Content -->
		        <span class="mws-stat-content">
		        	<span class="mws-stat-title">Your total sales</span>
		            <span class="mws-stat-value {{ $sl_icon }}">{{ $sales }}</span>
		        </span>
		    </a>

			<a class="mws-stat" href="#">
		    	<!-- Statistic Icon (edit to change icon) -->
		    	<span class="mws-stat-icon icol32-sport"></span>
		        
		        <!-- Statistic Content -->
		        <span class="mws-stat-content">
		        	<span class="mws-stat-title">{{ ucfirst(Auth::user()->partner) }} total sales</span>
		            <span class="mws-stat-value {{ $tots_icon }}">{{ $total_sales }}</span>
		        </span>
		    </a>

			<a class="mws-stat" href="#">
		    	<!-- Statistic Icon (edit to change icon) -->
		    	<span class="mws-stat-icon icol32-walk"></span>
		        
		        <!-- Statistic Content -->
		        <span class="mws-stat-content">
		        	<span class="mws-stat-title">Advertisements Created</span>
		            <span class="mws-stat-value {{ $ad_icon }}">{{ $ad_counter }}</span>		            
		        </span>
		    </a>
		    
			<a class="mws-stat" href="#">
		    	<!-- Statistic Icon (edit to change icon) -->
		    	<span class="mws-stat-icon icol32-bug"></span>
		        
		        <!-- Statistic Content -->
		        <span class="mws-stat-content">
		        	<span class="mws-stat-title">Articles Created</span>
		            <span class="mws-stat-value {{ $ar_icon }}">{{ $article_counter }}</span>
		        </span>
		    </a>
		    
			<a class="mws-stat" href="#">
		    	<!-- Statistic Icon (edit to change icon) -->
		    	<span class="mws-stat-icon icol32-car"></span>

		        <!-- Statistic Content -->
		        <span class="mws-stat-content">
		        	<span class="mws-stat-title">Events Created</span>
		            <span class="mws-stat-value {{ $evt_icon }}">{{ $event_counter }}</span>
		        </span>
		    </a>
		</div>

		<!-- Panels Start -->
		<div class="mws-panel grid_8">
			<div class="mws-panel-header">
		    	<span><i class="icon-graph"></i> Customer statistics of {{ strtoupper(Auth::user()->partner) }}  per month</span>
		    </div>
		    <div class="mws-panel-body">
		        {!! $chart->renderHtml() !!} 
		    </div>
		</div>
	</div>
@endsection