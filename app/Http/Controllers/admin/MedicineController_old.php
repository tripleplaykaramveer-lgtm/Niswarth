<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\Education\Education;
use App\Models\Lead;
use App\Models\Medicine;
use App\Models\User;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;


class MedicineController extends Controller
{
    //


    public function index()
    {
        $educations = Medicine::latest()->paginate(10); // Add pagination if needed
        return view('admin.medicine.index', compact('educations'));
    }

    public function create()
    {

        return view('admin.medicine.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'image' => 'required',
            'title' => 'required',
            'description' => 'required',
            'button_text' => 'nullable',
        ]);

        $path = $request->file('image')->store('medicine', 'public');

        Medicine::create([
            'image' => $path,
            'title' => $request->title,
            'description' => $request->description,
            'button_text' => $request->button_text,
        ]);

        return redirect()->route('medicine.index')->with('success', 'Medicine created successfully.');

    }
  public function edit(Medicine $education)
{
    return view('admin.medicine.edit', compact('education'));
}

public function update(Request $request, Medicine $education)
{
    $request->validate([
        'title' => 'required',
        'description' => 'required',
        'button_text' => 'nullable',
        'image' => 'nullable|image|mimes:jpg,jpeg,png|max:2048',
    ]);

    if ($request->hasFile('image')) {
        $path = $request->file('image')->store('medicine', 'public');
        $education->image = $path;
    }

    $education->update([
        'title' => $request->title,
        'description' => $request->description,
        'button_text' => $request->button_text,
        'image' => $education->image,
    ]);

    return redirect()->route('medicine.index')->with('success', 'Medicine updated successfully.');
}

    public function destroy(Medicine $education)
    {
        $education->delete();
        return redirect()->route('medicine.index')->with('success', 'Medicine deleted successfully.');
    }

}
