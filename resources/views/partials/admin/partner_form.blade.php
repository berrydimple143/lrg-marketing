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
        <label class="mws-form-label">Company Affiliate ID</label>
        <div class="mws-form-item">
            {!! Form::text('company_affiliate_id', null, ['class' => 'medium']) !!}                        
        </div>
    </div>                
    <div class="mws-form-row bordered">
        <label class="mws-form-label">Company Share</label>
        <div class="mws-form-item">
            {!! Form::text('company_share', null, ['class' => 'medium']) !!}                        
        </div>
    </div>
    <div class="mws-form-row bordered">
        <label class="mws-form-label">Agent Share</label>
        <div class="mws-form-item">
            {!! Form::text('company_agent_share', null, ['class' => 'medium']) !!}                        
            @error('business_email')
                <div class="mws-error">
                    {{ $message }}
                </div>
            @enderror
        </div>
    </div>                
    @if($page == "add")      
        <div class="mws-form-row bordered">
            <label class="mws-form-label">Date Contracted</label>
            <div class="mws-form-item">
                {!! Form::date('date_contracted', \Carbon\Carbon::now()) !!}                        
                @error('date_contracted')
                    <div class="mws-error">
                        {{ $message }}
                    </div>
                @enderror
            </div>
        </div>
    @else
        <div class="mws-form-row bordered">
            <label class="mws-form-label">Date Contracted</label>
            <div class="mws-form-item">
                {!! Form::date('date_contracted', $dt['dt']) !!}                        
                @error('date_contracted')
                    <div class="mws-error">
                        {{ $message }}
                    </div>
                @enderror
            </div>
        </div>
    @endif   
    @if($page == "add")      
        <div class="mws-form-row bordered">
            <label class="mws-form-label">Date Terminated</label>
            <div class="mws-form-item">
                {!! Form::date('date_terminated', \Carbon\Carbon::now()) !!}                        
                @error('date_terminated')
                    <div class="mws-error">
                        {{ $message }}
                    </div>
                @enderror
            </div>
        </div>
    @else
        <div class="mws-form-row bordered">
            <label class="mws-form-label">Date Terminated</label>
            <div class="mws-form-item">
                {!! Form::date('date_terminated', $dt['dt2']) !!}                        
                @error('date_terminated')
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
    <a href="{{ route('partner') }}"><input type="button" value="Cancel" class="btn btn-danger pull-right"></a>
</div>