@extends('layouts.front')
@section('title', 'Registration')
@section('content')
	<div id="mws-wrapper">
    <!-- Main Container Start -->
        <div id="mws-container" class="clearfix">
        
            <!-- Inner Container Start -->
            <div class="container">
			    <div class="mws-panel grid_8">
			        <div class="mws-panel-header">
			            <h1 style="text-align: center; color: #fff; padding: 5px;">* * * * Registration Form * * * *</h1>
			        </div>
			        <div class="mws-panel-body no-padding">
			        	{!! Form::open(['route' => 'signup.post', 'method' => 'POST', 'class' => 'mws-form']) !!}
                		@csrf			                     
			                <div class="mws-form-row">
			                    <div class="mws-form-cols">
			                        <div class="mws-form-col-4-8">
			                            <label class="mws-form-label">First Name</label>
			                            <div class="mws-form-item">
			                                <input type="text" name="firstname" class="mws-login-username" placeholder="Type your First Name here ...">                           </div>
			                        </div>
			                        <div class="mws-form-col-4-8">
			                            <label class="mws-form-label">Last Name</label>
			                            <div class="mws-form-item">
			                                <input type="text" name="lastname" class="mws-login-username" placeholder="Type your Last Name here ...">
			                            </div>
			                        </div>
			                    </div>
			                </div>    
			                
			                <div class="mws-form-row">
			                    <div class="mws-form-cols">
			                        <div class="mws-form-col-4-8">
			                            <label class="mws-form-label">Middle Name</label>
			                            <div class="mws-form-item">
			                                <input type="text" name="middlename" class="mws-login-username" placeholder="Type your Middle Name here ...">
			                            </div>
			                        </div>
			                        <div class="mws-form-col-4-8">
			                            <label class="mws-form-label">Username</label>
			                            <div class="mws-form-item">
			                                <input type="text" name="username" class="mws-login-username" placeholder="Type your Username here ...">
			                                @error('username')
			                                    <div class="mws-error">
			                                        {{ $message }}
			                                    </div>
			                                @enderror
			                            </div>
			                        </div>
			                    </div>
			                </div>

			                <div class="mws-form-row">
			                    <div class="mws-form-cols">
			                        <div class="mws-form-col-4-8">
			                            <label class="mws-form-label">Email Address</label>
			                            <div class="mws-form-item">
			                                <input type="email" name="email" class="mws-login-username" placeholder="Type your Email Address here ...">                                
			                                @error('email')
			                                    <div class="mws-error">
			                                        {{ $message }}
			                                    </div>
			                                @enderror                                
			                            </div>
			                        </div>
			                        <div class="mws-form-col-4-8">
			                            <label class="mws-form-label">Password</label>
			                            <div class="mws-form-item">
			                                <input type="password" name="password" class="mws-login-password" placeholder="Type your password here ...">
			                                @error('password')                                
			                                    <div class="mws-error">
			                                        {{ $message }}
			                                    </div>                                
			                                @enderror
			                            </div>
			                        </div>
			                    </div>
			                </div>

			                <div class="mws-form-row">
			                    <div class="mws-form-cols">
			                        <div class="mws-form-col-4-8">
			                            <label class="mws-form-label">Level</label>
			                            <div class="mws-form-item">
			                                <select name="level" class="large">
			                                    <option value="">-- Select a level here --</option>
			                                    <option value="Agent">Agent</option>
			                                    <option value="Admin">Admin</option>
			                                    <option value="Owner">Owner</option>
			                                </select>
			                            </div>
			                        </div>
			                        <div class="mws-form-col-4-8">
			                            <label class="mws-form-label">Partner</label>
			                            <div class="mws-form-item">
			                                <select name="partner" class="large">
			                                    <option value="">-- Select a partner here --</option>
			                                    @forelse($partners as $part)
			                                    	<option value="{{ $part->company_name }}">{{ $part->company_name }}</option>
			                                    @empty
			                                    	<option value="">-- No partners yet --</option>
			                                    @endforelse			                                               
			                                </select>
			                            </div>
			                        </div>
			                    </div>
			                </div>
			                <div class="mws-form-row">
			                    <div class="mws-form-cols">
			                        <div class="mws-form-col-4-8">
			                            <label class="mws-form-label">Affiliate ID</label>
			                            <div class="mws-form-item">
			                                <select name="affid" class="large">
			                                    <option value="">-- Select an Affiliate ID here --</option>
			                                    @forelse($partners as $part)
			                                    	<option value="{{ $part->company_affiliate_id }}">{{ $part->company_affiliate_id }}</option>
			                                    @empty
			                                    	<option value="">-- No Partner Affiliate ID yet --</option>
			                                    @endforelse
			                                </select>
			                            </div>
			                        </div>
			                        <div class="mws-form-col-4-8">
			                            <label class="mws-form-label">Affiliate Extension</label>
			                            <div class="mws-form-item">
			                                <input type="text" name="affid_extension" class="mws-login-username" placeholder="Type your affiliate extension here ...">
			                            </div>
			                        </div>
			                    </div>
			                </div>			                
			                <div class="mws-button-row">                           
			                    <button type="submit" class="btn btn-danger">Register</button>            
			                </div>
			            {!! Form::close() !!}
			        </div>
			        </div>
			</div>
    </div>
</div>
@endsection