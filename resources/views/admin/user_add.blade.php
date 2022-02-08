@extends('layouts.back')
@section('title', 'User Creator')
@section('content')
	<div class="container">
		<div class="mws-panel grid_8">
		    <div class="mws-panel-header">
		        <span>User Creator</span>
		    </div>
		    <div class="mws-panel-body no-padding">        
		        {!! Form::open(['route' => 'user.post', 'method' => 'POST', 'class' => 'mws-form']) !!}        
		            @include('partials.admin.user_form')
		        {!! Form::close() !!}
		    </div>      
		</div>
	</div>
@endsection