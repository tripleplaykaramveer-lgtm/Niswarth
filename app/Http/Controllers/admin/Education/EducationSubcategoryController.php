<?php

namespace App\Http\Controllers\admin\Education;

use App\Http\Controllers\Controller;
use App\Models\Education\EducationSubcategory;
use App\Models\Education\EducationChaildernCategory;
use App\Models\Education\EducationMiniChaildernCategory;
use Illuminate\Http\Request;
use App\Models\Education\Education;
use Carbon\Carbon;
use Illuminate\Support\Str;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\DB;

class EducationSubcategoryController extends Controller
{
    public function index()
    {
        $educationSubcategorys = EducationSubcategory::latest()->paginate(10); // using correct model
        return view('admin.educationsubcotegory.index', compact('educationSubcategorys'));
    }
    public function store(Request $request)
    {
        //  dd($request);
        $validated = $request->validate([
            'education_id' => ['nullable'],
            'title' => ['nullable', 'string'],
            'education_subcategory' => ['nullable'],
            'education_subcategory.*' => ['nullable'],
            'status' => ['nullable'],

        ]);

        $subs = collect($request->input('education_subcategory', []))->map(fn($v) => trim($v))->filter()->unique()->values();


        try {
            DB::transaction(function () use ($request, $subs) {

                foreach ($subs as $subName) {
                    $sub = EducationSubcategory::firstOrCreate(
                        [
                            'education_id' => $request->education_id,
                            'name' => $subName,
                        ],
                        [
                            'title' => $request->title,
                            'status' => $request->status,
                        ]
                    );

                }
            });

            return redirect()->route('educationsubcategory.index')->with('success', 'Saved successfully!');

        } catch (\Throwable $e) {
            return back()->withErrors(['error' => 'Save failed: ' . $e->getMessage()]);
        }


    }

    public function create()
    {
        $educations = Education::where('status', '1')->pluck('title', 'id');
        return view('admin.educationsubcotegory.create', compact('educations'));
    }

    public function edit(EducationSubcategory $subcategory)
    {
        $educations = Education::pluck('title', 'id');

        return view('admin.educationsubcotegory.edit', compact('subcategory', 'educations'));
    }

    public function update(Request $request, EducationSubcategory $subcategory)
    {
        $validated = $request->validate([
            'education_id' => ['nullable', 'integer', 'exists:educations,id'],
            'title' => ['nullable', 'string', 'max:255'],
            'short_order' => ['nullable', 'string', 'max:255'],
            'education_subcategory' => ['nullable', 'string', 'max:255'],
            'status' => ['nullable', Rule::in(['0', '1'])],
        ]);

        $subName = trim($request->education_subcategory);

        try {
            DB::transaction(function () use ($request, $subName, $subcategory) {


                $subcategory->update([
                    'education_id' => $request->education_id,
                    'name' => $subName,
                    'title' => $request->title,
                    'short_order' => $request->short_order,
                    'status' => $request->status,
                ]);
            });

            return redirect()->route('educationsubcategory.index')->with('success', 'Updated successfully!');
        } catch (\Throwable $e) {
            return back()->withErrors(['error' => 'Update failed: ' . $e->getMessage()]);
        }
    }

    public function destroy(EducationSubcategory $subcategory)
    {
        $subcategory->delete();
        return redirect()->route('educationsubcategory.index')->with('success', 'Education Subcategory deleted successfully.');
    }

}
