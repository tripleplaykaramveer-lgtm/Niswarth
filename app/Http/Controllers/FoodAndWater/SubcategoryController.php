<?php

namespace App\Http\Controllers\FoodAndWater;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\FoodWater;
use App\Models\FoodwaterSubcategory;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class SubcategoryController extends Controller
{
    // Show list of subcategories
    public function index()
    {
        $foodwaterSubcategories = FoodwaterSubcategory::latest()->paginate(10);
        return view('admin.foodwatersubcategory.index', compact('foodwaterSubcategories'));
    }
   public function getSubcategories($educationId)
    {
        $subcategories = FoodwaterSubcategory::where('food_water_id', $educationId)
            ->where('status', '1')->orderBy('short_order', 'asc')
            ->get(['id', 'title', 'name']);
        $stepTitle = $subcategories->first()->title ?? 'Select Subcategory';
        return response()->json([
            'stepTitle' => $stepTitle,
            'data' => $subcategories
        ]);
    }

    // Show form to create a new subcategory
   public function create()
    {
        $foodwater = FoodWater::pluck('title', 'id');
        return view('admin.foodwatersubcategory.create', compact('foodwater'));
    }


    // Store a new subcategory
    public function store(Request $request)
    {
        $validated = $request->validate([
            'food_water_id' => 'required|exists:food_waters,id',
            'title' => 'nullable|string|max:255',
            'short_order' => 'nullable|integer',
            'subcategories' => 'required|array',
            'subcategories.*' => 'required|string|max:255',
            'status' => 'required|in:0,1',
        ]);

        try {
            DB::transaction(function () use ($request) {
                foreach ($request->input('subcategories') as $subName) {
                    FoodwaterSubcategory::updateOrCreate(
                        [
                            'food_water_id' => $request->food_water_id,
                            'name' => trim($subName),
                        ],
                        [
                            'title' => $request->title,
                            'short_order' => $request->short_order,
                            'status' => $request->status,
                        ]
                    );
                }
            });

            return redirect()->route('foodwater.subcategories')->with('success', 'Subcategories saved successfully!');

        } catch (\Throwable $e) {
            Log::error('Save failed: '.$e->getMessage());
            return back()->withErrors(['error' => 'Save failed: ' . $e->getMessage()]);
        }
    }

    // Show edit form
    public function edit(FoodwaterSubcategory $subcategory)
    {
        $foodwater = FoodWater::where('status', 1)->pluck('title', 'id');
        return view('admin.foodwatersubcategory.edit', compact('subcategory', 'foodwater'));
    }

    // Update existing subcategory
    public function update(Request $request, FoodwaterSubcategory $subcategory)
    {
        $validated = $request->validate([
            'food_water_id' => 'required|exists:food_waters,id',
            'title' => 'nullable|string|max:255',
            'short_order' => 'nullable|integer',
            'name' => 'required|string|max:255',
            'status' => 'required|in:0,1',
        ]);

        try {
            $subcategory->update([
                'food_water_id' => $request->food_water_id,
                'title' => $request->title,
                'short_order' => $request->short_order,
                'name' => $request->name,
                'status' => $request->status,
            ]);

            return redirect()->route('foodwater.subcategories')->with('success', 'Subcategory updated successfully!');

        } catch (\Throwable $e) {
            Log::error('Update failed: '.$e->getMessage());
            return back()->withErrors(['error' => 'Update failed: ' . $e->getMessage()]);
        }
    }

    // Delete a subcategory
    public function destroy(FoodwaterSubcategory $subcategory)
    {
        try {
            $subcategory->delete();
            return redirect()->route('foodwater.subcategories')->with('success', 'Subcategory deleted successfully!');
        } catch (\Throwable $e) {
            Log::error('Delete failed: '.$e->getMessage());
            return back()->withErrors(['error' => 'Delete failed: ' . $e->getMessage()]);
        }
    }
}
