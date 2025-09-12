@extends('layouts.backend')

@section('content')
    <!--wrapper-->
    <div class="wrapper">


        <!--start page wrapper -->
        <div class="page-wrapper">
            <div class="page-content">

                <div class="card radius-10">
                    <div class="row row-cols-1 row-cols-md-2 row-cols-xl-4 row-group g-0">
                        <div class="col">
                            <div class="card-body">
                                <div class="d-flex align-items-center">
                                    <h5 class="mb-0"></h5> <!-- dynamic lead count -->
                                    <div class="ms-auto">
                                        <i class='bx bx-user fs-3 text-white'></i>
                                    </div>
                                </div>
                                <div class="progress my-3" style="height:4px;">
                                    <div class="progress-bar" role="progressbar" style="width: 55%" aria-valuenow="25"
                                        aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <div class="d-flex align-items-center text-white">
                                    <p class="mb-0">Total Leads</p>

                                </div>
                            </div>

                        </div>
                        <div class="col">
                            <div class="card-body">
                                <div class="d-flex align-items-center">
                                    <h5 class="mb-0"></h5>
                                    <div class="ms-auto">
                                        <i class='bx bx-group fs-3 text-white'></i>
                                    </div>
                                </div>
                                <div class="progress my-3" style="height:4px;">
                                    <div class="progress-bar" role="progressbar" style="width: 55%" aria-valuenow="25"
                                        aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <div class="d-flex align-items-center text-white">
                                    <p class="mb-0">Total Users</p>

                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card-body">
                                <div class="d-flex align-items-center">
                                    <h5 class="mb-0">6200</h5>
                                    <div class="ms-auto">
                                        <i class='bx bx-group fs-3 text-white'></i>
                                    </div>
                                </div>
                                <div class="progress my-3" style="height:4px;">
                                    <div class="progress-bar" role="progressbar" style="width: 55%" aria-valuenow="25"
                                        aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <div class="d-flex align-items-center text-white">
                                    <p class="mb-0">Visitors</p>
                                    <p class="mb-0 ms-auto">+5.2%<span><i class='bx bx-up-arrow-alt'></i></span></p>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card-body">
                                <div class="d-flex align-items-center">
                                    <h5 class="mb-0">5630</h5>
                                    <div class="ms-auto">
                                        <i class='bx bx-envelope fs-3 text-white'></i>
                                    </div>
                                </div>
                                <div class="progress my-3" style="height:4px;">
                                    <div class="progress-bar" role="progressbar" style="width: 55%" aria-valuenow="25"
                                        aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <div class="d-flex align-items-center text-white">
                                    <p class="mb-0">Messages</p>
                                    <p class="mb-0 ms-auto">+2.2%<span><i class='bx bx-up-arrow-alt'></i></span></p>
                                </div>
                            </div>
                        </div>
                    </div><!--end row-->
                </div>

                <div class="row">
               <div class="col-12 col-lg-8 col-xl-8 d-flex">
    <div class="card radius-10 w-100">
        <div class="card-body">
            <div class="d-flex align-items-center">
                <div>
                    <h5 class="mb-0">Weekly User Registrations</h5>
                </div>
                <div class="dropdown options ms-auto">
                    <div class="dropdown-toggle dropdown-toggle-nocaret" data-bs-toggle="dropdown">
                        <i class='bx bx-dots-horizontal-rounded'></i>
                    </div>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="javascript:;">Action</a></li>
                        <li><a class="dropdown-item" href="javascript:;">Another action</a></li>
                        <li><a class="dropdown-item" href="javascript:;">Something else here</a></li>
                    </ul>
                </div>
            </div>
            <div class="d-flex align-items-center ms-auto font-13 gap-2 my-3">
                <span class="border px-1 rounded cursor-pointer"><i class="bx bxs-circle me-1 text-white"></i>New Users</span>
            </div>
            <div class="chart-container-1">
                <canvas id="chart1"></canvas>
            </div>
        </div>
        <div class="row row-cols-1 row-cols-md-3 row-cols-xl-3 g-0 row-group text-center border-top">
            <div class="col">
                <div class="p-3">
                    <h5 class="mb-0"></h5>
                    <small class="mb-0">Total Users Registered This Week</small>
                </div>
            </div>
            <div class="col">
                <div class="p-3">
                    <h5 class="mb-0"></h5>
                    <small class="mb-0">Overall Users</small>
                </div>
            </div>
            <div class="col">
                <div class="p-3">
                    <h5 class="mb-0"></h5>
                    <small class="mb-0">Avg Users/Day</small>
                </div>
            </div>
        </div>
    </div>
</div>
                    <div class="col-12 col-lg-4 col-xl-4 d-flex">
                        <div class="card radius-10 overflow-hidden w-100">
                            <div class="card-body">
                                <div class="d-flex align-items-center mb-2">
                                    <div>
                                        <h5 class="mb-0">Weekly Leads</h5>
                                    </div>
                                    <div class="dropdown options ms-auto">
                                        <div class="dropdown-toggle dropdown-toggle-nocaret" data-bs-toggle="dropdown">
                                            <i class='bx bx-dots-horizontal-rounded'></i>
                                        </div>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="javascript:;">Action</a></li>
                                            <li><a class="dropdown-item" href="javascript:;">Another action</a></li>
                                            <li><a class="dropdown-item" href="javascript:;">Something else here</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="chart-js-container2">
                                    <div class="piechart-legend">
                                        <h3 class="mb-1"></h3>
                                        <h6 class="mb-0">Total leads this week</h6>
                                    </div>
                                    <canvas id="chart2"></canvas>
                                </div>
                            </div>
                            <!-- Optional: you can add a table or more info here -->
                        </div>
                    </div>

                </div><!--End Row-->

                
            </div>
        </div>
        <!--end page wrapper -->
        <!--start overlay-->
        <div class="overlay toggle-icon"></div>
        <!--end overlay-->
        <!--Start Back To Top Button--> <a href="javaScript:;" class="back-to-top"><i
                class='bx bxs-up-arrow-alt'></i></a>
        <!--End Back To Top Button-->
     
    </div>
    <!--end wrapper-->
@endsection
