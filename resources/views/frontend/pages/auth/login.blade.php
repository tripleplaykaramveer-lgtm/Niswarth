@extends('frontend.layout.index')

@section('main_contant')
    <div class="container mt-5 mb-5">
        <div class="card shadow-lg rounded-4">
            <div class="card-header bg-primary text-white text-center py-3">
                <h3 class="mb-0">Login</h3>
            </div>
            <div class="card-body p-4">

                @if (session('success'))
                    <div class="alert alert-success">{{ session('success') }}</div>
                @endif
                @if (session('error'))
                    <div class="alert alert-danger">{{ session('error') }}</div>
                @endif

                <form method="POST" action="{{ route('frontend.login.check') }}">
                    @csrf
                    <div class="mb-3">
                        <label>Email <span class="text-danger">*</span></label>
                        <input type="email" name="email" class="form-control rounded-3" required>
                    </div>
                    <div class="mb-3">
                        <label>Password <span class="text-danger">*</span></label>
                        <input type="password" name="password" class="form-control rounded-3" required>
                    </div>
                    <button type="submit" class="btn btn-primary w-100 rounded-3">Login</button>
                </form>
            </div>
        </div>
    </div>
@endsection
