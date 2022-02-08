<!DOCTYPE html>
<html lang="en">
    <head>
        <title>@yield('title')</title>
        @include('partials.head')             
    </head>
    <body>
        @yield('content')
        @include('partials.scripts')        
        @include('sweetalert::alert')
    </body>
</html>