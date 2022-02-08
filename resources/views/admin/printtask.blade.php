@extends('layouts.print')
@section('content')
<center>
    <h2>{{ $ltitle }}</h2>
    <font size="5"><strong style="background-color:red;">Total tasks: {{ $counter }}</strong></font>
    <font size="2" face="Courier New" >
    	<table border='1' style='border-collapse:collapse; table-layout: fixed; width: 1280px'>
        	<tr>
                <th style="width: 30px; text-align: center; color: green;">No.</th>
        		<th style="width: 200px; color: green;">Agent Name</th>	   	                   
                <th style="width: 200px; color: green;">Business Name</th>
                <th style="width: 200px; color: green;">Business Email</th>	                    
                <th style="width: 200px; color: green;">Business Address</th>
                <th style="width: 140px; text-align: center; color: green;">Business Phone</th>
                <th style="width: 200px; text-align: center; color: green;">Business Website</th>
                <th style="width: 130px; text-align: center; color: green;">Task Created</th>
                <th style="width: 80px; text-align: center; color: green;">Responded</th>
        	</tr>
            <?php $i=1; ?>
        	@forelse($tasks as $task)
        	<tr>
                <td style="text-align: center; width: 30px; word-wrap: break-word;">{{ $i++ }}</td>
        		<td style="width: 200px; word-wrap: break-word;">{{ App\Http\Controllers\HelperController::getAgentName($task->aid) }}</td>	
                <td style="width: 200px; word-wrap: break-word;">{{ $task->name }}</td>
                <td style="width: 200px; word-wrap: break-word;">{{ $task->email }}</td>        
                <td style="width: 200px; word-wrap: break-word;">{{ $task->address }}</td>
                <td style="text-align: center; width: 140px; word-wrap: break-word;">{{ $task->phone }}</td>
                <td style="width: 200px; word-wrap: break-word;">{{ $task->website }}</td> 
                <?php
                    $date = new Carbon\Carbon($task->created_at);
                    $ca = $date->toFormattedDateString();
                ?> 
                <td style="width: 130px; word-wrap: break-word; text-align: center;">{{ $ca }}</td>   
                <td style="width: 80px; word-wrap: break-word; text-align: center;">
                    @if($task->response == "yes")
                        <button type="button" style="border-color: green; color: green">{{ $task->response }}</button>
                    @else 
                        <button type="button" style="border-color: red; color: red">{{ $task->response }}</button>
                    @endif
                </td>    
        	</tr>
        	@empty
            	<tr><td colspan="9">No tasks yet ...</td></tr>
            @endforelse
        </table>
    </font>
</center>
@endsection