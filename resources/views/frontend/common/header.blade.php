<div class="top-contact-bar py-2" style="background-color: #292a2b; border-bottom: 1px solid #444;">
    <div class="container">
        <div class="d-flex justify-content-end align-items-center flex-wrap gap-3 text-white">

            <!-- Contact Info -->
            <div class="d-flex align-items-center flex-wrap gap-3 me-4">
                <a href="mailto:contact@niswarth.org" class="text-decoration-none text-white">
                    <i class="fas fa-envelope me-1"></i> contact@niswarth.org
                </a>
                <a href="tel:+1234567890" class="text-decoration-none text-white">
                    <i class="fas fa-phone-alt me-1"></i> +1 (234) 567-890
                </a>
            </div>

            <!-- Social Media -->
            <div class="d-flex align-items-center gap-3">
                <a href="https://facebook.com" target="_blank" class="text-white">
                    <i class="fab fa-facebook-f"></i>
                </a>
                <a href="https://twitter.com" target="_blank" class="text-white">
                    <i class="fab fa-twitter"></i>
                </a>
                <a href="https://instagram.com" target="_blank" class="text-white">
                    <i class="fab fa-instagram"></i>
                </a>
                <a href="https://linkedin.com" target="_blank" class="text-white">
                    <i class="fab fa-linkedin-in"></i>
                </a>
            </div>
        </div>
    </div>
