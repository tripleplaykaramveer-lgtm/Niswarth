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

class MedicineChaildernCategoryController extends Controller
{
    public function index()
    {
         $medicinechailderncategory = MedicineChaildernCategory::latest()->orderBy('id', 'desc')->paginate(10);
        //  dd($educationchailderncategory->toArray());
        return view('admin.medicinechiderncotegory.index', compact('medicinechailderncategory'));
    }


     public function store(Request $request)
{
    $validated = $request->validate([
        'medicinesubcategory_id' => ['required','integer','exists:medicine_subcategorys,id'],
        'medicine_chidern_category' => ['required','array','min:1'],
        'medicine_chidern_category.*' => ['required','string','max:255'],
        'title' => ['required','string','max:255'],

        'short_order' => ['nullable', 'integer', 'min:0'],
        'status' => ['required', Rule::in(['0','1'])],
    ]);

    $chaildrens = collect($request->input('medicine_chidern_category', []))
        ->map(fn($v) => trim($v))
        ->filter()
        ->unique()
        ->values();

    try {
        DB::transaction(function () use ($request, $chaildrens) {
            foreach ($chaildrens as $chaildrenName) {
                MedicineChaildernCategory::updateOrCreate(
                    [
                        'medicinesubcategory_id' => $request->medicinesubcategory_id,
                        'name' => $chaildrenName,
                    ],
                    [
                        'title' => $request->title,
                        'short_order' => $request->short_order, // Add the short_order field
                        'status' => $request->status,
                    ]
                );
            }
        });

        return redirect()->route('medicinechaildrencategory.index')->with('success', 'Saved successfully!');
    } catch (\Throwable $e) {
        return back()->withErrors(['error' => 'Save failed: ' . $e->getMessage()]);
    }
}

    public function create()
    {
        $medicinesubcategorys = MedicineSubcategory::where('status', '1')->pluck('name', 'id');
        return view('admin.medicinechiderncotegory.create', compact('medicinesubcategorys'));
    }

    public function edit(MedicineChaildernCategory $chaildrencategory)
    {

        $medicinesubcategorys = MedicineSubcategory::pluck('name', 'id');

        return view('admin.medicinechiderncotegory.edit', compact('chaildrencategory', 'medicinesubcategorys'));
    }

   public function update(Request $request, MedicineChaildernCategory $chaildrencategory)
{
    $validated = $request->validate([
        'medicinesubcategory_id' => ['required', 'integer', 'exists:medicine_subcategorys,id'],
        'medicine_chidern_category' => ['required', 'string', 'max:255'],
        'title' => ['required', 'string', 'max:255'],
        // Add validation for the new short_order field
        'short_order' => ['nullable', 'integer', 'min:0'],
        'status' => ['required', Rule::in(['0', '1'])],
    ]);

    $subName = trim($request->medicine_chidern_category);

    try {
        DB::transaction(function () use ($request, $subName, $chaildrencategory) {
            $chaildrencategory->update([
                'medicinesubcategory_id' => $request->medicinesubcategory_id,
                'name' => $subName,
                'status' => $request->status,
                'title' => $request->title,
                'short_order' => $request->short_order, // Add the new short_order field
            ]);
        });

        return redirect()->route('medicinechaildrencategory.index')->with('success', 'Updated successfully!');
    } catch (\Throwable $e) {
        return back()->withErrors(['error' => 'Update failed: ' . $e->getMessage()]);
    }
}

     public function destroy(MedicineChaildernCategory $chaildrencategory)
    {
        $chaildrencategory->delete();
        return redirect()->route('medicinechaildrencategory.index')->with('success', 'Education chaildren categories deleted successfully.');
    }
}
