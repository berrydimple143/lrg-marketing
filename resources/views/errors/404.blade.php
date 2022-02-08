<!DOCTYPE html>
<html lang="en">
    <head>
        <title>404 Error Page</title>
        <link rel="stylesheet" type="text/css" href="{{ asset('css/style.css') }}" media="screen">    
    </head>
    <body>
        <div id="colorlib-notfound">
		    <div class="colorlib-notfound">
		        <div class="colorlib-notfound-404">
		            <h1>404</h1>
		        </div>
		        <h2 id="colorlib_404_customizer_page_heading">404 Page Not Found</h2>
		        <p id="colorlib_404_customizer_content">The page you are looking for might have been removed had its name changed or is temporarily available</p>
		        <a href="{{ route('dashboard') }}" id="colorlib_404-customizer_button_text">GO TO HOMEPAGE</a>
		    </div>
		</div>        
        @include('sweetalert::alert')
    </body>
</html>