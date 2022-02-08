@extends('layouts.back')
@section('title', 'Payers')
@section('content')	
		<div class="mws-panel grid_8">
			<div class="mws-panel-header">
		    	<span><i class="icon-table"></i> List of Payers
		            <div id="mws-searchbox" class="mws-inset pull-right" style="width: 300px;">		                
		                {!! Form::open(['route' => 'payer.search', 'method' => 'POST']) !!}
		                    <input type="text" name="search_text" class="mws-search-input" placeholder="Search here ...">
		                    <button type="submit" class="mws-search-submit"><i class="icon-search"></i></button>		                
		                {!! Form::close() !!}
		            </div>            
		        </span>		    	
		    </div>
		    <div class="mws-panel-toolbar">
		        <div class="btn-toolbar">
		            <div class="btn-group">		     
		            	<a href="{{ route('payer.add') }}" class="btn"><i class="icol-add"></i> Add</a>                              
		                <a href="#" class="btn"><i class="icol-printer"></i> Print</a>
		                <a href="{{ route('payer') }}" class="btn"><i class="icol-arrow-refresh"></i> Refresh</a>                
		            </div>            
		        </div>
		    </div>    
		    <div class="mws-panel-body no-padding">
		        <table class="mws-table">
		            <thead>
		                <tr>	                	
		                    <th>Company Name</th>
		                    <th>Owner</th>		                    
		                    <th>Address</th>
		                    <th>Postal Code</th>
		                    <th>Country</th>
		                    <th>Tax ID No.</th>
		                    <th>Date Created</th>		             
		                    <th style="width: 100px;">Action</th>		                    
		                </tr>
		            </thead>
		            <tbody>	            	
		            	@forelse($model as $payer)    
		                <tr>	                    
		                    <td>{{ $payer->company_name }}</td>
		                    <td>{{ $payer->owner }}</td>	
		                    <td>{{ $payer->address }}</td>	       
		                    <td>{{ $payer->postcode }}</td>	         
		                    <td>{{ $payer->country }}</td>	
		                    <td>{{ $payer->tax_id }}</td>      
		                    <?php
		                    	$date = new Carbon\Carbon($payer->created_at);
		                    	$dc = $date->toFormattedDateString();
		                    ?> 
		                    <td style="text-align: center;">{{ $dc }}</td>	                   
		                    <td style="text-align: center;">
		                        <span class="btn-group">		                            
		                            <a href="{{ route('payer.edit', ['id' => $payer->id]) }}" title="Edit this payer" class="btn btn-small"><i class="icon-pencil"></i></a>
		                            <a href="{{ route('payer.delete', ['id' => $payer->id]) }}" title="Delete this payer" class="btn btn-small"><i class="icon-trash"></i></a>		    
		                        </span>
		                    </td>
		                   
		                </tr>
		                @empty
		                	<tr><td colspan="8">No payers yet ...</td></tr>
		                @endforelse				                              
		            </tbody>		              
		        </table>		        
		    </div>   
		    {{ $model->links() }}
		</div>	
@endsection