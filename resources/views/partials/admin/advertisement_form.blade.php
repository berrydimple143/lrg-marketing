<div class="mws-form-inline">
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
        <label class="mws-form-label">Business Name</label>
        <div class="mws-form-item">
            {!! Form::text('business_name', null, ['class' => 'medium']) !!}                        
        </div>
    </div>                
    <div class="mws-form-row bordered">
        <label class="mws-form-label">Business Address</label>
        <div class="mws-form-item">
            {!! Form::text('business_address', null, ['class' => 'medium']) !!}                        
        </div>
    </div>
    <div class="mws-form-row bordered">
        <label class="mws-form-label">Business Email</label>
        <div class="mws-form-item">
            {!! Form::text('business_email', null, ['class' => 'medium']) !!}                        
            @error('business_email')
                <div class="mws-error">
                    {{ $message }}
                </div>
            @enderror
        </div>
    </div>
    <div class="mws-form-row bordered">
        <label class="mws-form-label">Business Phone Number</label>
        <div class="mws-form-item">
            {!! Form::text('business_phone', null, ['class' => 'medium']) !!}                        
            @error('business_phone')
                <div class="mws-error">
                    {{ $message }}
                </div>
            @enderror
        </div>
    </div>                
    <div class="mws-form-row bordered">
        <label class="mws-form-label">Advertisement Link</label>
        <div class="mws-form-item">                        
            {!! Form::text('link', null, ['class' => 'medium']) !!}
            @error('link')
                <div class="mws-error">
                    {{ $message }}
                </div>
            @enderror
        </div>
    </div>   
    <div class="mws-form-row bordered">
        <label class="mws-form-label">Job Status</label>
        <div class="mws-form-item">
            {!! Form::select('jstat', ['Completed' => 'Completed', 'Pending' => 'Pending'], null, ['class' => 'medium']) !!} 
        </div>
    </div>                
    @if($page == "add")      
        <div class="mws-form-row bordered">
            <label class="mws-form-label">Date Created</label>
            <div class="mws-form-item">
                {!! Form::date('date_created', \Carbon\Carbon::now()) !!}                        
                @error('date_created')
                    <div class="mws-error">
                        {{ $message }}
                    </div>
                @enderror
            </div>
        </div>
    @else
        <div class="mws-form-row bordered">
            <label class="mws-form-label">Date Created</label>
            <div class="mws-form-item">
                {!! Form::date('date_created', $dt) !!}                        
                @error('date_created')
                    <div class="mws-error">
                        {{ $message }}
                    </div>
                @enderror
            </div>
        </div>
    @endif                                              
</div>
<div class="mws-button-row">
    <button type="submit" class="btn btn-success">Save Changes</button>                
    <a href="{{ route('advertisement') }}"><input type="button" value="Cancel" class="btn btn-danger pull-right"></a>
</div>