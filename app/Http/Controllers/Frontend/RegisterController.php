<?php

namespace App\Http\Controllers\Frontend;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Appuser;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use App\Mail\EmailOtpMail;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Log;

class RegisterController extends Controller
{
    public function register()
    {
        return view('frontend.pages.auth.register');
    }

    public function login()
    {
        return view('frontend.pages.auth.login');
    }

  public function store(Request $request)
{
    $request->validate([
        'email'          => 'required|email|unique:appusers,email',
        'password'       => 'required|min:6',
        'name'           => 'required',
        'phone'          => 'required',
        'address'        => 'required',
        'donation_type'  => 'required',
        'contact_method' => 'required',
    ]);

    $otp = rand(100000, 999999);

    $user = Appuser::create([
        'email'          => $request->email,
        'password'       => Hash::make($request->password),
        'name'           => $request->name,
        'phone'          => $request->phone,
        'address'        => $request->address,
        'organization'   => $request->organization,
        'donation_type'  => $request->donation_type,
        'contact_method' => $request->contact_method,
        'role'           => 'Receiver',
        'email_otp'      => $otp,
    ]);

    Mail::to($user->email)->send(new EmailOtpMail($otp));

    return redirect()->route('email.otp.form', $user->id)
        ->with('success', 'OTP sent to your email');
}

public function showOtpForm($id)
{
    $user = Appuser::findOrFail($id);
    return view('frontend.pages.auth.email_otp', compact('user'));
}
public function verifyOtp(Request $request)
{
    $request->validate([
        'user_id' => 'required|exists:appusers,id',
        'otp'     => 'required|digits:6',
    ]);

    $user = Appuser::findOrFail($request->user_id);

    Log::info('OTP CHECK', [
        'db_otp' => $user->email_otp,
        'input_otp' => $request->otp,
    ]);

    if ((string) $user->email_otp === (string) $request->otp) {

        $user->update([
            'email_verified_at' => now(),
            'email_otp' => null,
        ]);

        return redirect()->route('app.login')
            ->with('success', 'Email verified successfully. Please login.');
    }

    return back()->with('error', 'Invalid OTP');
}


public function loginCheck(Request $request)
{
    $request->validate([
        'email'    => 'required|email',
        'password' => 'required',
    ]);

    if (Auth::guard('appuser')->attempt([
        'email' => $request->email,
        'password' => $request->password,
    ])) {
        return redirect()->route('home')->with('success', 'Login Successful..!!');
    }

    return redirect()->back()->with('error', 'Invalid Email or Password');
}


  public function logout()
{
    Auth::guard('appuser')->logout();
    return redirect()->route('home')->with('success', 'Logged out successfully');
}

}
