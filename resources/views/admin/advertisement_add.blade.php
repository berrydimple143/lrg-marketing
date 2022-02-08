@extends('layouts.back')
@section('title', 'Advertisement Task Creator')
@section('content')
	<div class="container">
		<div class="mws-panel grid_8">
		    <div class="mws-panel-header">
		        <span>Advertisement Task Creator</span>
		    </div>
		    <div class="mws-panel-body no-padding">        
		        {!! Form::open(['route' => 'advertisement.post', 'method' => 'POST', 'class' => 'mws-form']) !!}        
		            @include('partials.admin.advertisement_form')
		        {!! Form::close() !!}
		    </div>      
		</div>
	</div>
@endsection