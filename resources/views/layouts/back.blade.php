<!DOCTYPE html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--><html lang="en"><!--<![endif]-->
    <head>
        <title>@yield('title')</title>
        @include('partials.admin.head')             
    </head>
    <body>       
    	@include('partials.admin.header')
    	<div id="mws-wrapper">
    		<div id="mws-sidebar-stitch"></div>
    		<div id="mws-sidebar-bg"></div>
    		@include('partials.admin.sidebar')
    		<div id="mws-container" class="clearfix">
        		@yield('content')      
        		@include('partials.admin.footer')
        	</div>       
        </div>   
        @include('partials.admin.scripts')
        @include('sweetalert::alert')        
    </body>
</html>