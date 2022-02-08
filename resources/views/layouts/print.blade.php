<!DOCTYPE html>
<html lang="en">
	<head>		
		<link rel="stylesheet" type="text/css" href="{{ asset('bootstrap/css/bootstrap.min.css') }}">
		<script src="{{ asset('bootstrap/js/bootstrap.min.js') }}"></script>
		<script src="{{ asset('js/libs/jquery-1.8.3.min.js') }}"></script>
		<script src="{{ asset('js/jquery.printPage.js') }}"></script>
	</head>
	<body>		
		@yield('content')			
	</body>
</html>