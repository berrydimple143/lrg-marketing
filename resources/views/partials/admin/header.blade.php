
<!-- Header -->
<div id="mws-header" class="clearfix">

	<!-- Logo Container -->
	<div id="mws-logo-container">
    
    	<!-- Logo Wrapper, images put within this wrapper will always be vertically centered -->
    	<div id="mws-logo-wrap">
        	<img src="{{ asset('images/ARN-LRG2.png') }}" width="500" height="37" alt="LRG-ARN Logo">		    
        </div>
    </div>    
    <!-- User Tools (notifications, logout, profile, change password) -->
    <div id="mws-user-tools" class="clearfix">    	
        
        <!-- User Information and functions section -->
        <div id="mws-user-info" class="mws-inset">
            
        	<!-- User Photo -->
        	<div id="mws-user-photo">
            	<img src="{{ asset('example/profile.jpg') }}" alt="User Photo">
            </div>
            
            <!-- Username and Functions -->
            <div id="mws-user-functions">
                <div id="mws-username">
                    Hello, {{ Auth::user()->username }}
                </div>
                <ul>
                	<li><a href="#">Profile</a></li>
                    <li><a href="#">Change Password</a></li>
                    <li><a href="{{ route('logout') }}">Logout</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>