@extends('layouts.back')
@section('title', 'Call Task Creator')
@section('content')
	<div class="container">
		<div class="mws-panel grid_8">
		    <div class="mws-panel-header">
		        <span>Call Task Creator for "{{ $model->name }}" ( {{ $model->phone }} )</span>	            
		    </div>
		    <div class="mws-panel-body no-padding">        
		        {!! Form::open(['route' => 'phone.post', 'method' => 'POST', 'class' => 'mws-form']) !!}        
		            @include('partials.admin.call_form')
		        {!! Form::close() !!}
		    </div>      
		</div>
	</div>
@endsection