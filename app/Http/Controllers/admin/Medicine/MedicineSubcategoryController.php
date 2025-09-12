<?php

namespace App\Http\Controllers\admin\Medicine;

use App\Http\Controllers\Controller;
use App\Models\Medicine\Medicine;
use App\Models\Medicine\MedicineSubcategory;
use App\Models\Medicine\MedicineChaildernCategory;
use App\Models\Medicine\MedicineMiniChaildernCategory;
use App\Models\Lead;
use App\Models\User;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;
use Illuminate\Validation\Rule;

class MedicineSubcategoryController extends Controller
{
    public function index()
    {
        $medicineSubcategorys = MedicineSubcategory::latest()->paginate(10); // using correct model
        return view('admin.medicinesubcotegory.index', compact('medicineSubcategorys'));
    }
    public function store(Request $request)
    {
        $validated = $request->validate([
            'medicine_id' => ['required', 'integer', 'exists:medicines,id'],
            'title' => ['required', 'string', 'max:255'],
            'medicine_subcategory' => ['required', 'array', 'min:1'],
            'medicine_subcategory.*' => ['required', 'string', 'max:255'],
            'short_order' => ['nullable', 'integer', 'min:1'], // ✅ new validation
            'status' => ['required', Rule::in(['0', '1'])],
        ]);

        $subs = collect($request->input('medicine_subcategory', []))
            ->map(fn($v) => trim($v))
            ->filter()
            ->unique()
            ->values();

        try {
            DB::transaction(function () use ($request, $subs) {
                foreach ($subs as $subName) {
                    MedicineSubcategory::firstOrCreate(
                        [
                            'medicine_id' => $request->medicine_id,
                            'name' => $subName,
                        ],
                        [
                            'title' => $request->title,
                            'short_order' => $request->short_order, // ✅ save short_order
                            'status' => $request->status,
                        ]
                    );
                }
            });

            return redirect()->route('medicinesubcategory.index')->with('success', 'Saved successfully!');
        } catch (\Throwable $e) {
            return back()->withErrors(['error' => 'Save failed: ' . $e->getMessage()]);
        }
    }


    public function create()
    {
        $medicines = Medicine::where('status', '1')->pluck('title', 'id');
        return view('admin.medicinesubcotegory.create', compact('medicines'));
    }

    public function edit(MedicineSubcategory $subcategory)
    {
        $medicines = Medicine::pluck('title', 'id');

        return view('admin.medicinesubcotegory.edit', compact('subcategory', 'medicines'));
    }

    public function update(Request $request, MedicineSubcategory $subcategory)
    {
        $validated = $request->validate([
            'medicine_id' => ['required', 'integer', 'exists:medicines,id'],
            'title' => ['required', 'string', 'max:255'],
            'medicine_subcategory' => ['required', 'string', 'max:255'],
            'short_order' => ['nullable', 'integer', 'min:0'], // ✅ new field validation
            'status' => ['required', Rule::in(['0', '1'])],
        ]);

        $subName = trim($request->medicine_subcategory);

        try {
            DB::transaction(function () use ($request, $subName, $subcategory) {
                $subcategory->update([
                    'medicine_id' => $request->medicine_id,
                    'name' => $subName,
                    'title' => $request->title,
                    'short_order' => $request->short_order ?? 0, // ✅ saving short_order
                    'status' => $request->status,
                ]);
            });

            return redirect()->route('medicinesubcategory.index')->with('success', 'Updated successfully!');
        } catch (\Throwable $e) {
            return back()->withErrors(['error' => 'Update failed: ' . $e->getMessage()]);
        }
    }


    public function destroy(MedicineSubcategory $subcategory)
    {
        $subcategory->delete();
        return redirect()->route('medicinesubcategory.index')->with('success', 'Medicine Subcategory deleted successfully.');
    }

}
