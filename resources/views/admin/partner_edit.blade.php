@extends('layouts.back')
@section('title', 'Partner Editor')
@section('content')
	<div class="container">
		<div class="mws-panel grid_8">
		    <div class="mws-panel-header">
		        <span>Partner Creator</span>
		    </div>
		    <div class="mws-panel-body no-padding">        		         
		        {!! Form::model($model, ['route' => ['partner.update', $model->id], 'class' => 'mws-form']) !!}  
		        	{{ method_field('PUT') }}
		            @include('partials.admin.partner_form')
		        {!! Form::close() !!}
		    </div>      
		</div>
	</div>
@endsection