<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>


    <link rel="icon" href="{{ asset('/assest/dashtream/images/favicon-32x32.png') }}" type="image/png" />

    <!-- Plugins -->
    <link href="{{ asset('/assest/dashtream/plugins/vectormap/jquery-jvectormap-2.0.2.css') }}" rel="stylesheet" />
    <link href="{{ asset('/assest/dashtream/plugins/simplebar/css/simplebar.css') }}" rel="stylesheet" />
    <link href="{{ asset('/assest/dashtream/plugins/perfect-scrollbar/css/perfect-scrollbar.css') }}" rel="stylesheet" />
    <link href="{{ asset('/assest/dashtream/plugins/metismenu/css/metisMenu.min.css') }}" rel="stylesheet" />

   

    <!-- Bootstrap CSS -->
    <link href="{{ asset('/assest/dashtream/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('/assest/dashtream/css/bootstrap-extended.css') }}" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&amp;display=swap" rel="stylesheet">
    <link href="{{ asset('/assest/dashtream/css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('/assest/dashtream/css/icons.css') }}" rel="stylesheet">
</head>

<body class="bg-theme bg-theme9">
    <!--wrapper-->
    <div class="wrapper">
        <div class="section-authentication-cover">
            <div class="">
                <div class="row g-0">

                    <div
                        class="col-12 col-xl-7 col-xxl-8 auth-cover-left align-items-center justify-content-center d-none d-xl-flex">

                        <div class="card shadow-none bg-transparent shadow-none rounded-0 mb-0">
                            <div class="card-body">
                                <img src="{{ asset('/assest/dashtream/images/login-images/login-cover.svg') }}"
                                    class="img-fluid auth-img-cover-login" width="650" alt="" />
                            </div>
                        </div>

                    </div>

                    <div
                        class="col-12 col-xl-5 col-xxl-4 auth-cover-right bg-light align-items-center justify-content-center">
                        <div class="card rounded-0 m-3 shadow-none bg-transparent mb-0">
                            <div class="card-body p-sm-5">
                                <div class="">
                                    <div class="mb-3 text-center">
                                        <img src="{{ asset('/assest/dashtream/images/logo-icon.png')}}" width="60" alt="" />
                                    </div>
                                    <div class="text-center mb-4">
                                        <h5 class="">Crm Dashboard </h5>
                                        <p class="mb-0">Please log in to your account</p>
                                    </div>
                                    <div class="form-body">
                                        <form class="row g-3" action="{{ route('user.login') }}" method="POST">
                                            @csrf
                                            <div class="col-12">
                                                <label for="" class="form-label">Mobile Number</label>
                                                <input type="tel" class="form-control" placeholder="Mobile Number" name="mobile_number" required>
                                            </div>
                                            <div class="col-12">
                                                <label for="inputChoosePassword" class="form-label">Password</label>
                                                <div class="input-group" id="show_hide_password">
                                                    <input type="password" class="form-control border-end-0"
                                                        id="inputChoosePassword" placeholder="Enter Password"
                                                        name="password" required>
                                                </div>
                                            </div>

                                            <div class="col-12">
                                                <div class="d-grid">
                                                    <button type="submit" class="btn btn-light">Sign in</button>
                                                </div>
                                            </div>

                                            <div class="col-12">
                                                <div class="text-center">
                                                    <p class="mb-0">Don't have an account yet? 
                                                        <a href="{{ route('register') }}">Sign up here</a>
                                                    </p>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="login-separater text-center mb-5"> <span>OR SIGN IN WITH</span>
                                        <hr>
                                    </div>
                                    <div class="list-inline contacts-social text-center">
                                        <a href="javascript:;"
                                            class="list-inline-item bg-light text-white border-0 rounded-3"><i
                                                class="bx bxl-facebook"></i></a>
                                        <a href="javascript:;"
                                            class="list-inline-item bg-light text-white border-0 rounded-3"><i
                                                class="bx bxl-twitter"></i></a>
                                        <a href="javascript:;"
                                            class="list-inline-item bg-light text-white border-0 rounded-3"><i
                                                class="bx bxl-google"></i></a>
                                        <a href="javascript:;"
                                            class="list-inline-item bg-light text-white border-0 rounded-3"><i
                                                class="bx bxl-linkedin"></i></a>
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
    <!--end wrapper-->

    <div class="overlay toggle-icon"></div>
    <!--end overlay-->
    <!--Start Back To Top Button--> <a href="javaScript:;" class="back-to-top"><i class='bx bxs-up-arrow-alt'></i></a>
    <!--End Back To Top Button-->
    <footer class="page-footer">
        <p class="mb-0">Copyright © 2025. All right reserved.</p>
    </footer>
    <!-- Bootstrap JS -->
    <script src="{{ asset('/assest/dashtream/js/bootstrap.bundle.min.js') }}"></script>
    <!--plugins-->
    <script src="{{ asset('/assest/dashtream/js/jquery.min.js') }}"></script>
    <script src="{{ asset('/assest/dashtream/plugins/simplebar/js/simplebar.min.js') }}"></script>
    <script src="{{ asset('/assest/dashtream/plugins/metismenu/js/metisMenu.min.js') }}"></script>
    <script src="{{ asset('/assest/dashtream/plugins/perfect-scrollbar/js/perfect-scrollbar.js') }}"></script>
    <script src="{{ asset('/assest/dashtream/plugins/chartjs/chart.min.js') }}"></script>
    <script src="{{ asset('/assest/dashtream/plugins/vectormap/jquery-jvectormap-2.0.2.min.js') }}"></script>
    <script src="{{ asset('/assest/dashtream/plugins/vectormap/jquery-jvectormap-world-mill-en.js') }}"></script>
    <script src="{{ asset('/assest/dashtream/plugins/jquery.easy-pie-chart/jquery.easypiechart.min.js') }}"></script>
    <script src="{{ asset('/assest/dashtream/plugins/sparkline-charts/jquery.sparkline.min.js') }}"></script>
    <script src="{{ asset('/assest/dashtream/plugins/jquery-knob/excanvas.js') }}"></script>
    <script src="{{ asset('/assest/dashtream/plugins/jquery-knob/jquery.knob.js') }}"></script>
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

    <script src="{{ asset('/assest/dashtream/js/index.js') }}"></script>
    <!--app JS-->
    <script src="{{ asset('/assest/dashtream/js/app.js') }}"></script>
</body>

</html>
