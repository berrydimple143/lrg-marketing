<div class="mws-form-inline">
    <div class="mws-form-row bordered">
        <label class="mws-form-label">Agent ID</label>
        <div class="mws-form-item">                        
            {!! Form::text('aid', null, ['class' => 'medium']) !!}                       
            @error('aid')          
                <div class="mws-error">
                    {{ $message }}
                </div>   
            @enderror                                 
        </div>
    </div>
    <div class="mws-form-row bordered">
        <label class="mws-form-label">Customer ID</label>
        <div class="mws-form-item">                        
            {!! Form::text('customer_id', null, ['class' => 'medium']) !!}                       
            @error('customer_id')          
                <div class="mws-error">
                    {{ $message }}
                </div>   
            @enderror                                 
        </div>
    </div>
    <div class="mws-form-row bordered">
        <label class="mws-form-label">First Name</label>
        <div class="mws-form-item">
            {!! Form::text('firstname', null, ['class' => 'medium']) !!}   
            @error('firstname')          
                <div class="mws-error">
                    {{ $message }}
                </div>   
            @enderror                      
        </div>
    </div>                
    <div class="mws-form-row bordered">
        <label class="mws-form-label">Last Name</label>
        <div class="mws-form-item">
            {!! Form::text('lastname', null, ['class' => 'medium']) !!}    
            @error('lastname')          
                <div class="mws-error">
                    {{ $message }}
                </div>   
            @enderror                        
        </div>
    </div>
    <div class="mws-form-row bordered">
        <label class="mws-form-label">Email</label>
        <div class="mws-form-item">
            {!! Form::text('email', null, ['class' => 'medium']) !!}                        
            @error('email')
                <div class="mws-error">
                    {{ $message }}
                </div>
            @enderror
        </div>
    </div>
    <div class="mws-form-row bordered">
        <label class="mws-form-label">Password</label>
        <div class="mws-form-item">
            {!! Form::text('password', null, ['class' => 'medium']) !!}                        
            @error('password')
                <div class="mws-error">
                    {{ $message }}
                </div>
            @enderror
        </div>
    </div>                
    <div class="mws-form-row bordered">
        <label class="mws-form-label">Mobile</label>
        <div class="mws-form-item">                        
            {!! Form::text('mobile', null, ['class' => 'medium']) !!}
            @error('mobile')
                <div class="mws-error">
                    {{ $message }}
                </div>
            @enderror
        </div>
    </div>   
    <div class="mws-form-row bordered">
        <label class="mws-form-label">Town</label>
        <div class="mws-form-item">                        
            {!! Form::text('location', null, ['class' => 'medium']) !!}
            @error('location')
                <div class="mws-error">
                    {{ $message }}
                </div>
            @enderror
        </div>
    </div>      
    <div class="mws-form-row bordered">
        <label class="mws-form-label">Notes</label>
        <div class="mws-form-item">                        
            {!! Form::textarea('notes', null, ['class' => 'medium']) !!}
            @error('notes')
                <div class="mws-error">
                    {{ $message }}
                </div>
            @enderror
        </div>
    </div>                                
</div>
<div class="mws-button-row">
    <button type="submit" class="btn btn-success">Save Changes</button>                
    <a href="{{ route('client') }}"><input type="button" value="Cancel" class="btn btn-danger pull-right"></a>
</div>