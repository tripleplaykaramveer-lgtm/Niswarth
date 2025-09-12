<?php

namespace App\Http\Controllers\auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;


class RegisterController extends Controller
{
    //
    public function register_show()
    {
        return view('auth.register');
    }



    public function createuser(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'email' => 'required',
            'password' => 'required|string|min:8',
            'mobile_number' => 'required',
        ]);

        if ($validator->fails()) {
            return redirect()->back()
                ->withErrors($validator)
                ->withInput();
        }

        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'mobile_number' => $request->mobile_number,
        ]);

        if ($user) {
            return redirect()->back()->with('success', 'User created successfully! Redirecting to login...');
        } else {
            return redirect()->back()->with('error', 'User registration failed!');
        }

    }







}
