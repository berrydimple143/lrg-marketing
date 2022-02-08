@extends('layouts.back')
@section('title', 'List of Callbacks')
@section('content')	
		<div class="mws-panel grid_8">
			<div class="mws-panel-header">
		    	<span><i class="icon-table"></i> List of Callbacks</span>		    	
		    </div>
		    <div class="mws-panel-toolbar">
		        <div class="btn-toolbar">
		            <div class="btn-group">           	                   		                
		                <a href="{{ route('call.back') }}" class="btn"><i class="icol-arrow-refresh"></i> Refresh</a>	          		                
		            </div>            
		        </div>
		    </div>    
		    <div class="mws-panel-body no-padding">
		        <table class="mws-table">
		            <thead>
		                <tr>		                    
		                    <th>Business Name</th>
		                    <th>Business Address</th>  
		                    <th>Phone Number</th> 
		                    <th style="width: 90px;">Number of Calls</th>   
		                    <th>Date Dialed</th>               
		                    <th>Date of Appointment</th>	
		                    <th style="width: 90px;">Closed Call</th>  
		                    <th style="text-align: center; width: 90px;">Action</th>            
		                </tr>
		            </thead>
		            <tbody>	    
		            	<?php $dials = []; ?>        	        		            	
		            	@forelse($model as $call)   
			            	@if(!in_array($call->task_id, $dials))
			            		<?php 
			            			$dials[] = $call->task_id; 
			            			$cntr = App\Http\Controllers\HelperController::countCallbacks($call->task_id);
			            			$date = new Carbon\Carbon($call->appointment);   
			            			$apptmnt = $date;   	
			                    	$appd = $date->toFormattedDateString();
			                    	$date2 = new Carbon\Carbon($call->created_at);
			                    	$dd = $date2->toFormattedDateString();
			                    	$trstl = "";
			                    	if($apptmnt != null && $apptmnt->greaterThanOrEqualTo(Carbon\Carbon::now())) {
			                    		$trstl = 'style="background-color: lightgreen;"';
			                    	}
			            		?>
				                <tr {{ $trstl }}>	                    
				                    <td>{{ $call->task->name }}</td>
				                    <td>{{ $call->task->address }}</td>
				                    <td>{{ $call->task->phone }}</td>
				                    <td style="width: 90px; text-align: center;">             	
				                    	@if($cntr > 1)
					                    	<a href="{{ route('callback.add', ['id' => $call->id]) }}">        		
					                    		<button type="button" class="btn btn-warning btn-small">{{ $cntr }}</button>
					                    	</a>
				                    	@else
				                    		<a href="{{ route('callback.add', ['id' => $call->id]) }}">        		
					                    		<button type="button" class="btn btn-primary btn-small">{{ $cntr }}</button>
					                    	</a>
				                    	@endif
				                    </td>
				                    <td style="text-align: center;">{{ $dd }}</td> 
				                    <td style="text-align: center;">{{ $appd }}</td>  
				                    <td style="text-align: center; width: 90px;">
				                    	@if($call->closed == "yes")
					                    	<a style="cursor: pointer;">        		
					                    		<button type="button" class="btn btn-danger btn-small">{{ $call->closed }}</button>
					                    	</a>
				                    	@else
				                    		<a style="cursor: pointer;">        		
					                    		<button type="button" class="btn btn-success btn-small">{{ $call->closed }}</button>
					                    	</a>
				                    	@endif				                    	
				                    </td>             
				                    <td style="text-align: center; width: 90px;">   
					                    @if(Auth::user()->level == "Owner")
		                            		<a href="{{ route('call.back.delete', ['id' => $call->id]) }}" title="Delete this call task" class="btn btn-small"><i class="icon-trash"></i></a>
		                            	@endif                           	
		                            </td>                                              
				                </tr>
				            @endif
		                @empty		                
			               <tr><td colspan="8">No callbacks yet ...</td></tr>                 	 
		                @endforelse				                              
		            </tbody>		              
		        </table>		        
		    </div>   
		    {{ $model->links() }}
		</div>
@endsection