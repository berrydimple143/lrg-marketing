@extends('layouts.back')
@section('title', 'Payer Creator')
@section('content')
	<div class="container">
		<div class="mws-panel grid_8">
		    <div class="mws-panel-header">
		        <span>Payer Creator</span>
		    </div>
		    <div class="mws-panel-body no-padding">        
		        {!! Form::open(['route' => 'payer.post', 'method' => 'POST', 'class' => 'mws-form']) !!}        
		            @include('partials.admin.payer_form')
		        {!! Form::close() !!}
		    </div>      
		</div>
	</div>
@endsection