</div>
<nav class="navbar navbar-expand-lg navbar-light bg-white sticky-top shadow-sm  py-2"
    style="box-shadow: 0 2px 15px rgba(0,0,0,0.1)!important;">
    <div class="container">

        <a class="navbar-brand d-flex align-items-center" href="{{ route('home') }}" style="font-size: 2rem;">
            Niswarth
        </a>

        <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#navbar4">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbar4">
            <ul class="navbar-nav mx-auto text-center">
                <li class="nav-item px-3"><a class="nav-link active fw-medium" href="index.html"
                        style="color: #3B82F6;">Home</a></li>
                <li class="nav-item px-3"><a class="nav-link fw-medium" href="#gallery">Gallery</a></li>
                <li class="nav-item px-3"><a class="nav-link fw-medium" href="#">About</a></li>
                <li class="nav-item px-3"><a class="nav-link fw-medium" href="#">Contact</a></li>
                <li class="nav-item px-3"><a class="nav-link fw-medium" href="#">Category</a></li>
                <li class="nav-item px-3"><a class="nav-link fw-medium" href="#">FAQ</a></li>
            </ul>
            <ul class="navbar-nav align-items-center">
                <li class="nav-item ms-3 d-flex">
                    <a href="{{ route('app.login') }}" class="btn btn-primary px-4 py-2 d-flex align-items-center m-3"
                        style="
                        background: linear-gradient(90deg, #3B82F6, #10B981);
                        color: #fff;
                        font-size: 1rem;
                        font-weight: 600;
                        border: none;
                        border-radius: 8px;
                        box-shadow: 0 4px 15px rgba(255, 75, 43, 0.3);
                        transition: all 0.3s ease;
                    ">
                        Login
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                            class="bi bi-arrow-right ms-2" viewBox="0 0 16 16">
                            <path fill-rule="evenodd"
                                d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z" />
                        </svg>
                    </a>
                    <a href="{{ route('app.register') }}"
                        class="btn btn-primary px-4 py-2 d-flex align-items-center m-3"
                        style="
                            background: linear-gradient(90deg, #3B82F6, #10B981);
                            color: #fff;
                            font-size: 1rem;
                            font-weight: 600;
                            border: none;
                            border-radius: 8px;
                            box-shadow: 0 4px 15px rgba(255, 75, 43, 0.3);
                            transition: all 0.3s ease;
                        ">
                        Register
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                            class="bi bi-arrow-right ms-2" viewBox="0 0 16 16">
                            <path fill-rule="evenodd"
                                d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z" />
                        </svg>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl modal-dialog-centered">
        <div class="modal-content">
            <div class="row g-0">
                <!-- Left Side (Image + Info) -->
                <div class="col-md-5 modal-left">
                    <img src="https://images.unsplash.com/photo-1593113598332-cd288d649433?ixlib=rb-4.0.3&auto=format&fit=crop&w=1350&q=80"
                        alt="Donation">
                    <div class="overlay"></div>
                    <div class="content">
                        <h4 class="fw-bold mb-3">Welcome to Niswarth</h4>
                        <p>Join our community to donate or receive items with kindness. Every small act makes a big
                            difference!</p>
                        <div class="stats">
                            <p><i class="fas fa-heart"></i> 10,000+ items donated</p>
                            <p><i class="fas fa-users"></i> 500+ families helped</p>
                        </div>
                    </div>
                </div>

                <!-- Right Side (Form) -->
                <div class="col-md-7 modal-right">
                    <div class="text-center mb-4">
                        <h4 class="fw-bold" id="modalTitle">Login</h4>
                        <p class="text-muted">Access your account or create a new one</p>
                    </div>

                    <!-- Role Tabs -->
                    <div class="btn-group mb-4 w-100" role="group">
                        <button type="button" class="btn btn-outline-secondary active" id="tabDonor">Donor</button>
                        <button type="button" class="btn btn-outline-secondary" id="tabReceiver">Receiver</button>
                    </div>

                    <!-- Login Form -->
                    <div id="loginForm">
                        <div class="mb-3">
                            <label for="emailInput" class="form-label">Email</label>
                            <input type="email" class="form-control" id="emailInput"
                                placeholder="Enter your email" required>
                        </div>
                        <div class="mb-3">
                            <label for="passwordInput" class="form-label">Password</label>
                            <input type="password" class="form-control" id="passwordInput"
                                placeholder="Enter your password" required>
                        </div>
                        <button class="btn btn-success w-100 mb-3" id="loginBtn">Login</button>
                        <button class="btn btn-outline-primary w-100" id="showRegisterBtn">Create Account</button>
                    </div>

                    <!-- Registration Form Steps -->
                    <div id="registerForm" style="display: none;">
                        <!-- Step Indicators -->
                        <div class="d-flex justify-content-between mb-4">
                            <div class="step active" id="step1Indicator">1. Account</div>
                            <div class="step" id="step2Indicator">2. Details</div>
                            <div class="step" id="step3Indicator">3. Confirm</div>
                        </div>

                        <!-- Step 1: Account -->
                        <div id="step1" class="step-content active">
                            <div class="mb-3">
                                <label for="regEmail" class="form-label">Email</label>
                                <input type="email" class="form-control" id="regEmail"
                                    placeholder="Enter your email" required>
                            </div>
                            <div class="mb-3">
                                <label for="regPassword" class="form-label">Password</label>
                                <input type="password" class="form-control" id="regPassword"
                                    placeholder="Create a password" required>
                            </div>
                            <button class="btn btn-primary w-100" onclick="goToStep(2)">Next</button>
                        </div>

                        <!-- Step 2: Details -->
                        <div id="step2" class="step-content">
                            <div class="mb-3">
                                <label for="fullName" class="form-label">Full Name</label>
                                <input type="text" class="form-control" id="fullName"
                                    placeholder="Enter your full name" required>
                            </div>
                            <div class="mb-3">
                                <label for="phoneNumber" class="form-label">Phone Number</label>
                                <input type="tel" class="form-control" id="phoneNumber"
                                    placeholder="Enter your phone number" required>
                            </div>
                            <div class="mb-3">
                                <label for="address" class="form-label">Address</label>
                                <input type="text" class="form-control" id="address"
                                    placeholder="Enter your address" required>
                            </div>
                            <div class="mb-3">
                                <label for="organization" class="form-label">Organization (Optional)</label>
                                <input type="text" class="form-control" id="organization"
                                    placeholder="Enter your organization name">
                            </div>
                            <div class="mb-3">
                                <label for="donationType" class="form-label">Donation Type</label>
                                <select class="form-control" id="donationType" required>
                                    <option value="" disabled selected>Select donation type</option>
                                    <option value="clothes">Clothes</option>
                                    <option value="food">Food</option>
                                    <option value="books">Books</option>
                                    <option value="electronics">Electronics</option>
                                    <option value="other">Other</option>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label for="contactMethod" class="form-label">Preferred Contact Method</label>
                                <select class="form-control" id="contactMethod" required>
                                    <option value="" disabled selected>Select contact method</option>
                                    <option value="email">Email</option>
                                    <option value="phone">Phone</option>
                                    <option value="both">Both</option>
                                </select>
                            </div>
                            <div class="d-flex justify-content-between">
                                <button class="btn btn-outline-secondary w-100 me-2"
                                    onclick="goToStep(1)">Back</button>
                                <button class="btn btn-primary w-100" onclick="goToStep(3)">Next</button>
                            </div>
                        </div>

                        <!-- Step 3: Confirm -->
                        <div id="step3" class="step-content">
                            <p class="text-start mb-3 fw-bold">Review Your Details</p>
                            <ul class="list-group text-start mb-4">
                                <li class="list-group-item">Email: <span id="reviewEmail"></span></li>
                                <li class="list-group-item">Name: <span id="reviewName"></span></li>
                                <li class="list-group-item">Phone: <span id="reviewPhone"></span></li>
                                <li class="list-group-item">Address: <span id="reviewAddress"></span></li>
                                <li class="list-group-item">Organization: <span id="reviewOrganization"></span></li>
                                <li class="list-group-item">Donation Type: <span id="reviewDonationType"></span></li>
                                <li class="list-group-item">Contact Method: <span id="reviewContactMethod"></span>
                                </li>
                                <li class="list-group-item">Role: <span id="reviewRole"></span></li>
                            </ul>
                            <div class="d-flex justify-content-between">
                                <button class="btn btn-outline-secondary w-100 me-2"
                                    onclick="goToStep(2)">Back</button>
                                <button class="btn btn-success w-100" id="registerBtn">Create Account</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
