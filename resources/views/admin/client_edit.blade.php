@extends('layouts.back')
@section('title', 'Client Editor')
@section('content')
	<div class="container">
		<div class="mws-panel grid_8">
		    <div class="mws-panel-header">
		        <span>Client Editor</span>
		    </div>
		    <div class="mws-panel-body no-padding">        		         
		        {!! Form::model($model, ['route' => ['client.update', $model->id], 'class' => 'mws-form']) !!}  
		        	{{ method_field('PUT') }}
		            @include('partials.admin.client_form')
		        {!! Form::close() !!}
		    </div>      
		</div>
	</div>
@endsection