<?php

namespace App\Http\Controllers\admin\Clothes;

use App\Http\Controllers\Controller;
use App\Models\Clothes\Cloth;
use App\Models\Clothes\ClothSubcategory;
use App\Models\Clothes\ClothChaildernCategory;
use App\Models\Clothes\ClothMiniChaildernCategory;
use App\Helper\Helper; // Import your Helper class
use App\Models\User;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

class ClothesController extends Controller
{
    public function index()
    {
        $clothes = Cloth::latest()->paginate(10); // Add pagination if needed
        return view('admin.clothes.index', compact('clothes'));
    }

    public function create()
    {
        return view('admin.clothes.create');
    }

     public function store(Request $request)
    {
        $request->validate([
            'image' => 'required|image',
            'title' => 'required',
            'description' => 'required',
            'button_text' => 'nullable',
            'short_order' => 'required',
        ]);

        $imagePath = Helper::saveFile($request->file('image'), 'clothes');

        Cloth::create([
            'image' => $imagePath,
            'title' => $request->title,
            'description' => $request->description,
            'button_text' => $request->button_text,
            'short_order' => $request->short_order,
        ]);

        return redirect()->route('clothes.index')->with('success', 'Clothes created successfully.');
    }

    public function edit(Cloth $clothes)
    {
        return view('admin.clothes.edit', compact('clothes'));
    }


    public function update(Request $request, Cloth $clothes)
    {
        $request->validate([
            'title' => 'required',
            'description' => 'required',
            'button_text' => 'nullable',
            'short_order' => 'required',
            'image' => 'nullable|image|mimes:jpg,jpeg,png|max:2048',
        ]);

        $data = [
            'title' => $request->title,
            'description' => $request->description,
            'button_text' => $request->button_text,
            'short_order' => $request->short_order,
        ];

        if ($request->file('image')) {
            Helper::deleteFile($clothes->image);

            $data['image'] = Helper::saveFile($request->file('image'), 'clothes');
        }
        $clothes->update($data);

        return redirect()->route('clothes.index')->with('success', 'Clothes updated successfully.');
    }

    public function destroy(Cloth $clothes)
    {
        $cloth->delete();
        return redirect()->route('clothes.index')->with('success', 'Clothes deleted successfully.');
    }

    // frontend index page

    // Step 1: Subcategories
    public function getSubcategories($clothesId)
    {
        $subcategories = ClothSubcategory::where('cloth_id', $clothesId)
            ->where('status', '1')->orderBy('short_order', 'asc')
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
        $data = ClothChaildernCategory::where('cloth_subcategory_id', $subcategoryId)
            ->where('status', '1')->orderBy('short_order', 'asc')
            ->get(['id', 'name']);
        return response()->json($data);
    }

    // Step 3: Mini Children
    public function getMiniChildren($childId)
    {
        $data = ClothMiniChaildernCategory::where('cloth_chailderncategory_id', $childId)
            ->where('status', '1')->orderBy('short_order', 'asc')
            ->get(['id', 'name']);
        return response()->json($data);
    }


    public function getStepFlow($clothesId)
    {
        $steps = [];

        // Step 1: Subcategory
   $subcategories = ClothSubcategory::where('cloth_id', $clothesId)
    ->orderBy('short_order', 'asc')
    ->get();

        if ($subcategories > 0) {
            $steps[] = [
                "step" => count($steps) + 1,
                "title" => "Subcategory",
                "endpoint" => "/clothes-subcategories/ID"
            ];
        }

        // Step 2: Children Category
        $children = ClothChaildernCategory::whereHas('subcategory', function ($q) use ($clothesId) {
            $q->where('cloth_id', $clothesId);
        })->count();
        if ($children > 0) {
            $steps[] = [
                "step" => count($steps) + 1,
                "title" => "Children Category",
                "endpoint" => "/clothes-children/ID"
            ];
        }

        // Step 3: Mini Children
        $mini = ClothMiniChaildernCategory::whereHas('chaildrenCategory.subcategory', function ($q) use ($clothesId) {
            $q->where('cloth_id', $clothesId);
        })->count();
        if ($mini > 0) {
            $steps[] = [
                "step" => count($steps) + 1,
                "title" => "Mini Children",
                "endpoint" => "/clothes-minichildren/ID"
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
