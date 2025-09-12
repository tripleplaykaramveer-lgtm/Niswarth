<?php

namespace App\Http\Controllers\admin\Treeinstallation;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Treeinstallation\TreeinstallationSubcategory;
use App\Models\Treeinstallation\TreeinstallationChaildernCategory;
use App\Models\Treeinstallation\TreeinstallationMiniChaildernCategory;
use App\Models\Treeinstallation\Treeinstallation;
use Carbon\Carbon;
use Illuminate\Support\Str;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\DB;

class TreeChaildernCategoryController extends Controller
{
    public function index()
    {
         $treeinstallationchailderncategory = TreeinstallationChaildernCategory::latest()->orderBy('id', 'desc')->paginate(10);
        //  dd($educationchailderncategory->toArray());
        return view('admin.treeinstallationchiderncategory.index', compact('treeinstallationchailderncategory'));
    }


     public function store(Request $request)
    {
        // dd($request->educationsubcategory_id);

        $validated = $request->validate([
            'tree_installation_subcategory_id' => ['required','integer','exists:tree_installation_subcategorys,id'],
            'tree_installation_chidern_category'           => ['required','array','min:1'],
            'tree_installation_chidern_category.*'         => ['required','string','max:255'],
            'title'                                => ['required','string','max:255'],
            'status'                               => ['required', Rule::in(['0','1'])],
        ]);
        $chaildrens = collect($request->input('tree_installation_chidern_category', []))->map(fn($v)=>trim($v))->filter()->unique()->values();

        try {
            DB::transaction(function () use ($request, $chaildrens) {
            foreach ($chaildrens as $chaildrenName) {

                $chaildren = TreeinstallationChaildernCategory::firstOrCreate(
                    [
                        'tree_installation_subcategory_id' => $request->tree_installation_subcategory_id,
                        'name'         => $chaildrenName,
                    ],
                    [
                        'title' => $request->title,
                        'status' => $request->status,
                    ]
                );
                
            }
        });

            return redirect()->route('treeinstallationchaildrencategory.index')->with('success', 'Saved successfully!');

        } catch (\Throwable $e) {
            return back()->withErrors(['error' => 'Save failed: '.$e->getMessage()]);
        }

    }


    public function create()
    {
        $treeinstallationsubcategorys = TreeinstallationSubcategory::where('status', '1')->pluck('name', 'id');
        return view('admin.treeinstallationchiderncategory.create', compact('treeinstallationsubcategorys'));
    }

    public function edit(TreeinstallationChaildernCategory $chaildrencategory)
    {

        $treeinstallationsubcategorys = TreeinstallationSubcategory::pluck('name', 'id'); 
        
        return view('admin.treeinstallationchiderncategory.edit', compact('chaildrencategory', 'treeinstallationsubcategorys'));
    }

    public function update(Request $request, TreeinstallationChaildernCategory $chaildrencategory)
    {
        $validated = $request->validate([
            'tree_installation_subcategory_id'    => ['required','integer','exists:tree_installation_subcategorys,id'],
            'tree_installation_chidern_category' => ['required','string','max:255'],
            'title'                 => ['required','string','max:255'],
            'status'                     => ['required', Rule::in(['0','1'])],
        ]);

        $subName = trim($request->tree_installation_chidern_category);

        try {
            DB::transaction(function () use ($request, $subName, $chaildrencategory) {
                
                $chaildrencategory->update([
                    'tree_installation_subcategory_id' => $request->tree_installation_subcategory_id,
                    'name'         => $subName,
                    'tilte'       => $request->title,
                    'status'       => $request->status,
                ]);
            });

            return redirect()->route('treeinstallationchaildrencategory.index')->with('success', 'Updated successfully!');
        } catch (\Throwable $e) {
            return back()->withErrors(['error' => 'Update failed: ' . $e->getMessage()]);
        }
    }

     public function destroy(treeinstallationChaildernCategory $chaildrencategory)
    {
        $chaildrencategory->delete();
        return redirect()->route('treeinstallationchaildrencategory.index')->with('success', 'Tree Installation chaildren categories deleted successfully.');
    }
}
