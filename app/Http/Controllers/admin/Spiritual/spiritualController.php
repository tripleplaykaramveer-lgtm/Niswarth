<?php

namespace App\Http\Controllers\admin\Spiritual;

use App\Http\Controllers\Controller;
use App\Models\Spiritual\Spiritual;
use App\Models\Spiritual\SpiritualSubcategory;
use App\Models\Spiritual\SpiritualChaildernCategory;
use App\Models\Spiritual\SpiritualMiniChaildernCategory;
use App\Helper\Helper;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

class SpiritualController extends Controller
{
    public function index()
    {
        $spirituals = Spiritual::latest()->paginate(10);
        return view('admin.spiritual.index', compact('spirituals'));
    }

    public function create()
    {

        return view('admin.spiritual.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'image' => 'required|image',
            'title' => 'required',
            'description' => 'required',
            'button_text' => 'nullable',
        ]);

        $imagePath = Helper::saveFile($request->file('image'), 'spiritual');

        Spiritual::create([
            'image' => $imagePath,
            'title' => $request->title,
            'description' => $request->description,
            'button_text' => $request->button_text,
        ]);

        return redirect()->route('spiritual.index')->with('success', 'Spiritual created successfully.');
    }

    public function update(Request $request, Spiritual $spiritual)
    {
        $request->validate([
            'title' => 'required',
            'description' => 'required',
            'button_text' => 'nullable',
            'image' => 'nullable|image|mimes:jpg,jpeg,png|max:2048',
        ]);

        // Prepare data for update
        $data = [
            'title' => $request->title,
            'description' => $request->description,
            'button_text' => $request->button_text,
        ];

        // Handle image upload if provided
        if ($request->file('image')) {
            // Delete old image if exists
            Helper::deleteFile($spiritual->image);

            // Save new image using your helper function
            $data['image'] = Helper::saveFile($request->file('image'), 'spiritual');
        }

        // Update the spiritual record
        $spiritual->update($data);

        return redirect()->route('spiritual.index')->with('success', 'Spiritual updated successfully.');
    }

    public function edit(Spiritual $spiritual)
    {
        return view('admin.spiritual.edit', compact('spiritual'));
    }


    public function destroy(Spiritual $spiritual)
    {
        $education->delete();
        return redirect()->route('education.index')->with('success', 'Spiritual deleted successfully.');
    }

    // frontend index page

    // Step 1: Subcategories
    public function getSubcategories($spiritualId)
    {
        $subcategories = SpiritualSubcategory::where('spiritual_id', $spiritualId)
            ->where('status', '1')->orderBy('id', 'desc')
            ->get(['id', 'title', 'name']);
        $stepTitle = $subcategories->first()->title ?? 'Select Subcategory';
        return response()->json([
            'stepTitle' => $stepTitle,
            'data' => $subcategories
        ]);
    }

    // Step 2: Children
    public function getChildren($subcategoryId)
    {
        $data = SpiritualChaildernCategory::where('spiritual_subcategory_id', $subcategoryId)
            ->where('status', '1')->orderBy('id', 'desc')
            ->get(['id', 'name']);
        return response()->json($data);
    }

    // Step 3: Mini Children
    public function getMiniChildren($childId)
    {
        $data = SpiritualMiniChaildernCategory::where('spiritual_chaildrencategory_id', $childId)
            ->where('status', '1')->orderBy('id', 'desc')
            ->get(['id', 'name']);
        return response()->json($data);
    }


    public function getStepFlow($spiritualId)
    {
        $steps = [];

        // Step 1: Subcategory
        $subcategories = SpiritualSubcategory::where('spiritual_id', $spiritualId)->count();
        if ($subcategories > 0) {
            $steps[] = [
                "step" => count($steps) + 1,
                "title" => "Subcategory",
                "endpoint" => "/spiritual-subcategories/ID"
            ];
        }

        // Step 2: Children Category
        $children = SpiritualChaildernCategory::whereHas('subcategory', function ($q) use ($spiritualId) {
            $q->where('spiritual_id', $spiritualId);
        })->count();
        if ($children > 0) {
            $steps[] = [
                "step" => count($steps) + 1,
                "title" => "Children Category",
                "endpoint" => "/spiritual-children/ID"
            ];
        }

        // Step 3: Mini Children
        $mini = SpiritualMiniChaildernCategory::whereHas('chaildrenCategory.subcategory', function ($q) use ($spiritualId) {
            $q->where('spiritual_id', $spiritualId);
        })->count();
        if ($mini > 0) {
            $steps[] = [
                "step" => count($steps) + 1,
                "title" => "Mini Children",
                "endpoint" => "/spiritual-minichildren/ID"
            ];
        }

        // Last Step: Donate (Always)
        $steps[] = [
            "step" => count($steps) + 1,
            "title" => "Donate",
            "endpoint" => ""
        ];

        return response()->json($steps);
    }

}
