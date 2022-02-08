<div class="mws-panel grid_8">
    <div class="mws-panel-header">
        <span>Advertisement Details Creator</span>
    </div>
    <div class="mws-panel-body no-padding">        
        {!! Form::open(['route' => 'advertisement.post', 'method' => 'POST', 'class' => 'mws-form']) !!}        
            @include('partials.admin.advertisement_form')
        {!! Form::close() !!}
    </div>      
</div>