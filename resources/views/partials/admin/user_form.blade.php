<div class="mws-form-inline">
    <div class="mws-form-row">
        <div class="mws-form-cols">
            <div class="mws-form-col-4-8">
                <label class="mws-form-label">First Name</label>
                <div class="mws-form-item">                                         
                    {!! Form::text('firstname', null, ['class' => 'mws-login-username']) !!}                    
                </div>
            </div>
            <div class="mws-form-col-4-8">
                <label class="mws-form-label">Last Name</label>
                <div class="mws-form-item">
                    {!! Form::text('lastname', null, ['class' => 'mws-login-username']) !!}                    
                </div>
            </div>
        </div>
    </div>

    <div class="mws-form-row">
        <div class="mws-form-cols">
            <div class="mws-form-col-4-8">
                <label class="mws-form-label">Middle Name</label>
                <div class="mws-form-item">                    
                    {!! Form::text('middlename', null, ['class' => 'mws-login-username']) !!}
                </div>
            </div>
            <div class="mws-form-col-4-8">
                <label class="mws-form-label">Username</label>
                <div class="mws-form-item">
                    {!! Form::text('username', null, ['class' => 'mws-login-username']) !!}                    
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
                    {!! Form::text('email', null, ['class' => 'mws-login-username']) !!}                              
                    @error('email')
                        <div class="mws-error">
                            {{ $message }}
                        </div>
                    @enderror                                
                </div>
            </div>
            @if($page == "add")
                <div class="mws-form-col-4-8">
                    <label class="mws-form-label">Password</label>
                    <div class="mws-form-item">
                        {!! Form::password('password', ['class' => 'mws-login-password'], null) !!}                    
                        @error('password')                                
                            <div class="mws-error">
                                {{ $message }}
                            </div>                                
                        @enderror
                    </div>
                </div>
            @endif
        </div>
    </div>
    @if($page == "add")
        <div class="mws-form-row">
            <div class="mws-form-cols">
                <div class="mws-form-col-4-8">
                    <label class="mws-form-label">Level</label>
                    <div class="mws-form-item">
                        {!! Form::select('level', ['Agent' => 'Agent', 'Admin' => 'Admin', 'Owner' => 'Owner'], null, ['class' => 'large']) !!}                    
                    </div>
                </div>            
                <div class="mws-form-col-4-8">
                    <label class="mws-form-label">Partner</label>
                    <div class="mws-form-item">
                        <select name="partner" class="large">                                          
                            @forelse($model as $part)
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
                            @forelse($model as $part)
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
    @endif
</div>
<div class="mws-button-row">
    <button type="submit" class="btn btn-success">Save Changes</button>                
    <a href="{{ route('user') }}"><input type="button" value="Cancel" class="btn btn-danger pull-right"></a>
</div>