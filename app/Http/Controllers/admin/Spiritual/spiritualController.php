<?php

namespace App\Http\Controllers\admin\Spiritual;

use App\Http\Controllers\Controller;
use App\Models\Spiritual\Spiritual;
use App\Models\Lead;
use App\Helper\Helper;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;


class spiritualController extends Controller
{
    //


    public function index()
    {
        $educations = Spiritual::latest()->paginate(10); // Add pagination if needed
        return view('admin.spiritual.index', compact('educations'));
    }

    public function create()
    {

        return view('admin.spiritual.create');
    }

    
        public function store(Request $request): RedirectResponse
    {
        $validated = $request->validate([
          'image' => 'required',
            'title' => 'required',
            'description' => 'required',
            'button_text' => 'nullable',
            'short_order' => 'required|integer',
        ]);

        $data = [...$validated, 'image' => 'spiritual/image.png'];
        if ($request->file('image')) {
            $data['image'] = Helper::saveFile($request->file('image'), 'cms');
        }

        Spiritual::create($data);
        return to_route('spiritual.index')->withSuccess('Spiritual Added Successfully..!!');
    }
     public function edit(Spiritual $spiritual)
    {
        return view('admin.spiritual.edit', compact('spiritual'));
    }

    public function update(Request $request, Spiritual $spiritual)
{
    $validated = $request->validate([
        'title'       => 'required|string|max:255',
        'description' => 'required|string',
        'button_text' => 'nullable|string|max:255',
        'image'       => 'nullable|image|mimes:jpg,jpeg,png,webp|max:2048',
    ]);

    if ($request->hasFile('image')) {

        if ($spiritual->image) {
            Helper::deleteFile($spiritual->image);
        }

        $validated['image'] = Helper::saveFile(
            $request->file('image'),
            'spiritual'
        );
    }

    $spiritual->update($validated);

    return redirect()
        ->route('spiritual.index')
        ->with('success', 'Spiritual updated successfully.');
}


public function destroy(Spiritual $education)
    {
        $education->delete();
        return redirect()->route('spiritual.index')->with('success', 'Spiritual deleted successfully.');
    }

}
