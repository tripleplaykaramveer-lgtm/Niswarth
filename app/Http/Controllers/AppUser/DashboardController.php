<?php

namespace App\Http\Controllers\AppUser;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class DashboardController extends Controller
{
    public function index()
    {
        // appuser guard se logged-in user
        $user = Auth::guard('appuser')->user();

        return view('frontend.appuser.dashboard', compact('user'));
    }
}
