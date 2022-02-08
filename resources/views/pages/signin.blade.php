@extends('layouts.front')
@section('title', 'Sign In')
@section('content')
<div id="mws-login-wrapper">
    <div id="mws-login">
        <h1><img src="{{ asset('images/ARN-LRG2.png') }}"></h1>
        <div class="mws-login-lock"><i class="icon-lock"></i></div>
        <div id="mws-login-form">        	
            {!! Form::open(['route' => 'signin.post', 'method' => 'POST', 'class' => 'mws-form']) !!}
                @csrf
                <div class="mws-form-row">
                    <div class="mws-form-item">
                        <input type="text" name="username" class="mws-login-username" value="{{ old('username') }}" placeholder="Type your username here ..." autofocus=true>                        
                        @error('username')
                            <div class="mws-error">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                </div>                
                <div class="mws-form-row">
                    <div class="mws-form-item">
                        <input type="password" name="password" class="mws-login-password" value="{{ old('password') }}" placeholder="Type your password here ...">                        
                        @error('password')
                            <div class="mws-error">
                                {{ $message }}
                            </div>
                        @enderror
                    </div>
                </div>
                <div id="mws-login-remember" class="mws-form-row mws-inset">
                    <ul class="mws-form-list inline">       
                    	<li>&nbsp;</li>		                                                                                                         
                    </ul>
                </div>
                <div class="mws-form-row">
                    <button type="submit" class="btn btn-success mws-login-button">Login</button>
                </div>
            {!! Form::close() !!}
        </div>
    </div>
</div>
@endsection