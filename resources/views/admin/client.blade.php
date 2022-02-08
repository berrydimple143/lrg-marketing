@extends('layouts.back')
@section('title', 'Clients')
@section('content')	
		<div class="mws-panel grid_8">
			<div class="mws-panel-header">
		    	<span><i class="icon-table"></i> List of Clients
		            <div id="mws-searchbox" class="mws-inset pull-right" style="width: 300px;">		                
		                {!! Form::open(['route' => 'client.search', 'method' => 'POST']) !!}
		                    <input type="text" name="search_text" class="mws-search-input" placeholder="Search here ...">
		                    <button type="submit" class="mws-search-submit"><i class="icon-search"></i></button>		                
		                {!! Form::close() !!}
		            </div>            
		        </span>		    	
		    </div>
		    <div class="mws-panel-toolbar">
		        <div class="btn-toolbar">
		            <div class="btn-group">		
		            	<a href="{{ route('client.add') }}" class="btn"><i class="icol-add"></i> Add</a>                                  
		                <a href="#" class="btn"><i class="icol-printer"></i> Print</a>
		                <a href="{{ route('client') }}" class="btn"><i class="icol-arrow-refresh"></i> Refresh</a>                
		            </div>            
		        </div>
		    </div>    
		    <div class="mws-panel-body no-padding">
		        <table class="mws-table">
		            <thead>
		                <tr>	                		                    
		                    <th>Customer ID</th>
		                    @if(Auth::user()->level == "Owner")			                    
			                    <th>Subscription</th>		                    
			                    <th>Date of Registration</th>
			                    <th>Payment Status</th>
			                    <th>Amount</th>
			                @else
			                	<th>First Name</th>
			                	<th>Last Name</th>
			                	<th>Email</th>
			                	<th>Password</th>
			                	<th>Mobile</th>			                	
			                	<th>Town</th>
		                    @endif		             
		                    <th style="width: 100px;">Action</th>		                    
		                </tr>
		            </thead>
		            <tbody>	            	
		            	@forelse($model as $client)    
		                <tr>		                    
		                    <td>{{ $client->customer_id }}</td>
		                    @if(Auth::user()->level == "Owner")	
			                    <td>{{ $client->subscription }}</td>		                   
			                    <?php
			                    	$date = new Carbon\Carbon($client->created_at);
			                    	$dc = $date->toFormattedDateString();
			                    ?> 
			                    <td style="text-align: center;">{{ $dc }}</td>	                
			                    <td style="text-align: center;">
			                    	@if($client->payment_status == "paid")
			                    		<button type="button" class="btn btn-success btn-small"><i class="icon-check"></i> Paid</button>          		
			                    	@else 
			                    		<button type="button" class="btn btn-danger btn-small"><i class="icon-remove-sign"></i> Free</button>		                    		
			                    	@endif
			                    </td>
			                    <td style="text-align: center;">{{ App\Http\Controllers\HelperController::getAgentPay($client->aid) }}</td>
			                @else
			                	<td>{{ $client->firstname }}</td>
			                	<td>{{ $client->lastname }}</td>
			                	<td>{{ $client->email }}</td>
			                	<td>{{ $client->password }}</td>
			                	<td>{{ $client->mobile }}</td>
			                	<td>{{ $client->location }}</td>
		                    @endif
		                    <td style="text-align: center;">
		                    	<span class="btn-group">
			                    	<a href="{{ route('client.edit', ['id' => $client->id]) }}" title="Edit this client" class="btn btn-small"><i class="icon-pencil"></i></a>    	                            
		                            @if(Auth::user()->level == "Owner")
		                            	<a href="{{ route('client.delete', ['id' => $client->id]) }}" title="Delete this client" class="btn btn-small"><i class="icon-trash"></i></a>          	
		                            @endif               
			                    </span>
		                    </td>
		                </tr>
		                @empty
		                	<tr>
		                		@if(Auth::user()->level == "Owner")		                	
			                    	<td colspan="6">No clients yet ...</td>
			                    @else
			                    	<td colspan="8">No clients yet ...</td>
			                    @endif
			                </tr>
		                @endforelse				                              
		            </tbody>		              
		        </table>		        
		    </div>   
		    {{ $model->links() }}
		</div>	
@endsection