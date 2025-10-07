<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\Spiritual;
use App\Models\Lead;
use App\Models\User;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;


class spiritualController extends Controller
{

    public function index()
    {
        $educations = Spiritual::latest()->paginate(10);
        return view('admin.spiritual.index', compact('educations'));
    }

    public function create()
    {

        return view('admin.spiritual.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'image' => 'required',
            'title' => 'required',
            'description' => 'required',
            'button_text' => 'nullable',
            'short_order' => 'required|integer',
        ]);

        $path = $request->file('image')->store('spiritual', 'public');

        Spiritual::create([
            'image' => $path,
            'title' => $request->title,
            'description' => $request->description,
            'button_text' => $request->button_text,
            'short_order' => $request->short_order,
        ]);

        return redirect()->route('spiritual.index')->with('success', 'Spiritual created successfully.');
    }
    public function edit(Spiritual $education)
    {
        return view('admin.spiritual.edit', compact('education'));
    }

    public function update(Request $request, Spiritual $education)
    {
        $request->validate([
            'title' => 'required',
            'description' => 'required',
            'button_text' => 'nullable',
            'image' => 'nullable|image|mimes:jpg,jpeg,png|max:2048',
        ]);

        if ($request->hasFile('image')) {
            $path = $request->file('image')->store('spiritual', 'public');
            $education->image = $path;
        }

        $education->update([
            'title' => $request->title,
            'description' => $request->description,
            'button_text' => $request->button_text,
            'image' => $education->image,
        ]);

        return redirect()->route('spiritual.index')->with('success', 'Spiritual updated successfully.');
    }

    public function destroy(Spiritual $education)
    {
        $education->delete();
        return redirect()->route('spiritual.index')->with('success', 'Spiritual deleted successfully.');
    }

}
