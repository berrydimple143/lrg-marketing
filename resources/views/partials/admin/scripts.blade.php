<script src="{{ asset('js/libs/jquery.mousewheel.min.js') }}"></script>
<script src="{{ asset('js/libs/jquery.placeholder.min.js') }}"></script>
<script src="{{ asset('custom-plugins/fileinput.js') }}"></script>

<!-- jQuery-UI Dependent Scripts -->
<script src="{{ asset('jui/js/jquery-ui-1.9.2.min.js') }}"></script>
<script src="{{ asset('jui/jquery-ui.custom.min.js') }}"></script>
<script src="{{ asset('jui/js/jquery.ui.touch-punch.js') }}"></script>

<!-- Plugin Scripts -->
<script src="{{ asset('plugins/datatables/jquery.dataTables.min.js') }}"></script>
<!--[if lt IE 9]>
<script src="{{ asset('js/libs/excanvas.min.js') }}"></script>
<![endif]-->
<script src="{{ asset('plugins/flot/jquery.flot.min.js') }}"></script>
<script src="{{ asset('plugins/flot/plugins/jquery.flot.tooltip.min.js') }}"></script>
<script src="{{ asset('plugins/flot/plugins/jquery.flot.pie.min.js') }}"></script>
<script src="{{ asset('plugins/flot/plugins/jquery.flot.stack.min.js') }}"></script>
<script src="{{ asset('plugins/flot/plugins/jquery.flot.resize.min.js') }}"></script>
<script src="{{ asset('plugins/colorpicker/colorpicker-min.js') }}"></script>
<script src="{{ asset('plugins/validate/jquery.validate-min.js') }}"></script>
<script src="{{ asset('custom-plugins/wizard/wizard.min.js') }}"></script>

<script src="{{ asset('js/core/mws.js') }}"></script>

<!-- Themer Script (Remove if not needed) -->
<script src="{{ asset('js/core/themer.js') }}"></script>

<!-- Demo Scripts (remove if not needed) -->
<script src="{{ asset('js/demo/demo.dashboard.js') }}"></script>
@if($mainpage == "dashboard")
	<script src="{{ asset('js/Chart.min.js') }}"></script>
	{!! $chart->renderJs() !!}
@endif