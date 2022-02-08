<!-- Statistics Button Container -->
<div class="mws-stat-container clearfix">
	
    <!-- Statistic Item -->
	<a class="mws-stat" href="#">
    	<!-- Statistic Icon (edit to change icon) -->
    	<span class="mws-stat-icon icol32-building"></span>
        
        <!-- Statistic Content -->
        <span class="mws-stat-content">
        	<span class="mws-stat-title">Your total sales</span>
            <span class="mws-stat-value">1</span>
        </span>
    </a>

	<a class="mws-stat" href="#">
    	<!-- Statistic Icon (edit to change icon) -->
    	<span class="mws-stat-icon icol32-sport"></span>
        
        <!-- Statistic Content -->
        <span class="mws-stat-content">
        	<span class="mws-stat-title">LRG total sales</span>
            <span class="mws-stat-value down">74%</span>
        </span>
    </a>

	<a class="mws-stat" href="#">
    	<!-- Statistic Icon (edit to change icon) -->
    	<span class="mws-stat-icon icol32-walk"></span>
        
        <!-- Statistic Content -->
        <span class="mws-stat-content">
        	<span class="mws-stat-title">Advertisements Created</span>
            <span class="mws-stat-value">14</span>
        </span>
    </a>
    
	<a class="mws-stat" href="#">
    	<!-- Statistic Icon (edit to change icon) -->
    	<span class="mws-stat-icon icol32-bug"></span>
        
        <!-- Statistic Content -->
        <span class="mws-stat-content">
        	<span class="mws-stat-title">Articles Created</span>
            <span class="mws-stat-value up">22</span>
        </span>
    </a>
    
	<a class="mws-stat" href="#">
    	<!-- Statistic Icon (edit to change icon) -->
    	<span class="mws-stat-icon icol32-car"></span>

        <!-- Statistic Content -->
        <span class="mws-stat-content">
        	<span class="mws-stat-title">Events Created</span>
            <span class="mws-stat-value">77</span>
        </span>
    </a>
</div>

<!-- Panels Start -->

<div class="mws-panel grid_8">
	<div class="mws-panel-header">
    	<span><i class="icon-graph"></i> Sales per month</span>
    </div>
    <div class="mws-panel-body">
        {!! $chart->renderHtml() !!} 
    </div>
</div>