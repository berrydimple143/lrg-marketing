@extends('layouts.back')
@section('title', 'Event Task Creator')
@section('content')
	<div class="container">
		<div class="mws-panel grid_8">
		    <div class="mws-panel-header">
		        <span>Event Task Creator</span>
		    </div>
		    <div class="mws-panel-body no-padding">        
		        {!! Form::open(['route' => 'event.post', 'method' => 'POST', 'class' => 'mws-form']) !!}        
		            @include('partials.admin.event_form')
		        {!! Form::close() !!}
		    </div>      
		</div>
	</div>
@endsection