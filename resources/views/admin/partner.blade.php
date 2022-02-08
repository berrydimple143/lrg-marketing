@extends('layouts.back')
@section('title', 'partners')
@section('content')
	<div class="container">
		<div class="mws-panel grid_8">
			<div class="mws-panel-header">
		    	<span><i class="icon-table"></i> List of Partners
		            <div id="mws-searchbox" class="mws-inset pull-right" style="width: 300px;">		                
		                {!! Form::open(['route' => 'partner.search', 'method' => 'POST']) !!}
		                    <input type="text" name="search_text" class="mws-search-input" placeholder="Search here ...">
		                    <button type="submit" class="mws-search-submit"><i class="icon-search"></i></button>		                
		                {!! Form::close() !!}
		            </div>            
		        </span>		    	
		    </div>
		    <div class="mws-panel-toolbar">
		        <div class="btn-toolbar">
		            <div class="btn-group">		                                
		            	<a href="{{ route('partner.add') }}" class="btn"><i class="icol-add"></i> Add</a>
		                <a href="#" class="btn"><i class="icol-printer"></i> Print</a>
		                <a href="{{ route('partner') }}" class="btn"><i class="icol-arrow-refresh"></i> Refresh</a>                
		            </div>            
		        </div>
		    </div>    
		    <div class="mws-panel-body no-padding">
		        <table class="mws-table">
		            <thead>
		                <tr>	                	                			                    
		                    <th>Company Name</th>
		                    <th>Company Affiliate ID</th>		                    
		                    <th>Company Share</th>
		                    <th>Agent Share</th>
		                    <th>Date Contracted</th>
		                    <th>Date Terminated</th>
		                    <th style="width: 100px;">Action</th>		                    
		                </tr>
		            </thead>
		            <tbody>
		            	@forelse($model as $partner)    
		                <tr>		                		                    
		                    <td>{{ $partner->company_name }}</td>
		                    <td>{{ $partner->company_affiliate_id }}</td>
		                    <td>{{ $partner->company_share }}</td>
		                    <td>{{ $partner->company_agent_share }}</td>		                   
		                    <?php
		                    	$date = $date2 = "Not set";
		                    	if($partner->date_contracted != null) {
			                    	$date = new Carbon\Carbon($partner->date_contracted);
			                    	$dc = $date->toFormattedDateString();
			                    }
		                    	if($partner->date_terminated != null) {
		                    		$date2 = new Carbon\Carbon($partner->date_terminated);
		                    		$dt = $date2->toFormattedDateString();	
		                    	}		                    	
		                    ?> 
		                    <td style="text-align: center;">{{ $dc }}</td>
		                    <td style="text-align: center;">{{ $dt }}</td>		                    	                    		                    
		                    <td style="text-align: center;">
		                        <span class="btn-group">		                            
		                            <a href="{{ route('partner.edit', ['id' => $partner->id]) }}" title="Edit this partner" class="btn btn-small"><i class="icon-pencil"></i></a>
		                            <a href="{{ route('partner.delete', ['id' => $partner->id]) }}" title="Delete this partner" class="btn btn-small"><i class="icon-trash"></i></a>		                            			                            
		                        </span>
		                    </td>		                    
		                </tr>
		                @empty
		                	<tr><td colspan="7">No partners yet ...</td></tr>
		                @endforelse				                              
		            </tbody>		              
		        </table>		        
		    </div>   
		    {{ $model->links() }}
		</div>
	</div>
@endsection