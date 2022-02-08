@extends('layouts.back')
@section('title', 'Task Creator')
@section('content')
	<div class="container">
		<div class="mws-panel grid_8">
		    <div class="mws-panel-header">
		        <span>Task Creator</span>
		    </div>
		    <div class="mws-panel-body no-padding">        
		        {!! Form::open(['route' => 'task.post', 'method' => 'POST', 'class' => 'mws-form']) !!}        
		            @include('partials.admin.task_form')
		        {!! Form::close() !!}
		    </div>      
		</div>
	</div>
@endsection