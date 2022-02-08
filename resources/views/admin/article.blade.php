@extends('layouts.back')
@section('title', 'Articles')
@section('content')	
	<div class="container">
		<div class="mws-panel grid_8">
			<div class="mws-panel-header">
		    	<span><i class="icon-table"></i> Articles Tasks
		            <div id="mws-searchbox" class="mws-inset pull-right" style="width: 300px;">
		                {!! Form::open(['route' => 'article.search', 'method' => 'POST']) !!}
		                    <input type="text" name="search_text" class="mws-search-input" placeholder="Search here ...">
		                    <button type="submit" class="mws-search-submit"><i class="icon-search"></i></button>		                
		                {!! Form::close() !!}
		            </div>            
		        </span>		    	
		    </div>
		    <div class="mws-panel-toolbar">
		        <div class="btn-toolbar">
		            <div class="btn-group">
		                <a href="{{ route('article.add') }}" class="btn"><i class="icol-add"></i> Add</a>                
		                <a href="#" class="btn"><i class="icol-printer"></i> Print</a>
		                <a href="{{ route('article') }}" class="btn"><i class="icol-arrow-refresh"></i> Refresh</a>                
		            </div>            
		        </div>
		    </div>    
		    <div class="mws-panel-body no-padding">
		        <table class="mws-table">
		            <thead>
		                <tr>		                	
		                    <th>Customer ID</th>
		                    <th>Business Name</th>
		                    <th>Advertisement Link</th>		                    
		                    <th>Date Created</th>
		                    <th>Payment Status</th>
		                    <th>Job Status</th>
		                    <th style="width: 100px;">Action</th>
		                </tr>
		            </thead>
		            <tbody>            
		            	@forelse($model as $art)    
		                <tr>		                	
		                    <td>{{ $art->customer_id }}</td>
		                    <td>{{ $art->business_name }}</td>
		                    <td>
		                    	<center><a href="{{ $art->link }}" target="_blank">		                    		
		                    		<button type="button" class="btn btn-primary btn-small"><i class="icon-search"></i> View Article</button>
		                    	</a></center>
		                    </td>		      
		                    <?php
		                    	$date = new Carbon\Carbon($art->date_created);
		                    	$dc = $date->toFormattedDateString();
		                    ?> 
		                    <td>{{ $dc }}</td>		                    
		                    <td>{{ $art->status }}</td>
		                    <td style="text-align: center;">
		                    	@if($art->jstat == "Completed")
		                    		<button type="button" class="btn btn-success btn-small"><i class="icon-ok-sign"></i> Completed</button>		                    		
		                    	@else 
		                    		<button type="button" class="btn btn-danger btn-small"><i class="icon-pause"></i> Pending</button>		                    		
		                    	@endif
		                    </td>
		                    <td style="text-align: center;">
		                        <span class="btn-group">		                            
		                            <a href="{{ route('article.edit', ['id' => $art->id]) }}" class="btn btn-small"><i class="icon-pencil"></i></a>
		                            @if(Auth::user()->level == "Owner")
		                            	<a href="#" class="btn btn-small"><i class="icon-trash"></i></a>
		                            @endif
		                        </span>
		                    </td>
		                </tr>
		                @empty
		                	<tr>		                	
			                    <td colspan="7">No articles yet ...</td>
			                </tr>
		                @endforelse		                
		            </tbody>
		        </table>
		    </div>    	
		    {{ $model->links() }}
		</div>
	</div>	
@endsection