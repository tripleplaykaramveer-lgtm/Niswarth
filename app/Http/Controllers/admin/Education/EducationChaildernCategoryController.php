<?php

namespace App\Http\Controllers\admin\Education;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Education\EducationSubcategory;
use App\Models\Education\EducationChaildernCategory;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\DB;

class EducationChaildernCategoryController extends Controller
{
    public function index()
    {
        $educationchailderncategory = EducationChaildernCategory::latest()->orderBy('id', 'desc')->paginate(10);

        return view('admin.educationchiderncotegory.index', compact('educationchailderncategory'));
    }


    public function store(Request $request)
    {
        $validated = $request->validate([
            'educationsubcategory_id' => ['required', 'integer', 'exists:education_subcategorys,id'],
            'short_order' => ['required', 'integer'],
            'education_chidern_category' => ['required', 'array', 'min:1'],
            'education_chidern_category.*' => ['required', 'string', 'max:255'],
            'status' => ['required', Rule::in(['0', '1'])],
        ]);

        $chaildrens = collect($request->input('education_chidern_category', []))
            ->map(fn($v) => trim($v))
            ->filter()
            ->unique()
            ->values();

        try {
            DB::transaction(function () use ($request, $chaildrens) {
                foreach ($chaildrens as $chaildrenName) {
                    EducationChaildernCategory::firstOrCreate(
                        [
                            'educationsubcategory_id' => $request->educationsubcategory_id,
                            'name' => $chaildrenName,
                        ],
                        [
                            'status' => $request->status,
                            'short_order' => $request->short_order,
                        ]
                    );
                }
            });
            return redirect()->route('educationchaildrencategory.index')->with('success', 'Saved successfully!');
        } catch (\Throwable $e) {
            return back()->withErrors(['error' => 'Save failed: ' . $e->getMessage()]);
        }
    }


    public function create()
    {
        $educationesubcategorys = EducationSubcategory::where('status', '1')->pluck('name', 'id');
        return view('admin.educationchiderncotegory.create', compact('educationesubcategorys'));
    }

    public function edit(EducationChaildernCategory $chaildrencategory)
    {

        $educationsubcategorys = EducationSubcategory::pluck('name', 'id');

        return view('admin.educationchiderncotegory.edit', compact('chaildrencategory', 'educationsubcategorys'));
    }

    public function update(Request $request, EducationChaildernCategory $chaildrencategory)
    {
        $validated = $request->validate([
            'educationsubcategory_id' => ['required', 'integer', 'exists:education_subcategorys,id'],
            'education_chidern_category' => ['required', 'string', 'max:255'],
            'short_order' => ['nullable', 'integer', 'min:1'], // new field
            'status' => ['required', Rule::in(['0', '1'])],
        ]);

        $subName = trim($request->education_chidern_category);

        try {
            DB::transaction(function () use ($request, $subName, $chaildrencategory) {
                $chaildrencategory->update([
                    'educationsubcategory_id' => $request->educationsubcategory_id,
                    'name' => $subName,
                    'short_order' => $request->short_order, // save new field
                    'status' => $request->status,
                ]);
            });

            return redirect()->route('educationchaildrencategory.index')->with('success', 'Updated successfully!');
        } catch (\Throwable $e) {
            return back()->withErrors(['error' => 'Update failed: ' . $e->getMessage()]);
        }
    }

    public function destroy(EducationChaildernCategory $chaildrencategory)
    {
        $chaildrencategory->delete();
        return redirect()->route('educationchaildrencategory.index')->with('success', 'Education chaildren categories deleted successfully.');
    }
}
