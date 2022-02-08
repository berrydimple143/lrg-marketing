@extends('layouts.back')
@section('title', 'Client Creator')
@section('content')
	<div class="container">
		<div class="mws-panel grid_8">
		    <div class="mws-panel-header">
		        <span>Client Creator</span>
		    </div>
		    <div class="mws-panel-body no-padding">        
		        {!! Form::open(['route' => 'client.post', 'method' => 'POST', 'class' => 'mws-form']) !!}        
		            @include('partials.admin.client_form')
		        {!! Form::close() !!}
		    </div>      
		</div>
	</div>
@endsection