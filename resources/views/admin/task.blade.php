@extends('layouts.back')
@section('title', 'Tasks Page')
@section('content')
	
		<div class="mws-panel grid_8">
			<div class="mws-panel-header">
		    	<span><i class="icon-table"></i> List of Tasks
		            <div id="mws-searchbox" class="mws-inset pull-right" style="width: 300px;">            
		                {!! Form::open(['route' => 'task.search', 'method' => 'POST']) !!}
		                    <input type="text" name="search_text" class="mws-search-input" placeholder="Search here ...">
		                    <button type="submit" class="mws-search-submit"><i class="icon-search"></i></button>		                
		                {!! Form::close() !!}
		            </div>            
		        </span>		    	
		    </div>
		    <div class="mws-panel-toolbar">
		        <div class="btn-toolbar">
		            <div class="btn-group">		            
		            	<a href="{{ route('task.add') }}" class="btn"><i class="icol-add"></i> Add</a>                    		                
		                <a href="{{ route('task') }}" class="btn"><i class="icol-arrow-refresh"></i> Refresh</a>
		                @if(Auth::user()->level != "Admin")
		                	<a href="{{ route('my.task', ['id' => Auth::user()->id]) }}" class="btn"><i class="icol-arrow-refresh"></i> My Tasks</a>   
		                @endif
		                @if(Auth::user()->level != "Agent")
		                	<a class="btn">Print By:</a>
		                	<a class="btn">
		                		<select id="agent" class="small">
		                			<option value="all">All agents</option>
		                			@forelse($dt as $ag)
		                				<option value="{{ $ag->id }}">{{ $ag->firstname .' '. $ag->lastname }}</option>
		                			@empty
					                	<option>No agents yet ...</option>
					                @endforelse
                                </select>
		                	</a>
		                	<a class="btn">
		                		{!! Form::date('date_finished', \Carbon\Carbon::now(), ['id' => 'date_finished']) !!}
		                	</a>
		                	<a style="cursor: pointer;" class="btn btnprn"><i class="icol-printer"></i> Print</a> 
		                @endif
		            </div>            
		        </div>
		    </div>    
		    <div class="mws-panel-body no-padding">
		        <table class="mws-table">
		            <thead>
		                <tr>		                	               	                   
		                    <th>Business Name</th>
		                    <th style="width: 100px;">Business Email</th>	                    
		                    <th>Business Address</th>
		                    <th>Business Phone</th>
		                    <th style="width: 100px;">Business Website</th>
		                    <th style="width: 100px;">Directory</th>
		                    <th style="width: 100px;">Category</th>
		                    <th>Task Created</th>	
		                    <th style="width: 80px;">Response</th>
		                    <th style="text-align: center; width: 150px;">Action</th>    
		                </tr>
		            </thead>
		            <tbody>            		            	
		            	@forelse($model as $task)    
		            	<?php
		            		$tkEmlMsg = $task->email;
		            		$tkAddrMsg = $task->address;
		            		$tkWebMsg = $task->website;
		            		$btnstl = $btnaddr = "btn-success";
		            		$btnweb = "btn-primary";		            		
		            		if($tkEmlMsg == null or $tkEmlMsg == "") {
		            			$tkEmlMsg = "No email";
		            			$btnstl = "btn-warning";
		            		}
		            		if($tkAddrMsg == null or $tkAddrMsg == "") {
		            			$tkAddrMsg = "No Address";
		            			$btnaddr = "btn-warning";
		            		}
		            		if($tkWebMsg == null or $tkWebMsg == "") {
		            			$tkWebMsg = "No Website";
		            			$btnweb = "btn-warning";
		            		}
		            	?>
		                <tr>	                    	                    
		                    <td>{{ $task->name }}</td>
		                    <td style="width: 100px; text-align: center;">	                  	
		                    	<button type="button" data-jbox-title="{{ $tkEmlMsg }}" class="btn {{ $btnstl }} btn-small btn-email"><i class="icon-envelope"></i></button>
		                    </td>
		                    <td style="text-align: center;">		                    	
		                    	<button type="button" data-jbox-title="{{ $tkAddrMsg }}" class="btn {{ $btnaddr }} btn-small btn-address"><i class="icon-amazon"></i></button>
		                    </td>
		                    <td>{{ $task->phone }}</td>
		                    <td style="text-align: center;">		                    	
		                    	<a href="{{ $task->website }}" target="_blank"><button type="button" data-jbox-title="{{ $tkWebMsg }}" class="btn {{ $btnweb }} btn-small btn-website"><i class="icon-globe"></i></button></a>
		                    </td>
		                    <td style="width: 100px;">{{ $task->directory }}</td>
		                    <td style="width: 100px;">{{ $task->category }}</td>
		                    <?php
		                    	$date = new Carbon\Carbon($task->created_at);
		                    	$ca = $date->toFormattedDateString();
		                    ?> 
		                    <td style="text-align: center;">{{ $ca }}</td>
		                    <td style="text-align: center;">
		                    	@if($task->response == "yes")
		                    		<a href="{{ route('change.response', ['tid' => $task->id, 'val' => 'yes']) }}"><button type="button" class="btn btn-success btn-small"><i class="icon-check"></i> Yes</button></a>		                    		
		                    	@else 
		                    		<a href="{{ route('change.response', ['tid' => $task->id, 'val' => 'no']) }}"><button type="button" class="btn btn-danger btn-small"><i class="icon-remove-sign"></i> No</button></a>
		                    	@endif
		                    </td>  
		                    <td style="text-align: center;">
		                    	@if(Auth::user()->level == "Owner" or Auth::user()->level == "Agent")
		                            <a href="{{ route('task.delete', ['id' => $task->id]) }}" title="Delete this task" class="btn btn-small"><i class="icon-trash"></i></a>      
		                            @if(App\Http\Controllers\HelperController::canCall($task->id) == "yes")
		                            	@if(App\Http\Controllers\HelperController::countCall($task->id) > 0)
		                            		<a href="{{ route('phone.calls', ['id' => $task->id]) }}" title="Manage Calls" class="btn btn-primary btn-small"><i class="icon-phone"></i></a>		                            	
		                            	@else
		                            		<a href="{{ route('phone.calls', ['id' => $task->id]) }}" title="Manage Calls" class="btn btn-success btn-small"><i class="icon-phone"></i></a>
		                            	@endif
		                            @else
		                            	<a href="{{ route('phone.can.call', ['phone' => $task->phone]) }}" title="Can't call this anymore" class="btn btn-danger btn-small"><i class="icon-phone"></i></a>
		                            @endif
		                        @endif
		                    </td>                                   		                   
		                </tr>
		                @empty
		                	<tr><td colspan="10">No tasks yet ...</td></tr>
		                @endforelse				                              
		            </tbody>		              
		        </table>		        
		    </div>   
		    {{ $model->links() }}
		</div>
	
	<script type="text/javascript">			
		$(document).ready(function() {		
			var agent = $('#agent').val() + "";	
			var date_finished = $('#date_finished').val() + "";		
			$('#agent').change(function(){
		        agent = $(this).val() + "";				
		    });
		    $('#date_finished').change(function() {
		        date_finished = $(this).val() + "";				
		    });
		    $('.btnprn').click(function() {
		        $(this).printPage({
				  url: "/printtask?aid=" + agent + "&fdate=" + date_finished,
				  attr: "href",
				  message:"Your document is being created"
				});
		    });		    
		    var hoverme = new jBox('Tooltip', {
				  attach: '.btn-email',
				  getTitle: 'data-jbox-title'
			});
			var hoveradd = new jBox('Tooltip', {
				  attach: '.btn-address',
				  getTitle: 'data-jbox-title'
			});
			var hoversite = new jBox('Tooltip', {
				  attach: '.btn-website',
				  getTitle: 'data-jbox-title'
			});
		});
	</script>
@endsection