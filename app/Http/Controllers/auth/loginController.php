<?php

namespace App\Http\Controllers\auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class loginController extends Controller
{
    //
    public function login_show()
    {
        return view('auth.login');

    }


    public function login(Request $request)
    {

        $this->validate($request, [
            'mobile_number' => 'required',
            'password' => 'required',
        ]);
        // dd($request);

        $credentials = $request->only('mobile_number', 'password');
        if (Auth::attempt($credentials)) {
            // dd(auth()->user());
            if (auth()->user()->role == 1) {
                return redirect()->intended('/admin/dashboard');
            } elseif (auth()->user()->role == 2) {
                return redirect()->intended('/vendor/dashboard');
            }
        }


        return redirect()->back()->withInput($request->only('mobile_number'))->withErrors(['mobile_number' => 'Invalid credentials']);
    }


    // public function logout()
    // {
    //     Auth::logout();
    //     return redirect('register'); 
    // }

    public function logout(Request $request)
    {
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();

        return redirect('/login');
    }



}


