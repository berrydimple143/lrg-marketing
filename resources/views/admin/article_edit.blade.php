@extends('layouts.back')
@section('title', 'Article Task Editor')
@section('content')
	<div class="container">
		<div class="mws-panel grid_8">
		    <div class="mws-panel-header">
		        <span>Article Task Editor</span>
		    </div>
		    <div class="mws-panel-body no-padding">        		         
		        {!! Form::model($model, ['route' => ['article.update', $model->id], 'class' => 'mws-form']) !!}  
		        	{{ method_field('PUT') }}
		            @include('partials.admin.article_form')
		        {!! Form::close() !!}
		    </div>      
		</div>
	</div>
@endsection