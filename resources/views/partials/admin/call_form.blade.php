<div class="mws-form-inline">
    {!! Form::hidden('cid', $dt) !!}
    <div class="mws-form-row bordered">
        <label class="mws-form-label">Caller Type</label>
        <div class="mws-form-item">
            {!! Form::select('caller', ['Machine' => 'Machine', 'Human' => 'Human', 'No Answer' => 'No Answer'], null, ['class' => 'medium']) !!} 
        </div>
    </div>
    <div class="mws-form-row bordered">
        <label class="mws-form-label">Caller Name</label>
        <div class="mws-form-item">                        
            {!! Form::text('name', null, ['class' => 'medium']) !!}            
        </div>
    </div>
    <div class="mws-form-row bordered">
        <label class="mws-form-label">Caller Email</label>
        <div class="mws-form-item">
            {!! Form::text('email', null, ['class' => 'medium']) !!}                        
        </div>
    </div>                
    <div class="mws-form-row bordered">
        <label class="mws-form-label">Caller Mobile</label>
        <div class="mws-form-item">
            {!! Form::text('mobile', null, ['class' => 'medium']) !!}                        
        </div>
    </div>
    <div class="mws-form-row bordered">
        <label class="mws-form-label">Caller Position</label>
        <div class="mws-form-item">
            {!! Form::text('position', null, ['class' => 'medium']) !!}           
        </div>
    </div>
    <div class="mws-form-row bordered">
        <label class="mws-form-label">Notes</label>
        <div class="mws-form-item">
            {!! Form::textarea('notes', null, ['class' => 'medium']) !!}           
        </div>
    </div>       
    <div class="mws-form-row bordered">
        <label class="mws-form-label">Callback</label>
        <div class="mws-form-item">
            {!! Form::select('callback', ['no' => 'no', 'yes' => 'yes'], null, ['class' => 'medium']) !!} 
        </div>
    </div>   
    @if($page == "add")
        <div class="mws-form-row bordered">
            <label class="mws-form-label">Appointment Date</label>
            <div class="mws-form-item">
                {!! Form::date('appointment', \Carbon\Carbon::now()) !!}               
            </div>
        </div>
    @else
        <div class="mws-form-row bordered">
            <label class="mws-form-label">Appointment Date</label>
            <div class="mws-form-item">
                {!! Form::date('appointment', \Carbon\Carbon::parse($model->appointment)) !!}               
            </div>
        </div>
    @endif
    <div class="mws-form-row bordered">
        <label class="mws-form-label">Email Back</label>
        <div class="mws-form-item">
            {!! Form::select('mailback', ['yes' => 'yes', 'no' => 'no'], null, ['class' => 'medium']) !!} 
        </div>
    </div>  
    <div class="mws-form-row bordered">
        <label class="mws-form-label">Closed</label>
        <div class="mws-form-item">
            {!! Form::select('closed', ['no' => 'no', 'yes' => 'yes'], null, ['class' => 'medium']) !!} 
        </div>
    </div>                                            
</div>
<div class="mws-button-row">
    <button type="submit" class="btn btn-success">Save Changes</button>                
    <a href="{{ route('phone.calls', ['id' => $dt]) }}"><input type="button" value="Cancel" class="btn btn-danger pull-right"></a>
</div>