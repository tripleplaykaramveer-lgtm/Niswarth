<?php

namespace App\Http\Controllers\admin\Medicine;

use App\Http\Controllers\Controller;
use App\Models\Medicine\Medicine;
use App\Models\Medicine\MedicineSubcategory;
use App\Models\Medicine\MedicineChaildernCategory;
use App\Models\Medicine\MedicineMiniChaildernCategory;
use App\Helper\Helper;
use App\Models\User;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

class MedicineController extends Controller
{
    public function index()
    {
        $medicines = Medicine::latest()->paginate(10);
        return view('admin.medicine.index', compact('medicines'));
    }

    public function create()
    {
        return view('admin.medicine.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'image' => 'required|image|mimes:jpg,jpeg,png',
            'title' => 'required',
            'description' => 'required',
            'button_text' => 'nullable',
            'short_order' => 'nullable',
        ]);

        // Use your saveFile helper function
        $imagePath = Helper::saveFile($request->file('image'), 'medicine');

        Medicine::create([
            'image' => $imagePath,
            'title' => $request->title,
            'description' => $request->description,
            'button_text' => $request->button_text,
            'short_order' => $request->short_order,
        ]);


        return redirect()->route('medicine.index')->with('success', 'Medicine created successfully.');
    }

    public function update(Request $request, Medicine $medicine)
    {
        $request->validate([
            'title' => 'required',
            'description' => 'required',
            'button_text' => 'nullable',
            'short_order' => 'nullable',
            'image' => 'nullable|image|mimes:jpg,jpeg,png|max:2048',
        ]);

        $data = [
            'title' => $request->title,
            'description' => $request->description,
            'button_text' => $request->button_text,
            'short_order' => $request->short_order,
        ];

        if ($request->file('image')) {
            Helper::deleteFile($medicine->image);

            $data['image'] = Helper::saveFile($request->file('image'), 'medicine');
        }

        $medicine->update($data);

        return redirect()->route('medicine.index')->with('success', 'Medicine updated successfully.');
    }

    public function edit(Medicine $medicine)
    {
        return view('admin.medicine.edit', compact('medicine'));
    }


    public function destroy(Medicine $medicine)
    {
        $medicine->delete();
        return redirect()->route('medicine.index')->with('success', 'Medicine deleted successfully.');
    }

    public function getSubcategories($medicineId)
    {
        $subcategories = MedicineSubcategory::where('medicine_id', $medicineId)
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
        $data = MedicineChaildernCategory::where('medicinesubcategory_id', $subcategoryId)
            ->where('status', '1')->orderBy('id', 'desc')
            ->get(['id', 'name']);
        return response()->json($data);
    }

    // Step 3: Mini Children
    public function getMiniChildren($childId)
    {
        $data = MedicineMiniChaildernCategory::where('medicinechaildrencategory_id', $childId)
            ->where('status', '1')->orderBy('id', 'desc')
            ->get(['id', 'name']);
        return response()->json($data);
    }


    public function getStepFlow($medicineId)
    {
        $steps = [];

        $subcategories = MedicineSubcategory::where('medicine_id', $medicineId)->count();
        if ($subcategories > 0) {
            $steps[] = [
                "step" => count($steps) + 1,
                "title" => "Subcategory",
                "endpoint" => "/medicine-subcategories/ID"
            ];
        }

        // Step 2: Children Category
        $children = MedicineChaildernCategory::whereHas('subcategory', function ($q) use ($medicineId) {
            $q->where('medicine_id', $medicineId);
        })->count();
        if ($children > 0) {
            $steps[] = [
                "step" => count($steps) + 1,
                "title" => "Children Category",
                "endpoint" => "/medicine-children/ID"
            ];
        }

        // Step 3: Mini Children
        $mini = MedicineMiniChaildernCategory::whereHas('chaildrenCategory.subcategory', function ($q) use ($medicineId) {
            $q->where('medicine_id', $medicineId);
        })->count();
        if ($mini > 0) {
            $steps[] = [
                "step" => count($steps) + 1,
                "title" => "Mini Children",
                "endpoint" => "/medicine-minichildren/ID"
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
