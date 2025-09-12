<?php

namespace App\Http\Controllers\admin\Clothes;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Clothes\ClothSubcategory;
use App\Models\Clothes\ClothChaildernCategory;
use App\Models\Clothes\ClothMiniChaildernCategory;
use App\Models\Clothes\Cloth;
use Carbon\Carbon;
use Illuminate\Support\Str;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\DB;

class ClothesChaildernCategoryController extends Controller
{
    public function index()
    {
         $clothchailderncategory = ClothChaildernCategory::latest()->orderBy('id', 'desc')->paginate(10);
         return view('admin.clotheschiderncotegory.index', compact('clothchailderncategory'));
    }

    public function create()
    {
        $clothsubcategorys = ClothSubcategory::where('status', '1')->pluck('name', 'id');
        return view('admin.clotheschiderncotegory.create', compact('clothsubcategorys'));
    }

     public function store(Request $request)
    {

        $validated = $request->validate([
            'id'        => ['required','integer','exists:cloth_subcategorys,id'],
            'name'      => ['required','array','min:1'],
            'name.*'    => ['required','string','max:255'],
            'title'     => ['required','string','max:255'],
            'status'    => ['required', Rule::in(['0','1'])],
        ]);
        
        $chaildrens = collect($request->input('name', []))->map(fn($v)=>trim($v))->filter()->unique()->values();

        try {
            DB::transaction(function () use ($request, $chaildrens) {
            foreach ($chaildrens as $chaildrenName) {

                $chaildren = ClothChaildernCategory::firstOrCreate(
                    [
                        'cloth_subcategory_id' => $request->id,
                        'name'         => $chaildrenName,
                    ],
                    [
                        'title' => $request->title,
                        'status' => $request->status,
                    ]
                );
                
            }
        });

            return redirect()->route('clotheschiderncotegory.index')->with('success', 'Saved successfully!');

        } catch (\Throwable $e) {
            return back()->withErrors(['error' => 'Save failed: '.$e->getMessage()]);
        }

    }

   

    public function edit(ClothChaildernCategory $chaildrencategory)
    {
        $clothsubcategorys = ClothSubcategory::pluck('name', 'id'); 
        
        return view('admin.clotheschiderncotegory.edit', compact('chaildrencategory', 'clothsubcategorys'));
    }

    public function update(Request $request, ClothChaildernCategory $chaildrencategory)
    {

        $validated = $request->validate([
            'id'        => ['required','integer','exists:cloth_subcategorys,id'],
            'name'      => ['required','string','max:255'],
            'title'     => ['required','string','max:255'],
            'status'    => ['required', Rule::in(['0','1'])],
        ]);

        $subName = trim($request->name);
        try {
            DB::transaction(function () use ($request, $subName, $chaildrencategory) {
                
                $chaildrencategory->update([
                    'cloth_subcategory_id' => $request->id,
                    'name'                 => $subName,
                    'title'                => $request->title,
                    'status'               => $request->status,
                ]);
            });

            return redirect()->route('clotheschaildrencategory.index')->with('success', 'Updated successfully!');
        } catch (\Throwable $e) {
            return back()->withErrors(['error' => 'Update failed: ' . $e->getMessage()]);
        }
    }

     public function destroy(ClothChaildernCategory $chaildrencategory)
    {
        $chaildrencategory->delete();
        return redirect()->route('clotheschaildrencategory.index')->with('success', 'Education chaildren categories deleted successfully.');
    }
}
