<!-- ================= TOP CONTACT BAR ================= -->
<div class="py-2" style="background-color:#292a2b;border-bottom:1px solid #444;">
    <div class="container">
        <div class="d-flex justify-content-end align-items-center flex-wrap gap-3 text-white">

            <div class="d-flex align-items-center gap-3 me-4">
                <a href="mailto:contact@niswarth.org" class="text-white text-decoration-none">
                    <i class="fas fa-envelope me-1"></i> contact@niswarth.org
                </a>
                <a href="tel:+1234567890" class="text-white text-decoration-none">
                    <i class="fas fa-phone me-1"></i> +1 (234) 567-890
                </a>
            </div>

            <div class="d-flex gap-3">
                <a href="#" class="text-white"><i class="fab fa-facebook-f"></i></a>
                <a href="#" class="text-white"><i class="fab fa-twitter"></i></a>
                <a href="#" class="text-white"><i class="fab fa-instagram"></i></a>
                <a href="#" class="text-white"><i class="fab fa-linkedin-in"></i></a>
            </div>

        </div>
    </div>
</div>

<!-- ================= NAVBAR ================= -->
<nav class="navbar navbar-expand-lg navbar-light bg-white sticky-top shadow-sm">
    <div class="container">

        <a class="navbar-brand fw-bold" href="{{ route('home') }}" style="font-size:2rem;">
            Niswarth
        </a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarMain">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarMain">

            <!-- CENTER MENU -->
            <ul class="navbar-nav mx-auto">
                <li class="nav-item px-3"><a class="nav-link active" href="#">Home</a></li>
                <li class="nav-item px-3"><a class="nav-link" href="#">Gallery</a></li>
                <li class="nav-item px-3"><a class="nav-link" href="#">About</a></li>
                <li class="nav-item px-3"><a class="nav-link" href="#">Contact</a></li>
                <li class="nav-item px-3"><a class="nav-link" href="#">Category</a></li>
                <li class="nav-item px-3"><a class="nav-link" href="#">FAQ</a></li>
            </ul>

            <ul class="navbar-nav align-items-center">

                <ul class="navbar-nav align-items-center">

                    @if (Auth::guard('appuser')->check())
                        <li class="nav-item dropdown ms-3">
                            <a class="nav-link dropdown-toggle fw-semibold d-flex align-items-center" href="#"
                                role="button" data-bs-toggle="dropdown">
                                <i class="fas fa-user-circle me-2 fs-5"></i>
                                {{ Auth::guard('appuser')->user()->email }}
                            </a>

                            <ul class="dropdown-menu dropdown-menu-end shadow">
                                <li>
                                    <a href="{{ route('appuser.dashboard') }}"
                                        class="dropdown-item text-danger fw-semibold">
                                      <i class="fas fa-tachometer-alt me-2"></i> Dashboard
                                    </a>
                                </li>
                                <li>
                                    <form method="POST" action="{{ route('app.logout') }}">
                                        @csrf
                                        <button type="submit" class="dropdown-item text-danger fw-semibold">
                                            <i class="fas fa-sign-out-alt me-2"></i> Logout
                                        </button>
                                    </form>
                                </li>
                            </ul>
                        </li>
                    @else
                        <li class="nav-item d-flex ms-3">
                            <a href="{{ route('app.login') }}" class="btn px-4 py-2 me-2 text-white fw-semibold"
                                style="background:linear-gradient(90deg,#3B82F6,#10B981);border-radius:8px;">
                                Login
                            </a>

                            <a href="{{ route('app.register') }}" class="btn px-4 py-2 text-white fw-semibold"
                                style="background:linear-gradient(90deg,#10B981,#3B82F6);border-radius:8px;">
                                Register
                            </a>
                        </li>
                    @endif

                </ul>


            </ul>

        </div>
    </div>
</nav>
