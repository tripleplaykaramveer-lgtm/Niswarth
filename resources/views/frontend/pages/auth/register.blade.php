@extends('frontend.layout.index')

@section('main_contant')
    <div class="container mt-5 mb-5">
        <div class="card shadow-lg rounded-4">
            <div class="card-header bg-primary text-white text-center py-3 rounded-top-4">
                <h3 class="mb-0">Create Your Account</h3>
            </div>
            <div class="card-body p-4">

                <!-- Step Wizard Navigation -->
                <div class="stepwizard mb-4 d-flex justify-content-between">
                    <div class="stepwizard-step text-center flex-fill">
                        <button type="button" class="btn btn-primary rounded-circle">1</button>
                        <p class="mt-2">Account</p>
                    </div>
                    <div class="stepwizard-step text-center flex-fill">
                        <button type="button" class="btn btn-light rounded-circle">2</button>
                        <p class="mt-2">Details</p>
                    </div>
                    <div class="stepwizard-step text-center flex-fill">
                        <button type="button" class="btn btn-light rounded-circle">3</button>
                        <p class="mt-2">Confirm</p>
                    </div>
                </div>
                @if (session('success'))
                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                        <i class="bi bi-check-circle"></i> {{ session('success') }}
                        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                    </div>
                @endif

                <!-- Multi Step Form -->
                <form id="regForm" method="POST" action="{{ route('frontend.register.store') }}">
                    @csrf

                    <!-- Step 1: Account -->
                    <div class="tab">
                        <div class="mb-3">
                            <label>Email <span class="text-danger">*</span></label>
                            <input type="email" class="form-control rounded-3" name="email" required>
                        </div>
                        <div class="mb-3">
                            <label>Password <span class="text-danger">*</span></label>
                            <input type="password" class="form-control rounded-3" name="password" required>
                        </div>
                    </div>

                    <!-- Step 2: Details -->
                    <div class="tab" style="display:none;">
                        <div class="mb-3">
                            <label>Full Name <span class="text-danger">*</span></label>
                            <input type="text" class="form-control rounded-3" name="name" required>
                        </div>
                        <div class="mb-3">
                            <label>Phone Number <span class="text-danger">*</span></label>
                            <input type="text" class="form-control rounded-3" name="phone" required>
                        </div>
                        <div class="mb-3">
                            <label>Address <span class="text-danger">*</span></label>
                            <textarea class="form-control rounded-3" name="address" rows="2" required></textarea>
                        </div>
                        <div class="mb-3">
                            <label>Organization (Optional)</label>
                            <input type="text" class="form-control rounded-3" name="organization">
                        </div>
                        <div class="mb-3">
                            <label>Donation Type <span class="text-danger">*</span></label>
                            <select class="form-control rounded-3" name="donation_type" required>
                                <option value="">-- Select Type --</option>
                                <option value="Money">Money</option>
                                <option value="Clothes">Clothes</option>
                                <option value="Food">Food</option>
                                <option value="Other">Other</option>
                            </select>
                        </div>
                        <div class="mb-3">
                            <label>Preferred Contact Method <span class="text-danger">*</span></label>
                            <select class="form-control rounded-3" name="contact_method" required>
                                <option value="">-- Select Method --</option>
                                <option value="Email">Email</option>
                                <option value="Phone">Phone</option>
                                <option value="WhatsApp">WhatsApp</option>
                            </select>
                        </div>
                    </div>

                    <!-- Step 3: Confirm -->
                    <div class="tab" style="display:none;">
                        <h5 class="mb-3">Review Your Details</h5>
                        <ul class="list-group">
                            <li class="list-group-item"><strong>Email:</strong> <span id="review_email">Not provided</span>
                            </li>
                            <li class="list-group-item"><strong>Name:</strong> <span id="review_name">Not provided</span>
                            </li>
                            <li class="list-group-item"><strong>Phone:</strong> <span id="review_phone">Not provided</span>
                            </li>
                            <li class="list-group-item"><strong>Address:</strong> <span id="review_address">Not
                                    provided</span></li>
                            <li class="list-group-item"><strong>Organization:</strong> <span
                                    id="review_organization">None</span></li>
                            <li class="list-group-item"><strong>Donation Type:</strong> <span id="review_donation">Not
                                    provided</span></li>
                            <li class="list-group-item"><strong>Contact Method:</strong> <span id="review_contact">Not
                                    provided</span></li>
                            <li class="list-group-item"><strong>Role:</strong> Receiver</li>
                        </ul>
                    </div>

                    <!-- Navigation Buttons -->
                    <div class="d-flex justify-content-between mt-4">
                        <button type="button" id="prevBtn" class="btn btn-secondary px-4"
                            onclick="nextPrev(-1)">Previous</button>
                        <button type="button" id="nextBtn" class="btn btn-primary px-4"
                            onclick="nextPrev(1)">Next</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Wizard Script -->
    <script>
        let currentTab = 0;
        showTab(currentTab);

        function showTab(n) {
            let x = document.getElementsByClassName("tab");
            x[n].style.display = "block";

            document.getElementById("prevBtn").style.display = (n == 0) ? "none" : "inline";

            if (n == (x.length - 1)) {
                document.getElementById("nextBtn").innerHTML = "Submit";
                fillReview();
            } else {
                document.getElementById("nextBtn").innerHTML = "Next";
            }

            updateSteps(n);
        }

        function nextPrev(n) {
            let x = document.getElementsByClassName("tab");
            if (n == 1 && !validateForm()) return false;

            x[currentTab].style.display = "none";
            currentTab += n;

            if (currentTab >= x.length) {
                document.getElementById("regForm").submit();
                return false;
            }
            showTab(currentTab);
        }

        function validateForm() {
            let x, y, i, valid = true;
            x = document.getElementsByClassName("tab");
            y = x[currentTab].getElementsByTagName("input");
            for (i = 0; i < y.length; i++) {
                if (y[i].hasAttribute("required") && y[i].value == "") {
                    y[i].classList.add("is-invalid");
                    valid = false;
                } else {
                    y[i].classList.remove("is-invalid");
                }
            }
            return valid;
        }

        function updateSteps(n) {
            let steps = document.querySelectorAll(".stepwizard-step button");
            steps.forEach((btn, index) => {
                btn.classList.remove("btn-primary", "btn-light");
                btn.classList.add(index <= n ? "btn-primary" : "btn-light");
            });
        }

        function fillReview() {
            document.getElementById("review_email").innerText = document.querySelector("[name='email']").value ||
                "Not provided";
            document.getElementById("review_name").innerText = document.querySelector("[name='name']").value ||
                "Not provided";
            document.getElementById("review_phone").innerText = document.querySelector("[name='phone']").value ||
                "Not provided";
            document.getElementById("review_address").innerText = document.querySelector("[name='address']").value ||
                "Not provided";
            document.getElementById("review_organization").innerText = document.querySelector("[name='organization']")
                .value || "None";
            document.getElementById("review_donation").innerText = document.querySelector("[name='donation_type']").value ||
                "Not provided";
            document.getElementById("review_contact").innerText = document.querySelector("[name='contact_method']").value ||
                "Not provided";
        }
    </script>
@endsection
