<div class="mws-form-inline">
    <div class="mws-form-row bordered">
        <label class="mws-form-label">Company Name</label>
        <div class="mws-form-item">                        
            {!! Form::text('company_name', null, ['class' => 'medium']) !!}                       
            @error('company_name')          
                <div class="mws-error">
                    {{ $message }}
                </div>   
            @enderror                           
        </div>
    </div>
    <div class="mws-form-row bordered">
        <label class="mws-form-label">Owner</label>
        <div class="mws-form-item">
            {!! Form::text('owner', null, ['class' => 'medium']) !!} 
            @error('owner')          
                <div class="mws-error">
                    {{ $message }}
                </div>   
            @enderror                       
        </div>
    </div>                
    <div class="mws-form-row bordered">
        <label class="mws-form-label">Company Address</label>
        <div class="mws-form-item">
            {!! Form::text('address', null, ['class' => 'medium']) !!}    
            @error('address')          
                <div class="mws-error">
                    {{ $message }}
                </div>   
            @enderror                        
        </div>
    </div>
    <div class="mws-form-row bordered">
        <label class="mws-form-label">Company Postal Code</label>
        <div class="mws-form-item">
            {!! Form::text('postcode', null, ['class' => 'medium']) !!}                        
            @error('postcode')
                <div class="mws-error">
                    {{ $message }}
                </div>
            @enderror
        </div>
    </div>
    <div class="mws-form-row bordered">
        <label class="mws-form-label">Country</label>
        <div class="mws-form-item">
            {!! Form::select('country', $dt, null, ['class' => 'medium']) !!}                   
            @error('country')
                <div class="mws-error">
                    {{ $message }}
                </div>
            @enderror
        </div>
    </div>       
    <div class="mws-form-row bordered">
        <label class="mws-form-label">Tax ID No.</label>
        <div class="mws-form-item">
            {!! Form::text('tax_id', null, ['class' => 'medium']) !!}                        
            @error('tax_id')
                <div class="mws-error">
                    {{ $message }}
                </div>
            @enderror
        </div>
    </div>                                   
</div>
<div class="mws-button-row">
    <button type="submit" class="btn btn-primary">Save Changes</button>                
    <a href="{{ route('payer') }}"><input type="button" value="Cancel" class="btn btn-danger pull-right"></a>
</div>