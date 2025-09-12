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

class TreeMiniChaildernCategoryController extends Controller
{
    public function index()
    {
        $treeinstallationminichailderncategorys = TreeinstallationMiniChaildernCategory::latest()->paginate(10);
        return view('admin.treeinstallationminichiderncategory.index', compact('treeinstallationminichailderncategorys'));
    }
     public function store(Request $request)
    {
        $validated = $request->validate([
            'tree_installation_chaildrencategory_id' => ['required','integer','exists:tree_installation_chailderncategorys,id'],
            'tree_installation_minichidern_category'           => ['required','array','min:1'],
            'tree_installation_minichidern_category.*'         => ['required','string','max:255'],
            'title'         => ['required','string','max:255'],
            'status'      => ['required', Rule::in(['0','1'])],
        ]);
//  dd($request);
        $minichaildrens = collect($request->input('tree_installation_minichidern_category', []))->map(fn($v)=>trim($v))->filter()->unique()->values();
        try {
            DB::transaction(function () use ($request, $minichaildrens) {
            foreach ($minichaildrens as $minichaildrenName) {

                $minichaildren = TreeinstallationMiniChaildernCategory::firstOrCreate(
                    [
                        'tree_installation_chaildrencategory_id' => $request->tree_installation_chaildrencategory_id,
                        'name'         => $minichaildrenName,
                    ],
                    [
                        'title' => $request->title,
                        'status' => $request->status,
                    ]
                );
                
            }
        });

            return redirect()->route('treeinstallationminichaildrencategory.index')->with('success', 'Saved successfully!');

        } catch (\Throwable $e) {
            return back()->withErrors(['error' => 'Save failed: '.$e->getMessage()]);
        }

    }

    public function create()
    {
        $treeinstallationchailderncategorys = TreeinstallationChaildernCategory::where('status', '1')->pluck('name', 'id');
        return view('admin.treeinstallationminichiderncategory.create', compact('treeinstallationchailderncategorys'));
    }

    public function edit(TreeinstallationMiniChaildernCategory $minichaildrencategory)
    {

        $treeinstallationchailderncategorys = TreeinstallationChaildernCategory::pluck('name', 'id'); 
        
        return view('admin.treeinstallationminichiderncategory.edit', compact('minichaildrencategory', 'treeinstallationchailderncategorys'));
    }

    public function update(Request $request, TreeinstallationMiniChaildernCategory $minichaildrencategory)
    {
       
        $validated = $request->validate([
            'tree_installation_chaildrencategory_id'    => ['required','integer','exists:tree_installation_chailderncategorys,id'],
            'tree_installation_minichidern_category' => ['required','string','max:255'],
            'title'         => ['required','string','max:255'],
            'status'                     => ['required', Rule::in(['0','1'])],
        ]);
        $subName = trim($request->tree_installation_minichidern_category);

        try {
            DB::transaction(function () use ($request, $subName, $minichaildrencategory) {
                
                $minichaildrencategory->update([
                    'tree_installation_chaildrencategory_id' => $request->tree_installation_chaildrencategory_id,
                    'name'         => $subName,
                    'title'       => $request->title,
                    'status'       => $request->status,
                ]);
            });

            return redirect()->route('treeinstallationminichaildrencategory.index')->with('success', 'Updated successfully!');
        } catch (\Throwable $e) {
            return back()->withErrors(['error' => 'Update failed: ' . $e->getMessage()]);
        }
    }

     public function destroy(TreeinstallationMiniChaildernCategory $minichaildrencategory)
    {
        $chaildrencategory->delete();
        return redirect()->route('treeinstallationminichaildrencategory.index')->with('success', 'Tree Installation minichaildren categories deleted successfully.');
    }
}
