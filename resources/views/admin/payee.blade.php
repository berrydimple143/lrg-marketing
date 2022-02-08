@extends('layouts.back')
@section('title', 'Payees')
@section('content')	
		<div class="mws-panel grid_8">
			<div class="mws-panel-header">
		    	<span><i class="icon-table"></i> List of Payees
		            <div id="mws-searchbox" class="mws-inset pull-right" style="width: 300px;">		                
		                {!! Form::open(['route' => 'payee.search', 'method' => 'POST']) !!}
		                    <input type="text" name="search_text" class="mws-search-input" placeholder="Search here ...">
		                    <button type="submit" class="mws-search-submit"><i class="icon-search"></i></button>		                
		                {!! Form::close() !!}
		            </div>            
		        </span>		    	
		    </div>
		    <div class="mws-panel-toolbar">
		        <div class="btn-toolbar">
		            <div class="btn-group">		                                
		                <a href="#" class="btn"><i class="icol-printer"></i> Print</a>
		                <a href="{{ route('payee') }}" class="btn"><i class="icol-arrow-refresh"></i> Refresh</a>                
		            </div>            
		        </div>
		    </div>    
		    <div class="mws-panel-body no-padding">
		        <table class="mws-table">
		            <thead>
		                <tr>	                	
		                    <th>Name</th>
		                    <th>Company</th>		                    
		                    <th>Address</th>
		                    <th>Postal Code</th>
		                    <th>Country</th>
		                    <th>Date Created</th>		             
		                    <th style="width: 100px;">Action</th>		                    
		                </tr>
		            </thead>
		            <tbody>	            	
		            	@forelse($model as $payee)    
		                <tr>	                    
		                    <td>{{ $payee->name }}</td>
		                    <td>{{ $payee->company }}</td>	
		                    <td>{{ $payee->address }}</td>	       
		                    <td>{{ $payee->postcode }}</td>	         
		                    <td>{{ $payee->country }}</td>	      
		                    <?php
		                    	$date = new Carbon\Carbon($payee->created_at);
		                    	$dc = $date->toFormattedDateString();
		                    ?> 
		                    <td style="text-align: center;">{{ $dc }}</td>	                   
		                    <td style="text-align: center;">
		                        <span class="btn-group">		                            
		                            <a href="{{ route('payee.edit', ['id' => $payee->id]) }}" title="Edit this payee" class="btn btn-small"><i class="icon-pencil"></i></a>
		                            <a href="{{ route('payee.delete', ['id' => $payee->id]) }}" title="Delete this payee" class="btn btn-small"><i class="icon-trash"></i></a>		    
		                        </span>
		                    </td>
		                   
		                </tr>
		                @empty
		                	<tr><td colspan="7">No payees yet ...</td></tr>
		                @endforelse				                              
		            </tbody>		              
		        </table>		        
		    </div>   
		    {{ $model->links() }}
		</div>	
@endsection