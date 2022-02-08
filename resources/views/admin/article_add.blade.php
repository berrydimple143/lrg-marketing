@extends('layouts.back')
@section('title', 'Article Task Creator')
@section('content')
	<div class="container">
		<div class="mws-panel grid_8">
		    <div class="mws-panel-header">
		        <span>Article Details Creator</span>
		    </div>
		    <div class="mws-panel-body no-padding">        
		        {!! Form::open(['route' => 'article.post', 'method' => 'POST', 'class' => 'mws-form']) !!}        
		            @include('partials.admin.article_form')
		        {!! Form::close() !!}
		    </div>      
		</div>
	</div>
@endsection