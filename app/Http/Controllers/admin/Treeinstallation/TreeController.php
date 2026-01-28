<?php

namespace App\Http\Controllers\admin\Treeinstallation;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Treeinstallation\TreeinstallationSubcategory;
use App\Models\Treeinstallation\TreeinstallationChaildernCategory;
use App\Models\Treeinstallation\TreeinstallationMiniChaildernCategory;
use App\Models\Treeinstallation\TreeInstallation;
use App\Helper\Helper;

class TreeController extends Controller
{
    public function index()
    {
        $treeinstallations = TreeInstallation::latest()->paginate(10);
        return view('admin.treeinstallation.index', compact('treeinstallations'));
    }

    public function create()
    {
        return view('admin.treeinstallation.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'image' => 'required|image',
            'title' => 'required',
            'short_order' => 'required',
            'description' => 'required',
            'button_text' => 'nullable',
        ]);

        // Use your saveFile helper function
        $imagePath = Helper::saveFile($request->file('image'), 'treeinstallations');

        Treeinstallation::create([
            'image' => $imagePath,
            'title' => $request->title,
            'description' => $request->description,
            'button_text' => $request->button_text,
            'short_order' => $request->short_order,
        ]);

        return redirect()->route('tree-installation.index')->with('success', 'Tree Installation created successfully.');
    }

    public function update(Request $request, Treeinstallation $education)
    {
        $request->validate([
            'title' => 'required',
            'short_order' => 'required',
            'description' => 'required',
            'button_text' => 'nullable',
            'image' => 'nullable|image|mimes:jpg,jpeg,png|max:2048',
        ]);

        $data = [
            'title' => $request->title,
            'description' => $request->description,
            'button_text' => $request->button_text,
            'short_order' => $request->short_order,
        ];

        if ($request->file('image')) {
            Helper::deleteFile($education->image);

            $data['image'] = Helper::saveFile($request->file('image'), 'treeinstallations');
        }

        $education->update($data);

        return redirect()->route('tree-installation.index')->with('success', 'Treeinstallation updated successfully.');
    }

    public function edit(Treeinstallation $education)
    {
        return view('admin.treeinstallation.edit', compact('education'));
    }



    public function destroy(Treeinstallation $education)
    {
        $education->delete();
        return redirect()->route('tree-installation.index')->with('success', 'Treeinstallation deleted successfully.');
    }

    // frontend index page

    // Step 1: Subcategories
    public function getSubcategories($treeinstallationId)
    {
        $subcategories = TreeinstallationSubcategory::where('tree_installation_id', $treeinstallationId)
            ->where('status', '1')->orderBy('id', 'desc')
            ->get(['id', 'title', 'name']);
        $stepTitle = $subcategories->first()->title ?? 'Select Subcategory';
        return response()->json([
            'stepTitle' => $stepTitle,
            'data' => $subcategories
        ]);
    }

    public function getChildren($treeinstallationId)
    {
        $data = EducationChaildernCategory::where('tree_installation_subcategory_id', $treeinstallationId)
            ->where('status', '1')->orderBy('id', 'desc')
            ->get(['id', 'name']);
        return response()->json($data);
    }

    // Step 3: Mini Children
    public function getMiniChildren($childId)
    {
        $data = TreeinstallationMiniChaildernCategory::where('tree_installation_chaildrencategory_id', $childId)
            ->where('status', '1')->orderBy('id', 'desc')
            ->get(['id', 'name']);
        return response()->json($data);
    }


    public function getStepFlow($treeinstallationId)
    {
        $steps = [];

        // Step 1: Subcategory
        $subcategories = TreeinstallationSubcategory::where('tree_installation_id', $treeinstallationId)->count();
        if ($subcategories > 0) {
            $steps[] = [
                "step" => count($steps) + 1,
                "title" => "Subcategory",
                "endpoint" => "treeinstallation-subcategories/ID"
            ];
        }

        // Step 2: Children Category
        $children = TreeinstallationChaildernCategory::whereHas('subcategory', function ($q) use ($treeinstallationId) {
            $q->where('tree_installation_id', $treeinstallationId);
        })->count();
        if ($children > 0) {
            $steps[] = [
                "step" => count($steps) + 1,
                "title" => "Children Category",
                "endpoint" => "/treeinstallation-children/ID"
            ];
        }

        // Step 3: Mini Children
        $mini = TreeinstallationMiniChaildernCategory::whereHas('chaildrenCategory.subcategory', function ($q) use ($treeinstallationId) {
            $q->where('tree_installation_id', $treeinstallationId);
        })->count();
        if ($mini > 0) {
            $steps[] = [
                "step" => count($steps) + 1,
                "title" => "Mini Children",
                "endpoint" => "/treeinstallation-minichildren/ID"
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
