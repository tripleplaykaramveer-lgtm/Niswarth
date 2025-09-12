<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>AdminLTE 3 | Dashboard</title>

    <link rel="icon" href="{{ asset('assest/dashtream/images/favicon-32x32.png') }}" type="image/png" />

    <!-- Plugins -->
    <link href="{{ asset('assest/dashtream/plugins/vectormap/jquery-jvectormap-2.0.2.css') }}" rel="stylesheet" />
    <link href="{{ asset('assest/dashtream/plugins/simplebar/css/simplebar.css') }}" rel="stylesheet" />
    <link href="{{ asset('assest/dashtream/plugins/perfect-scrollbar/css/perfect-scrollbar.css') }}" rel="stylesheet" />
    <link href="{{ asset('assest/dashtream/plugins/metismenu/css/metisMenu.min.css') }}" rel="stylesheet" />

    <!-- Loader -->


    <!-- Bootstrap CSS -->
    <link href="{{ asset('assest/dashtream/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('assest/dashtream/css/bootstrap-extended.css') }}" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&amp;display=swap" rel="stylesheet">
    <link href="{{ asset('assest/dashtream/css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('assest/dashtream/css/icons.css') }}" rel="stylesheet">

</head>

<body class="bg-theme bg-theme9">

    <div class="wrapper">
        <div class="section-authentication-cover">
            <div class="">
                <div class="row g-0">
                    <div
                        class="col-12 col-xl-7 col-xxl-8 auth-cover-left align-items-center justify-content-center d-none d-xl-flex">
                        <div class="card shadow-none bg-transparent shadow-none rounded-0 mb-0">
                            <div class="card-body">
                                <img src="{{ asset('assest/dashtream/images/login-images/register-cover.svg') }}"
                                    class="img-fluid auth-img-cover-login" width="550" alt="" />
                            </div>
                        </div>
                    </div>

                    <div
                        class="col-12 col-xl-5 col-xxl-4 auth-cover-right bg-light align-items-center justify-content-center">
                        <div class="card rounded-0 m-3 shadow-none bg-transparent mb-0">
                            <div class="card-body p-sm-5">
                                <div class="">
                                    <div class="mb-3 text-center">
                                        <img src="assets/images/logo-icon.png" width="60" alt="" />
                                    </div>
                                    <div class="text-center mb-4">
                                        <h5 class="">CRM Dashboard</h5>
                                        <p class="mb-0">Please fill the below details to create your account</p>
                                    </div>
                                    <div class="form-body">
                                        @if (session('success'))
                                            <div class="alert alert-dismissible lobibox-notify lobibox-notify-success animated-fast fadeInDown"
                                                role="alert">
                                                {{ session('success') }}
                                            </div>

                                            <script>
                                                // Show notification
                                                round_success_noti();

                                                // Redirect to login after 3 seconds
                                                setTimeout(function() {
                                                    window.location.href = "{{ route('login') }}";
                                                }, 3000);
                                            </script>
                                        @endif

                                        @if (session('error'))
                                            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                                {{ session('error') }}
                                            </div>
                                        @endif

                                        @if ($errors->any())
                                            <div class="alert alert-danger">
                                                <ul class="mb-0">
                                                    @foreach ($errors->all() as $error)
                                                        <li>{{ $error }}</li>
                                                    @endforeach
                                                </ul>
                                            </div>
                                        @endif


                                        <form action="{{ route('user.register') }}" method="post">
                                            @csrf
                                            <div class="input-group mb-3">
                                                <input type="text" class="form-control" placeholder="Full name"
                                                    name="name">
                                                <div class="input-group-append">

                                                </div>
                                            </div>
                                            <div class="input-group mb-3">
                                                <input type="email" class="form-control" placeholder="Email"
                                                    name="email">
                                                <div class="input-group-append">

                                                </div>
                                            </div>
                                            <div class="input-group mb-3">
                                                <input type="password" class="form-control" placeholder="Password"
                                                    name="password">
                                                <div class="input-group-append">

                                                </div>
                                            </div>
                                            <div class="input-group mb-3">
                                                <input type="number" class="form-control" placeholder="Number"
                                                    name="mobile_number">
                                                <div class="input-group-append">

                                                </div>
                                            </div>
                                            <div class="row">
                                                <!-- Register button -->
                                                <div class="col-4">
                                                    <button type="submit" class="btn btn-light">Register</button>
                                                </div>

                                                <!-- Login button -->
                                                <div class="col-4">
                                                    <a href="{{ route('login') }}"
                                                        class="btn btn-light">Login</a>
                                                </div>
                                            </div>

                                        </form>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <!--end row-->
            </div>
        </div>
    </div>

    <div class="overlay toggle-icon"></div>
    <!--end overlay-->
    <!--Start Back To Top Button--> <a href="javaScript:;" class="back-to-top"><i class='bx bxs-up-arrow-alt'></i></a>
    <!--End Back To Top Button-->
    <footer class="page-footer">
        <p class="mb-0">Copyright © 2023. All right reserved.</p>
    </footer>
    <!-- Bootstrap JS -->
    <script src="{{ asset('assest/dashtream/js/bootstrap.bundle.min.js') }}"></script>
    <!--plugins-->
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
    <script>
        $(function() {
            $(".knob").knob();
        });
    </script>
    <script>
        function round_success_noti() {
            alert('User Created Successfully!'); // Or use SweetAlert/Toastr if preferred
        }
    </script>

    <script src="{{ asset('assest/dashtream/js/index.js') }}"></script>
    <!--app JS-->
    <script src="{{ asset('assest/dashtream/js/app.js') }}"></script>
</body>

</html>
