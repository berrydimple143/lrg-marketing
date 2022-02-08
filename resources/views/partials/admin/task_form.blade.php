<div class="mws-form-inline">
    <div class="mws-form-row bordered">
        <label class="mws-form-label">Business Name</label>
        <div class="mws-form-item">                        
            {!! Form::text('name', null, ['class' => 'medium']) !!}                       
            @error('name')          
                <div class="mws-error">
                    {{ $message }}
                </div>   
            @enderror                           
        </div>
    </div>
    <div class="mws-form-row bordered">
        <label class="mws-form-label">Business Email</label>
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
        <label class="mws-form-label">Business Address</label>
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
        <label class="mws-form-label">Business Phone</label>
        <div class="mws-form-item">
            {!! Form::text('phone', null, ['class' => 'medium']) !!}                        
            @error('phone')
                <div class="mws-error">
                    {{ $message }}
                </div>
            @enderror
        </div>
    </div>
    <div class="mws-form-row bordered">
        <label class="mws-form-label">Business Website</label>
        <div class="mws-form-item">
            {!! Form::text('website', null, ['class' => 'medium']) !!}                        
            @error('website')
                <div class="mws-error">
                    {{ $message }}
                </div>
            @enderror
        </div>
    </div>    
    <div class="mws-form-row bordered">
        <label class="mws-form-label">Directory</label>
        <div class="mws-form-item">
            {!! Form::text('directory', null, ['class' => 'medium']) !!}                        
            @error('directory')
                <div class="mws-error">
                    {{ $message }}
                </div>
            @enderror
        </div>
    </div>
    <div class="mws-form-row bordered">
        <label class="mws-form-label">Category</label>
        <div class="mws-form-item">
            {!! Form::text('category', null, ['class' => 'medium']) !!}                        
            @error('category')
                <div class="mws-error">
                    {{ $message }}
                </div>
            @enderror
        </div>
    </div>  
    <div class="mws-form-row bordered">
        <label class="mws-form-label">Town</label>
        <div class="mws-form-item">
            {!! Form::text('town', null, ['class' => 'medium']) !!}                        
            @error('town')
                <div class="mws-error">
                    {{ $message }}
                </div>
            @enderror
        </div>
    </div>  
    <div class="mws-form-row bordered">
        <label class="mws-form-label">Marketing Strategy</label>
        <div class="mws-form-item">
            {!! Form::select('strategy', ['Email' => 'Email', 'Social Media' => 'Social Media', 'Call' => 'Call'], null, ['class' => 'medium']) !!} 
        </div>
    </div>                                           
</div>
<div class="mws-button-row">
    <button type="submit" class="btn btn-primary">Create Task</button>                
    <a href="{{ route('task') }}"><input type="button" value="Cancel" class="btn btn-danger pull-right"></a>
</div>