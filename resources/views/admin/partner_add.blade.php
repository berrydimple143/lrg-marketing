@extends('layouts.back')
@section('title', 'Partner Creator')
@section('content')
	<div class="container">
		<div class="mws-panel grid_8">
		    <div class="mws-panel-header">
		        <span>Partner Creator</span>
		    </div>
		    <div class="mws-panel-body no-padding">        
		        {!! Form::open(['route' => 'partner.post', 'method' => 'POST', 'class' => 'mws-form']) !!}        
		            @include('partials.admin.partner_form')
		        {!! Form::close() !!}
		    </div>      
		</div>
	</div>
@endsection