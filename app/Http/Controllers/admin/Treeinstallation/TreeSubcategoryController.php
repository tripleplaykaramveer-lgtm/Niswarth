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

class TreeSubcategoryController extends Controller
{
    public function index()
    {
        $treeinstallationSubcategorys = TreeinstallationSubcategory::latest()->paginate(10); // using correct model
        return view('admin.treeinstallationsubcategory.index', compact('treeinstallationSubcategorys'));
    }
    public function store(Request $request)
    {
        //  dd($request);
        $validated = $request->validate([
            'tree_installation_id' => ['required','integer','exists:tree_installations,id'],
            'title'        => ['required','string','max:255'],
            'tree_installation_subcategory'           => ['required','array','min:1'],
            'tree_installation_subcategory.*'         => ['required','string','max:255'],
            'status'      => ['required', Rule::in(['0','1'])],
        ]);
// dd($request);
        $subs = collect($request->input('tree_installation_subcategory', []))->map(fn($v)=>trim($v))->filter()->unique()->values();


        try {
            DB::transaction(function () use ($request, $subs) {

            foreach ($subs as $subName) {
                $sub = TreeinstallationSubcategory::firstOrCreate(
                    [
                        'tree_installation_id' => $request->tree_installation_id,
                        'name'         => $subName,
                    ],
                    [
                        'title'  => $request->title,
                        'status' => $request->status,
                    ]
                );
                
            }
        });

            return redirect()->route('treeinstallationsubcategory.index')->with('success', 'Saved successfully!');

        } catch (\Throwable $e) {
            return back()->withErrors(['error' => 'Save failed: '.$e->getMessage()]);
        }

        
    }


    public function create()
    {
        $treeinstallations = Treeinstallation::where('status', '1')->pluck('title', 'id');
        return view('admin.treeinstallationsubcategory.create', compact('treeinstallations'));
    }

    public function edit(TreeinstallationSubcategory $subcategory)
    {
        $treeinstallations = Treeinstallation::pluck('title', 'id'); 
        
        return view('admin.treeinstallationsubcategory.edit', compact('subcategory', 'treeinstallations'));
    }

    public function update(Request $request, TreeinstallationSubcategory $subcategory)
    {
     
        $validated = $request->validate([
            'tree_installation_id'          => ['required','integer','exists:tree_installations,id'],
            'title'                 => ['required','string','max:255'],
            'tree_installation_subcategory' => ['required','string','max:255'],
            'status'                => ['required', Rule::in(['0','1'])],
        ]);

        $subName = trim($request->tree_installation_subcategory);

        try {
            DB::transaction(function () use ($request, $subName, $subcategory) {
                
                // 👉 Update current subcategory
                $subcategory->update([
                    'tree_installation_id' => $request->tree_installation_id,
                    'name'         => $subName,
                    'title'        => $request->title,
                    'status'       => $request->status,
                ]);
            });

            return redirect()->route('treeinstallationsubcategory.index')->with('success', 'Updated successfully!');
        } catch (\Throwable $e) {
            return back()->withErrors(['error' => 'Update failed: ' . $e->getMessage()]);
        }
    }

     public function destroy(TreeinstallationSubcategory $subcategory)
    {
        $subcategory->delete();
        return redirect()->route('treeinstallationsubcategory.index')->with('success', 'Tree Installation Subcategory deleted successfully.');
    }

}
