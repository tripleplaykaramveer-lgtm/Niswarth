@extends('frontend.layout.index')

@section('main_contant')
    <div class="container py-5">
        <div class="row justify-content-center">
            <div class="col-lg-7 col-md-9">
                <div class="card shadow-lg border-0 rounded-4">

                    <!-- Header -->
                    <div class="card-header bg-primary text-white text-center rounded-top-4">
                        <h4 class="mb-0">Donate Details</h4>
                        <small>Please fill your details to proceed</small>
                    </div>

                    <!-- Body -->
                    <div class="card-body p-4">
                        <form action="{{ route('user.donate.store') }}" method="POST">
                            @csrf
    <input type="hidden" name="item_id" id="item_id">

                            <!-- Full Name -->
                            <div class="mb-3">
                                <label class="form-label fw-semibold">Full Name</label>
                                <input type="text" name="full_name" class="form-control form-control-lg"
                                    placeholder="Enter your full name" required>
                            </div>

                            <!-- Email -->
                            <div class="mb-3">
                                <label class="form-label fw-semibold">Email Address</label>
                                <input type="email" name="email" class="form-control form-control-lg"
                                    placeholder="Enter your email" required>
                            </div>

                            <!-- Mobile -->
                            <div class="mb-3">
                                <label class="form-label fw-semibold">Mobile Number</label>
                                <input type="text" name="mobile" class="form-control form-control-lg"
                                    placeholder="Enter mobile number" required>
                            </div>

                            <!-- Address -->
                            <div class="mb-3">
                                <label class="form-label fw-semibold">Address</label>
                                <textarea name="address" rows="3" class="form-control" placeholder="Enter complete address" required></textarea>
                            </div>

                            <!-- City & State -->
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label class="form-label fw-semibold">City</label>
                                    <input type="text" name="city" class="form-control form-control-lg"
                                        placeholder="City" required>
                                </div>

                                <div class="col-md-6 mb-3">
                                    <label class="form-label fw-semibold">State</label>
                                    <input type="text" name="state" class="form-control form-control-lg"
                                        placeholder="State" required>
                                </div>
                            </div>
                            <!-- Submit -->
                            <div class="text-center mt-4">
                                <button type="submit" class="btn px-4 py-2 m-2 text-white fw-semibold"
                                    style="background:linear-gradient(90deg,#3B82F6,#10B981);border-radius:8px;">
                                    Proceed to Donate
                                </button>
                            </div>
                        </form>
                    </div>

                </div>
            </div>
        </div>
    </div>
@endsection
