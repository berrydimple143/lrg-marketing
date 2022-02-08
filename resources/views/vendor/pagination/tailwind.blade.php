@if ($paginator->hasPages())
    <div class="mws-panel-toolbar">                
        <div class="btn-toolbar">                   
            <div class="btn-group">
                @if ($paginator->onFirstPage())
                    <a class="btn">{!! __('pagination.previous') !!}</a> 
                @else               
                    <a href="{{ $paginator->previousPageUrl() }}" class="btn">{!! __('pagination.previous') !!}</a>
                @endif   
                @if ($paginator->hasMorePages())
                    <a href="{{ $paginator->nextPageUrl() }}" class="btn">{!! __('pagination.next') !!}</a>
                @else
                    <a class="btn">{!! __('pagination.next') !!}</a>
                @endif                
            </div>
        </div>
    </div>    
@endif
