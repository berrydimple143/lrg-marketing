@extends('layouts.back')
@section('title', 'Event Task Editor')
@section('content')
	<div class="container">
		<div class="mws-panel grid_8">
		    <div class="mws-panel-header">
		        <span>Event Task Editor</span>
		    </div>
		    <div class="mws-panel-body no-padding">        		         
		        {!! Form::model($model, ['route' => ['event.update', $model->id], 'class' => 'mws-form']) !!}  
		        	{{ method_field('PUT') }}
		            @include('partials.admin.event_form')
		        {!! Form::close() !!}
		    </div>      
		</div>
	</div>
@endsection