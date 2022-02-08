@extends('layouts.back')
@section('title', 'User Editor')
@section('content')
	<div class="container">
		<div class="mws-panel grid_8">
		    <div class="mws-panel-header">
		        <span>User Editor</span>
		    </div>
		    <div class="mws-panel-body no-padding">        		         
		        {!! Form::model($model, ['route' => ['user.update', $model->id], 'class' => 'mws-form']) !!}  
		        	{{ method_field('PUT') }}
		            @include('partials.admin.user_form')
		        {!! Form::close() !!}
		    </div>      
		</div>
	</div>
@endsection