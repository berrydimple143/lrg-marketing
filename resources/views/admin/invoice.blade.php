@extends('layouts.back')
@section('title', 'Invoices')
@section('content')	
		<div class="mws-panel grid_8">
			<div class="mws-panel-header">
		    	<span><i class="icon-table"></i> List of Invoices
		            <div id="mws-searchbox" class="mws-inset pull-right" style="width: 300px;">		                
		                {!! Form::open(['route' => 'invoice.search', 'method' => 'POST']) !!}
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
		                <a href="{{ route('invoice') }}" class="btn"><i class="icol-arrow-refresh"></i> Refresh</a>                
		            </div>            
		        </div>
		    </div>    
		    <div class="mws-panel-body no-padding">
		        <table class="mws-table">
		            <thead>
		                <tr>	                	
		                    <th>Number</th>
		                    <th>Payer</th>		                    
		                    <th>Payee</th>
		                    <th>Balance Due</th>
		                    <th>Amount Paid</th>
		                    <th>Date of Invoice</th>		             
		                    <th style="width: 100px;">Action</th>		                    
		                </tr>
		            </thead>
		            <tbody>	            	
		            	@forelse($model as $invoice)    
		                <tr>	                    
		                    <td>{{ $invoice->number }}</td>
		                    <td>{{ App\Http\Controllers\HelperController::getPayerName($invoice->id) }}</td>
		                    <td>{{ $invoice->company }}</td>	
		                    <td>{{ $invoice->address }}</td>	       
		                    <td>{{ $invoice->postcode }}</td>	         
		                    <td>{{ $invoice->country }}</td>	      
		                    <?php
		                    	$date = new Carbon\Carbon($invoice->created_at);
		                    	$dc = $date->toFormattedDateString();
		                    ?> 
		                    <td style="text-align: center;">{{ $dc }}</td>	                   
		                    <td style="text-align: center;">
		                        <span class="btn-group">		                            
		                            <a href="{{ route('invoice.edit', ['id' => $invoice->id]) }}" title="Edit this invoice" class="btn btn-small"><i class="icon-pencil"></i></a>
		                            <a href="{{ route('invoice.delete', ['id' => $invoice->id]) }}" title="Delete this invoice" class="btn btn-small"><i class="icon-trash"></i></a>		    
		                        </span>
		                    </td>
		                   
		                </tr>
		                @empty
		                	<tr><td colspan="7">No Invoices yet ...</td></tr>
		                @endforelse				                              
		            </tbody>		              
		        </table>		        
		    </div>   
		    {{ $model->links() }}
		</div>	
@endsection