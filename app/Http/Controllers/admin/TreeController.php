<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\Education\Education;
use App\Models\Lead;
use App\Models\TreeInstallation;
use App\Models\User;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;


class TreeController extends Controller
{
    //


    public function index()
    {
        $educations = TreeInstallation::latest()->paginate(10); // Add pagination if needed
        return view('admin.treeinstallation.index', compact('educations'));
    }

    public function create()
    {

        return view('admin.treeinstallation.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'image' => 'required',
            'title' => 'required',
            'description' => 'required',
            'button_text' => 'nullable',
        ]);

        $path = $request->file('image')->store('treeinstallation', 'public');

        TreeInstallation::create([
            'image' => $path,
            'title' => $request->title,
            'description' => $request->description,
            'button_text' => $request->button_text,
        ]);

        return redirect()->route('tree-installation.index')->with('success', 'Tree Installation created successfully.');

    }
    public function edit(TreeInstallation $education)
    {
        return view('admin.treeinstallation.edit', compact('education'));
    }

    public function update(Request $request, TreeInstallation $education)
    {
        $request->validate([
            'title' => 'required',
            'description' => 'required',
            'button_text' => 'nullable',
            'image' => 'nullable|image|mimes:jpg,jpeg,png|max:2048',
        ]);

        if ($request->hasFile('image')) {
            $path = $request->file('image')->store('treeinstallation', 'public');
            $education->image = $path;
        }

        $education->update([
            'title' => $request->title,
            'description' => $request->description,
            'button_text' => $request->button_text,
            'image' => $education->image,
        ]);

        return redirect()->route('tree-installation.index')->with('success', 'Tree Installation updated successfully.');
    }

    public function destroy(TreeInstallation $education)
    {
        $education->delete();
        return redirect()->route('tree-installation.index')->with('success', 'Tree Installation deleted successfully.');
    }

}
