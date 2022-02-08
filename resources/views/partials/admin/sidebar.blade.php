<?php 
    $dashcls = $adcls = $artcls = $evtcls = $pyecls = $invcls = $pyrcls = $prtncls = $clntcls = $tkcls = $cbcls = $usercls = "";
    if($mainpage == "dashboard") {
        $dashcls = "active";
    } elseif($mainpage == "article") {
        $artcls = "active";
    } elseif($mainpage == "advertisement") {
        $adcls = "active";
    } elseif($mainpage == "event") {
        $evtcls = "active";
    } elseif($mainpage == "client") {
        $clntcls = "active";
    } elseif($mainpage == "partner") {
        $prtncls = "active";
    } elseif($mainpage == "user") {
        $usercls = "active";
    } elseif($mainpage == "task") {
        $tkcls = "active";
    } elseif($mainpage == "callback") {
        $cbcls = "active";
    } elseif($mainpage == "payer") {
        $pyrcls = "active";
    } elseif($mainpage == "payee") {
        $pyecls = "active";
    } elseif($mainpage == "invoice") {
        $invcls = "active";
    }    
?>
<div id="mws-sidebar">

    <!-- Hidden Nav Collapse Button -->
    <div id="mws-nav-collapse">
        <span></span>
        <span></span>
        <span></span>
    </div>
    
	<!-- Searchbox -->
	<div id="mws-searchbox" class="mws-inset">
    	<form action="typography.html">
        	<input type="text" class="mws-search-input" placeholder="Search...">
            <button type="submit" class="mws-search-submit"><i class="icon-search"></i></button>
        </form>
    </div>
    
    <!-- Main Navigation -->
    <div id="mws-navigation">
        <ul>
            <li class="{{ $dashcls }}"><a href="{{ route('dashboard') }}"><i class="icon-home"></i> Dashboard</a></li>
            <li class="{{ $clntcls }}">
                <a href="{{ route('client') }}">
                    <i class="icon-calendar-month"></i> 
                    Clients <span class="mws-nav-tooltip">{{ $cl_counter }}</span>
                </a>
            </li>
            @if(Auth::user()->level == "Owner" or Auth::user()->level == "Admin")                
                @if(Auth::user()->level == "Owner")
                    <li class="{{ $usercls }}">
                        <a href="{{ route('user') }}">
                            <i class="icon-calendar-month"></i> 
                            Users <span class="mws-nav-tooltip">{{ $usr_counter }}</span>
                        </a>
                    </li>
                    <li class="{{ $prtncls }}">
                        <a href="{{ route('partner') }}">
                            <i class="icon-calendar-month"></i> 
                            Partners <span class="mws-nav-tooltip">{{ $prtn_counter }}</span>
                        </a>
                    </li>
                    <li>
                        <a><i class="icon-list"></i> Invoice</a>
                        <ul>
                            <li class="{{ $pyrcls }}"><a href="{{ route('payer') }}"><i class="icon-calendar-month"></i> Payer</a></li>
                            <li class="{{ $pyecls }}"><a href="{{ route('payee') }}"><i class="icon-calendar-month"></i> Payee</a></li>
                            <li class="{{ $invcls }}"><a href="{{ route('invoice') }}"><i class="icon-calendar-month"></i> Invoices</a></li>
                        </ul>
                    </li>

                @endif
            @endif
            <li class="{{ $tkcls }}">
                <a href="{{ route('task') }}">
                    <i class="icon-broadcast"></i> 
                    Tasks <span class="mws-nav-tooltip">{{ $tsk_counter }}</span>
                </a>
            </li>
            <li class="{{ $cbcls }}">
                <a href="{{ route('call.back') }}">
                    <i class="icon-broadcast"></i> 
                    Callbacks <span class="mws-nav-tooltip">{{ $callback_counter }}</span>
                </a>
            </li>            
            <li class="{{ $adcls }}">
                <a href="{{ route('advertisement') }}">
                    <i class="icon-broadcast"></i> 
                    Advertisements <span class="mws-nav-tooltip">{{ $ad_counter }}</span>
                </a>
            </li>
            <li class="{{ $artcls }}">
                <a href="{{ route('article') }}">
                    <i class="icon-business-card"></i> 
                    Articles <span class="mws-nav-tooltip">{{ $article_counter }}</span>
                </a>
            </li>
            <li class="{{ $evtcls }}">
                <a href="{{ route('event') }}">
                    <i class="icon-calendar-month"></i> 
                    Events <span class="mws-nav-tooltip">{{ $event_counter }}</span>
                </a>
            </li>            
            <li><a href="{{ route('logout') }}"><i class="icon-off"></i> Logout</a></li>            
        </ul>
    </div>         
</div>