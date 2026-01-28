@extends('frontend.layout.index')

@section('main_contant')

<style>
    .otp-wrapper {
        min-height: 70vh;
        display: flex;
        align-items: center;
        justify-content: center;
        background: #f4f6f8;
    }

    .otp-card {
        width: 100%;
        max-width: 420px;
        background: #ffffff;
        padding: 30px 25px;
        border-radius: 12px;
        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.08);
        text-align: center;
    }

    .otp-card h2 {
        font-size: 22px;
        font-weight: 600;
        margin-bottom: 8px;
        color: #222;
    }

    .otp-card p {
        font-size: 14px;
        color: #666;
        margin-bottom: 20px;
    }

    .otp-input {
        width: 100%;
        height: 55px;
        font-size: 22px;
        letter-spacing: 6px;
        text-align: center;
        border: 1px solid #ddd;
        border-radius: 8px;
        outline: none;
    }

    .otp-input:focus {
        border-color: #0d6efd;
        box-shadow: 0 0 0 0.15rem rgba(13,110,253,.25);
    }

    .otp-btn {
        width: 100%;
        height: 50px;
        background: #0d6efd;
        border: none;
        border-radius: 8px;
        color: #fff;
        font-size: 16px;
        font-weight: 500;
        margin-top: 20px;
        transition: 0.3s;
    }

    .otp-btn:hover {
        background: #0b5ed7;
    }

    .alert {
        font-size: 14px;
        padding: 10px;
        border-radius: 6px;
        margin-bottom: 15px;
    }

    .alert-success {
        background: #e6f4ea;
        color: #1e7e34;
    }

    .alert-danger {
        background: #f8d7da;
        color: #842029;
    }

    .otp-footer {
        margin-top: 15px;
        font-size: 13px;
        color: #777;
    }
</style>

<div class="otp-wrapper">
    <div class="otp-card">

        <h2>Email Verification</h2>
        <p>Please enter the 6-digit OTP sent to your email</p>

        {{-- Validation Errors --}}
        @if ($errors->any())
            <div class="alert alert-danger">
                @foreach ($errors->all() as $error)
                    <div>{{ $error }}</div>
                @endforeach
            </div>
        @endif

        {{-- Session Error --}}
        @if (session('error'))
            <div class="alert alert-danger">
                {{ session('error') }}
            </div>
        @endif

        {{-- Session Success --}}
        @if (session('success'))
            <div class="alert alert-success">
                {{ session('success') }}
            </div>
        @endif

        <form method="POST" action="{{ route('email.otp.verify') }}">
            @csrf

            <input type="hidden" name="user_id" value="{{ $user->id }}">

            <input
                type="number"
                name="otp"
                class="otp-input"
                placeholder="••••••"
                maxlength="6"
                required
                autofocus
            >

            <button type="submit" class="otp-btn">
                Verify OTP
            </button>
        </form>

        <div class="otp-footer">
            Didn’t receive OTP? Please check spam folder.
        </div>

    </div>
</div>

@endsection
