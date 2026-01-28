<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\UserDonate;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    public function create($item_id)
    {
        return view('frontend.pages.userdonate', compact('item_id'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'item_id'   => 'required',
            'full_name' => 'required',
            'email'     => 'required',
            'mobile'    => 'required',
            'address'   => 'required',
            'city'      => 'required',
            'state'     => 'required',
        ]);

        UserDonate::create([
            'app_user_id' => auth()->id(),
            'item_id'     => $request->item_id,
            'full_name'   => $request->full_name,
            'email'       => $request->email,
            'mobile'      => $request->mobile,
            'address'     => $request->address,
            'city'        => $request->city,
            'state'       => $request->state,
        ]);

        return back()->with('success', 'Donation saved');
    }

}
