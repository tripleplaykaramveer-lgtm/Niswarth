<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Appuser;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;

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
            'email'          => 'required',
            'password'       => 'required|min:6',
            'name'           => 'required',
            'phone'          => 'required',
            'address'        => 'required',
            'donation_type'  => 'required',
            'contact_method' => 'required',
        ]);

        Appuser::create([
            'email'          => $request->email,
            'password'       => Hash::make($request->password),
            'name'           => $request->name,
            'phone'          => $request->phone,
            'address'        => $request->address,
            'organization'   => $request->organization,
            'donation_type'  => $request->donation_type,
            'contact_method' => $request->contact_method,
            'role'           => 'Receiver',
        ]);

        return redirect()->route('app.login')->with('success', 'Account Created Successfully..!! Please login');
    }

    public function loginCheck(Request $request)
    {
        $request->validate([
            'email'    => 'required|email',
            'password' => 'required',
        ]);

        $user = Appuser::where('email', $request->email)->first();

        if ($user && Hash::check($request->password, $user->password)) {
            Session::put('appuser', $user);
            return redirect()->route('home')->with('success', 'Login Successful..!!');
        }

        return redirect()->back()->with('error', 'Invalid Email or Password');
    }

    public function logout()
    {
        Session::forget('appuser');
        return redirect()->route('home')->with('success', 'Logged out successfully..!!');
    }
}
