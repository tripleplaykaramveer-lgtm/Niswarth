<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\Education\Education;
use App\Models\FoodWater;
use App\Models\Lead;
use App\Models\Medicine;
use App\Models\User;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;


class FoodWaterController extends Controller
{
    //


    public function index()
    {
        $educations = FoodWater::latest()->paginate(10); // Add pagination if needed
        return view('admin.foodwater.index', compact('educations'));
    }

    public function create()
    {

        return view('admin.foodwater.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'image' => 'required',
            'title' => 'required',
            'description' => 'required',
            'button_text' => 'nullable',
            'short_order' => 'required',
        ]);

        $path = $request->file('image')->store('food-water', 'public');

        FoodWater::create([
            'image' => $path,
            'title' => $request->title,
            'description' => $request->description,
            'button_text' => $request->button_text,
            'short_order' => $request->short_order,
        ]);

        return redirect()->route('food-water.index')->with('success', 'Food & Water created successfully.');

    }
    public function edit(FoodWater $foodWater)
    {
        return view('admin.foodwater.edit', compact('foodWater'));
    }

    public function update(Request $request, FoodWater $foodWater)
    {
        $request->validate([
            'title' => 'required',
            'description' => 'required',
            'button_text' => 'nullable',
            'short_order' => 'nullable|integer',
            'image' => 'nullable|image|mimes:jpg,jpeg,png|max:2048',
        ]);

        // Handle image upload
        if ($request->hasFile('image')) {
            $path = $request->file('image')->store('foodwater', 'public');
            $foodWater->image = $path;
        }

        $foodWater->update([
            'title' => $request->title,
            'description' => $request->description,
            'button_text' => $request->button_text,
            'short_order' => $request->short_order,
            'image' => $foodWater->image,
        ]);

        return redirect()->route('food-water.index')
            ->with('success', 'Food & Water updated successfully.');
    }


    public function destroy(Medicine $education)
    {
        $education->delete();
        return redirect()->route('medicine.index')->with('success', 'Medicine deleted successfully.');
    }

}
