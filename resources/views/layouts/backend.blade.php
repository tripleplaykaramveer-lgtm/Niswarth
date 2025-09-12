<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Niswarth sewa 3 | Dashboard</title>

  <link rel="icon" href="{{ asset('assest/dashtream/images/favicon-32x32.png') }}" type="image/png" >

<link href="{{ asset('assest/dashtream/plugins/vectormap/jquery-jvectormap-2.0.2.css') }}" rel="stylesheet" >
<link href="{{ asset('assest/dashtream/plugins/simplebar/css/simplebar.css') }}" rel="stylesheet" >
<link href="{{ asset('assest/dashtream/plugins/perfect-scrollbar/css/perfect-scrollbar.css') }}" rel="stylesheet" >
<link href="{{ asset('assest/dashtream/plugins/metismenu/css/metisMenu.min.css') }}" rel="stylesheet" >
<link href="{{ asset('assest/dashtream/css/bootstrap.min.css') }}" rel="stylesheet">
<link href="{{ asset('assest/dashtream/css/bootstrap-extended.css') }}" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&amp;display=swap" rel="stylesheet">
<link href="{{ asset('assest/dashtream/css/app.css') }}" rel="stylesheet">
<link href="{{ asset('assest/dashtream/css/icons.css') }}" rel="stylesheet">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" />

</head>
<body class="bg-theme bg-theme2">
<div class="wrapper">


  @include('layouts.partials.header')
  @include('layouts.partials.sidebar')


  <div class="content-wrapper">
    @yield('content')
  </div>


  <aside class="control-sidebar control-sidebar-dark">
  </aside>
</div>

	<div class="overlay toggle-icon"></div>
		 <a href="javaScript:;" class="back-to-top"><i class='bx bxs-up-arrow-alt'></i></a>
		<footer class="page-footer">
			<p class="mb-0">Copyright © 2025. All right reserved.</p>
		</footer>
<script src="{{ asset('assest/dashtream/js/bootstrap.bundle.min.js') }}"></script>
<script src="{{ asset('assest/dashtream/js/jquery.min.js') }}"></script>
<script src="{{ asset('assest/dashtream/plugins/simplebar/js/simplebar.min.js') }}"></script>
<script src="{{ asset('assest/dashtream/plugins/metismenu/js/metisMenu.min.js') }}"></script>
<script src="{{ asset('assest/dashtream/plugins/perfect-scrollbar/js/perfect-scrollbar.js') }}"></script>
<script src="{{ asset('assest/dashtream/plugins/chartjs/chart.min.js') }}"></script>
<script src="{{ asset('assest/dashtream/plugins/vectormap/jquery-jvectormap-2.0.2.min.js') }}"></script>
<script src="{{ asset('assest/dashtream/plugins/vectormap/jquery-jvectormap-world-mill-en.js') }}"></script>
<script src="{{ asset('assest/dashtream/plugins/jquery.easy-pie-chart/jquery.easypiechart.min.js') }}"></script>
<script src="{{ asset('assest/dashtream/plugins/sparkline-charts/jquery.sparkline.min.js') }}"></script>
<script src="{{ asset('assest/dashtream/plugins/jquery-knob/excanvas.js') }}"></script>
<script src="{{ asset('assest/dashtream/plugins/jquery-knob/jquery.knob.js') }}"></script>
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
<script src="{{ asset('assest/dashtream/plugins/select2/js/select2-custom.js')}}"></script>

<script>
    $(function() {
        $(".knob").knob();
    });
</script>
<script src="{{ asset('assest/dashtream/js/index.js') }}"></script>
<script src="{{ asset('assest/dashtream/js/app.js') }}"></script>

</body>
</html>
