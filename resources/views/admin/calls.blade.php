@extends('layouts.back')
@section('title', 'List of Phone Calls Page')
@section('content')	
		<div class="mws-panel grid_8">
			<div class="mws-panel-header">
		    	<span>Business: "{{ $page->name }}" -- Phone Number: "{{ $page->phone }}" -- Directory: "{{ $page->directory }}" -- Section: "{{ $page->category }}" -- Town: "{{ $page->town }}"        
		        </span>		    	
		    </div>
		    <div class="mws-panel-toolbar">
		        <div class="btn-toolbar">
		            <div class="btn-group">		            
		            	<a href="{{ route('phone.add', ['id' => $dt]) }}" class="btn"><i class="icol-add"></i> Add</a>                    		                
		                <a href="{{ route('phone.calls', ['id' => $dt]) }}" class="btn"><i class="icol-arrow-refresh"></i> Refresh</a>	          		                
		            </div>            
		        </div>
		    </div>    
		    <div class="mws-panel-body no-padding">
		        <table class="mws-table">
		            <thead>
		                <tr>	                	 
		                    <th style="text-align: center; width: 90px;">Caller Type</th>  
		                    <th>Name</th>  
		                    <th>Position</th> 
		                    <th>Email</th>  
		                    <th>Mobile</th>   
		                    <th>Notes</th>		                    
		                    <th>Date Dialed</th>	
		                    <th style="text-align: center; width: 90px;">Action</th>            
		                </tr>
		            </thead>
		            <tbody>	            	        		            	
		            	@forelse($model as $call)    
		                <tr>	                	                   
		                    <td style="text-align: center; width: 90px;">{{ $call->caller }}</td>
		                    <td>{{ $call->name }}</td>
		                    <td>{{ $call->position }}</td>
		                    <td>{{ $call->email }}</td>
		                    <td>{{ $call->mobile }}</td>
		                    <td>{{ $call->notes }}</td> 		                    
		                    <?php
		                    	$date = new Carbon\Carbon($call->created_at);
		                    	$ca = $date->toFormattedDateString();
		                    ?> 
		                    <td style="text-align: center;">{{ $ca }}</td>                      
		                    <td style="text-align: center; width: 90px;">                   	
		                    	<a href="{{ route('phone.edit', ['id' => $call->id, 'tid' => $dt]) }}" title="Edit this call task" class="btn btn-small"><i class="icon-pencil"></i></a>			                    
			                    @if(Auth::user()->level == "Owner")
                            		<a href="{{ route('phone.delete', ['id' => $call->id, 'tid' => $dt]) }}" title="Delete this call task" class="btn btn-small"><i class="icon-trash"></i></a>
                            	@endif                            	
                            </td>                                              
		                </tr>
		                @empty		                
			               <tr><td colspan="8">No calls yet ...</td></tr>                     	 
		                @endforelse				                              
		            </tbody>		              
		        </table>		        
		    </div>   
		    <!--  Links here -->
		</div>
@endsection