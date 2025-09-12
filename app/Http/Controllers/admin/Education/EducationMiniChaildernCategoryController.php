<?php

namespace App\Http\Controllers\admin\Education;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\Education\EducationSubcategory;
use App\Models\Education\EducationChaildernCategory;
use App\Models\Education\EducationMiniChaildernCategory;
use App\Models\Education\Education;
use Carbon\Carbon;
use Illuminate\Support\Str;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\DB;

class EducationMiniChaildernCategoryController extends Controller
{
    public function index()
    {
        $educationminichailderncategorys = EducationMiniChaildernCategory::latest()->paginate(10);
        return view('admin.educationminichiderncotegory.index', compact('educationminichailderncategorys'));
    }
     public function store(Request $request)
    {

        $validated = $request->validate([
            'educationchailderncategory_id' => ['required','integer','exists:education_chailderncategorys,id'],
            'education_minichidern_category'           => ['required','array','min:1'],
            'education_minichidern_category.*'         => ['required','string','max:255'],
            'status'      => ['required', Rule::in(['0','1'])],
        ]);

        $minichaildrens = collect($request->input('education_minichidern_category', []))->map(fn($v)=>trim($v))->filter()->unique()->values();
        try {
            DB::transaction(function () use ($request, $minichaildrens) {
            foreach ($minichaildrens as $minichaildrenName) {

                $minichaildren = EducationMiniChaildernCategory::firstOrCreate(
                    [
                        'educationchailderncategory_id' => $request->educationchailderncategory_id,
                        'name'         => $minichaildrenName,
                    ],
                    [
                        'status' => $request->status,
                    ]
                );

            }
        });

            return redirect()->route('educationminichaildrencategory.index')->with('success', 'Saved successfully!');

        } catch (\Throwable $e) {
            return back()->withErrors(['error' => 'Save failed: '.$e->getMessage()]);
        }

    }

    public function create()
    {
        $educationchailderncategorys = EducationChaildernCategory::where('status', '1')->pluck('name', 'id');
        return view('admin.educationminichiderncotegory.create', compact('educationchailderncategorys'));
    }

    public function edit(EducationMiniChaildernCategory $minichaildrencategory)
    {

        $educationchailderncategorys = EducationChaildernCategory::pluck('name', 'id');

        return view('admin.educationminichiderncotegory.edit', compact('minichaildrencategory', 'educationchailderncategorys'));
    }

    public function update(Request $request, EducationMiniChaildernCategory $minichaildrencategory)
    {

        $validated = $request->validate([
            'educationchailderncategory_id'    => ['required','integer','exists:education_chailderncategorys,id'],
            'education_minichidern_category' => ['required','string','max:255'],
            'status'                     => ['required', Rule::in(['0','1'])],
        ]);
        $subName = trim($request->education_minichidern_category);

        try {
            DB::transaction(function () use ($request, $subName, $minichaildrencategory) {

                $minichaildrencategory->update([
                    'educationchailderncategory_id' => $request->educationchailderncategory_id,
                    'name'         => $subName,
                    'status'       => $request->status,
                ]);
            });

            return redirect()->route('educationminichaildrencategory.index')->with('success', 'Updated successfully!');
        } catch (\Throwable $e) {
            return back()->withErrors(['error' => 'Update failed: ' . $e->getMessage()]);
        }
    }

     public function destroy(EducationMiniChaildernCategory $minichaildrencategory)
    {
        $chaildrencategory->delete();
        return redirect()->route('educationminichaildrencategory.index')->with('success', 'Education minichaildren categories deleted successfully.');
    }
}
