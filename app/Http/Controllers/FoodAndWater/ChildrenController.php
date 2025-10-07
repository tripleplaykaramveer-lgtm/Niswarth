<?php

namespace App\Http\Controllers\FoodAndWater;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Foodwatechildcategrory;
use App\Models\FoodwaterSubcategory;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class ChildrenController extends Controller
{
    // List all child categories
    public function index()
    {
        $children = Foodwatechildcategrory::latest()->paginate(10);
        return view('admin.foodwaterchildren.index', compact('children'));
    }

    // Show create form
    public function add()
    {
        $foodwaterchild = FoodwaterSubcategory::pluck('name', 'id');
        return view('admin.foodwaterchildren.create', compact('foodwaterchild'));
    }

    // Store new child categories
    public function store(Request $request)
    {
        Log::info('Store function started', ['request_data' => $request->all()]);

        $validated = $request->validate([
            'food_water_subcategory_id' => 'required',
            'title' => 'nullable|string|max:255',
            'short_order' => 'nullable|integer',
            'subcategories' => 'required|array',
            'subcategories.*' => 'required|string|max:255',
            'status' => 'required|in:0,1',
        ]);

        Log::info('Validation passed', ['validated_data' => $validated]);

        try {
            DB::transaction(function () use ($request) {
                foreach ($request->input('subcategories') as $childName) {
                    $childName = trim($childName);
                    Log::info('Processing child', ['name' => $childName]);

                    Foodwatechildcategrory::updateOrCreate(
                        [
                            'food_water_subcategory_id' => $request->food_water_subcategory_id,
                            'name' => $childName,
                        ],
                        [
                            'title' => $request->title,
                            'short_order' => $request->short_order,
                            'status' => $request->status,
                        ]
                    );
                }
            });

            Log::info('Transaction committed successfully');
            return redirect()->route('foodwater.children')->with('success', 'Child categories saved successfully!');
        } catch (\Throwable $e) {
            Log::error('Save failed', ['error' => $e->getMessage(), 'request' => $request->all()]);
            return back()->withErrors(['error' => 'Save failed: ' . $e->getMessage()]);
        }
    }

    // Show edit form
    public function edit($id)
    {
        $child = Foodwatechildcategrory::findOrFail($id);
        $foodwaterchild = FoodwaterSubcategory::pluck('name', 'id');

        return view('admin.foodwaterchildren.edit', compact('child', 'foodwaterchild'));
    }

    // Update existing child category
    public function update(Request $request, $id)
    {
        $child = Foodwatechildcategrory::findOrFail($id);

        $validated = $request->validate([
            'food_water_subcategory_id' => 'required|exists:foodwater_subcategories,id',
            'title' => 'nullable|string|max:255',
            'short_order' => 'nullable|integer',
            'name' => 'required|string|max:255',
            'status' => 'required|in:0,1',
        ]);

        Log::info('Updating child category', ['id' => $id, 'request' => $request->all()]);

        try {
            $child->update([
                'food_water_subcategory_id' => $request->food_water_subcategory_id,
                'title' => $request->title,
                'short_order' => $request->short_order,
                'name' => $request->name,
                'status' => $request->status,
            ]);

            Log::info('Child category updated successfully', ['child' => $child->toArray()]);

            return redirect()->route('foodwater.children')->with('success', 'Child category updated successfully!');
        } catch (\Throwable $e) {
            Log::error('Update failed', ['error' => $e->getMessage(), 'request' => $request->all()]);
            return back()->withErrors(['error' => 'Update failed: ' . $e->getMessage()]);
        }
    }

    // Optional: Delete child category
    public function destroy($id)
    {
        $child = Foodwatechildcategrory::findOrFail($id);
        $child->delete();

        return redirect()->route('foodwater.children')->with('success', 'Child category deleted successfully!');
    }
}
