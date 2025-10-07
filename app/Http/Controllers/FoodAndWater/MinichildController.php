<?php

namespace App\Http\Controllers\FoodAndWater;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Foodwaterminichild;
use App\Models\Foodwatechildcategrory; // your child-category model (typo name kept)
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class MinichildController extends Controller
{
    // -------------- INDEX --------------
    public function index()
    {
        $minichildren = Foodwaterminichild::with('parentChild')->latest()->paginate(10);
        return view('admin.foodwaterminichildcategory.index', compact('minichildren'));
    }

    // -------------- CREATE (SHOW FORM) --------------
    public function add()
    {
        $foodwaterchild = Foodwatechildcategrory::pluck('name', 'id'); // parent child categories
        return view('admin.foodwaterminichildcategory.create', compact('foodwaterchild'));
    }

    // -------------- STORE --------------
    public function store(Request $request)
    {
        Log::info('[Minichild] store START', ['request' => $request->all()]);

        $validated = $request->validate([
            'food_water_chailderncategory_id' => 'required',
            'title' => 'nullable|string|max:255',
            'short_order' => 'nullable|integer',
            // 'subcategories' comes from select2 tags (multiple)
            'subcategories' => 'required|array',
            'subcategories.*' => 'required|string|max:255',
            'status' => 'required|in:0,1',
        ]);

        Log::info('[Minichild] validation passed', ['validated' => $validated]);

        try {
            DB::transaction(function () use ($request) {
                $subs = collect($request->input('subcategories', []))
                    ->map(fn($v) => trim($v))
                    ->filter()
                    ->unique()
                    ->values();

                Log::info('[Minichild] subs to insert', ['subs' => $subs->toArray()]);

                foreach ($subs as $name) {
                    $min = Foodwaterminichild::updateOrCreate(
                        [
                            'food_water_chailderncategory_id' => $request->food_water_chailderncategory_id,
                            'name' => $name,
                        ],
                        [
                            'title' => $request->title,
                            'short_order' => $request->short_order,
                            'status' => $request->status,
                        ]
                    );

                    Log::info('[Minichild] created/updated', ['min' => $min->toArray()]);
                }
            });

            Log::info('[Minichild] transaction committed');

            return redirect()->route('foodwater.minichildren')->with('success', 'Mini child categories saved successfully!');

        } catch (\Throwable $e) {
            Log::error('[Minichild] store FAILED', [
                'message' => $e->getMessage(),
                'trace' => $e->getTraceAsString(),
                'request' => $request->all()
            ]);

            return back()->withErrors(['error' => 'Save failed: ' . $e->getMessage()]);
        }
    }

    // -------------- EDIT (SHOW FORM) --------------
    public function edit($id)
    {
        $minichild = Foodwaterminichild::findOrFail($id);
        $foodwaterchild = Foodwatechildcategrory::pluck('name', 'id');

        return view('admin.foodwaterminichildcategory.edit', compact('minichild', 'foodwaterchild'));
    }

    // -------------- UPDATE --------------
    public function update(Request $request, $id)
    {
        $minichild = Foodwaterminichild::findOrFail($id);

        Log::info('[Minichild] update START', ['id' => $id, 'request' => $request->all()]);

        $validated = $request->validate([
            'food_water_chailderncategory_id' => 'required',
            'name' => 'required|string|max:255',
            'title' => 'nullable|string|max:255',
            'short_order' => 'nullable|integer',
            'status' => 'required|in:0,1',
        ]);

        try {
            $minichild->update([
                'food_water_chailderncategory_id' => $request->food_water_chailderncategory_id,
                'name' => $request->name,
                'title' => $request->title,
                'short_order' => $request->short_order,
                'status' => $request->status,
            ]);

            Log::info('[Minichild] updated', ['min' => $minichild->toArray()]);

            return redirect()->route('foodwater.minichildren')->with('success', 'Mini child updated successfully!');

        } catch (\Throwable $e) {
            Log::error('[Minichild] update FAILED', [
                'message' => $e->getMessage(),
                'request' => $request->all()
            ]);

            return back()->withErrors(['error' => 'Update failed: ' . $e->getMessage()]);
        }
    }

    // -------------- DESTROY --------------
    public function destroy($id)
    {
        $minichild = Foodwaterminichild::findOrFail($id);

        try {
            $minichild->delete();
            Log::info('[Minichild] deleted', ['id' => $id]);
            return redirect()->route('foodwater.minichildren')->with('success', 'Mini child deleted successfully!');
        } catch (\Throwable $e) {
            Log::error('[Minichild] delete FAILED', ['message' => $e->getMessage(), 'id' => $id]);
            return back()->withErrors(['error' => 'Delete failed: ' . $e->getMessage()]);
        }
    }
}
