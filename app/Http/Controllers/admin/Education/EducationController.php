<?php

namespace App\Http\Controllers\admin\Education;

use App\Http\Controllers\Controller;
use App\Models\Education\Education;
use App\Models\Education\EducationSubcategory;
use App\Models\Education\EducationChaildernCategory;
use App\Models\Education\EducationMiniChaildernCategory;

use App\Helper\Helper;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

class EducationController extends Controller
{
    public function index()
    {
        $educations = Education::latest()->get();
        return view('admin.education.index', compact('educations'));
    }


    public function create()
    {

        return view('admin.education.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'image' => 'nullable|image',
            'title' => 'nullable',
            'description' => 'nullable',
            'button_text' => 'nullable',
            'sort_order' => 'nullable'
        ]);

        $imagePath = Helper::saveFile($request->file('image'), 'educations');

        Education::create([
            'image' => $imagePath,
            'title' => $request->title,
            'description' => $request->description,
            'button_text' => $request->button_text,
            'sort_order' => $request->sort_order ?? 0,
        ]);


        return redirect()->route('education.index')->with('success', 'Education created successfully.');
    }

    public function edit(Education $education)
    {
        return view('admin.education.edit', compact('education'));
    }

    public function update(Request $request, Education $education)
    {
        $request->validate([
            'title' => 'nullable',
            'description' => 'nullable',
            'button_text' => 'nullable',
            'image' => 'nullable|image|mimes:jpg,jpeg,png|max:2048',
            'sort_order' => 'nullable|integer',
        ]);

        $data = [
            'title' => $request->title,
            'description' => $request->description,
            'button_text' => $request->button_text,
            'sort_order' => $request->sort_order ?? $education->sort_order,
        ];

        if ($request->file('image')) {
            Helper::deleteFile($education->image);
            $data['image'] = Helper::saveFile($request->file('image'), 'educations');
        }

        $education->update($data);

        return redirect()->route('education.index')->with('success', 'Education updated successfully.');
    }

    public function destroy(Education $education)
    {
        $education->delete();
        return redirect()->route('education.index')->with('success', 'Education deleted successfully.');
    }

    public function getSubcategories($educationId)
    {
        $subcategories = EducationSubcategory::where('education_id', $educationId)
            ->where('status', '1')->orderBy('short_order', 'asc')
            ->get(['id', 'title', 'name']);
        $stepTitle = $subcategories->first()->title ?? 'Select Subcategory';
        return response()->json([
            'stepTitle' => $stepTitle,
            'data' => $subcategories
        ]);
    }

    public function getChildren($subcategoryId)
    {
        $data = EducationChaildernCategory::where('educationsubcategory_id', $subcategoryId)
            ->where('status', '1')->orderBy('short_order', 'asc')
            ->get(['id', 'name']);
        return response()->json($data);
    }

    public function getMiniChildren($childId)
    {
        $data = EducationMiniChaildernCategory::where('educationchailderncategory_id', $childId)
            ->where('status', '1')->orderBy('short_order', 'asc')
            ->get(['id', 'name']);
        return response()->json($data);
    }


    public function getStepFlow($educationId)
    {
        $steps = [];

        $subcategories = EducationSubcategory::where('education_id', $educationId)->count();
        if ($subcategories > 0) {
            $steps[] = [
                "step" => count($steps) + 1,
                "title" => "Subcategory",
                "endpoint" => "/education-subcategories/ID"
            ];
        }

        $children = EducationChaildernCategory::whereHas('subcategory', function ($q) use ($educationId) {
            $q->where('education_id', $educationId);
        })->count();
        if ($children > 0) {
            $steps[] = [
                "step" => count($steps) + 1,
                "title" => "Children Category",
                "endpoint" => "/education-children/ID"
            ];
        }

        $mini = EducationMiniChaildernCategory::whereHas('chaildrenCategory.subcategory', function ($q) use ($educationId) {
            $q->where('education_id', $educationId);
        })->count();
        if ($mini > 0) {
            $steps[] = [
                "step" => count($steps) + 1,
                "title" => "Mini Children",
                "endpoint" => "/education-minichildren/ID"
            ];
        }

        $steps[] = [
            "step" => count($steps) + 1,
            "title" => "Donate",
            "endpoint" => ""
        ];

        return response()->json($steps);
    }


}
