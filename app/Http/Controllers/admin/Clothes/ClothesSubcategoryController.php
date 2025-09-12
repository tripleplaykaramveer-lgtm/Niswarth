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

class ClothesSubcategoryController extends Controller
{
    public function index()
    {
        $clothesSubcategorys = ClothSubcategory::latest()->paginate(10); // using correct model
        return view('admin.clothessubcotegory.index', compact('clothesSubcategorys'));
    }
    public function store(Request $request)
    {
        $validated = $request->validate([
            'cloth_id' => ['required','integer','exists:clothes,id'],
            'title'        => ['required','string','max:255'],
            'cloth_subcategory'           => ['required','array','min:1'],
            'cloth_subcategory.*'         => ['required','string','max:255'],
            'status'      => ['required', Rule::in(['0','1'])],
        ]);

        $subs = collect($request->input('cloth_subcategory', []))->map(fn($v)=>trim($v))->filter()->unique()->values();


        try {
            DB::transaction(function () use ($request, $subs) {

            foreach ($subs as $subName) {
                $sub = ClothSubcategory::firstOrCreate(
                    [
                        'cloth_id' => $request->cloth_id,
                        'name'         => $subName,
                    ],
                    [
                        'title'  => $request->title,
                        'status' => $request->status,
                    ]
                );
                
            }
        });

            return redirect()->route('clothessubcotegory.index')->with('success', 'Saved successfully!');

        } catch (\Throwable $e) {
            return back()->withErrors(['error' => 'Save failed: '.$e->getMessage()]);
        }

        
    }

    public function create()
    {
        $clothes = Cloth::where('status', '1')->pluck('title', 'id');
        return view('admin.clothessubcotegory.create', compact('clothes'));
    }

    public function edit(ClothSubcategory $subcategory)
    {
        $clothes = Cloth::pluck('title', 'id'); 
        
        return view('admin.clothessubcotegory.edit', compact('subcategory', 'clothes'));
    }

    public function update(Request $request, ClothSubcategory $subcategory)
    {
        // dd($request);
        $validated = $request->validate([
            'cloth_id'          => ['required','integer','exists:clothes,id'],
            'title'                 => ['required','string','max:255'],
            'cloth_subcategory' => ['required','string','max:255'],
            'status'                => ['required', Rule::in(['0','1'])],
        ]);

        $subName = trim($request->cloth_subcategory);

        try {
            DB::transaction(function () use ($request, $subName, $subcategory) {
                
                // 👉 Update current subcategory
                $subcategory->update([
                    'cloth_id' => $request->cloth_id,
                    'name'         => $subName,
                    'title'        => $request->title,
                    'status'       => $request->status,
                ]);
            });

            return redirect()->route('clothessubcategory.index')->with('success', 'Updated successfully!');
        } catch (\Throwable $e) {
            return back()->withErrors(['error' => 'Update failed: ' . $e->getMessage()]);
        }
    }

     public function destroy(ClothSubcategory $subcategory)
    {
        $subcategory->delete();
        return redirect()->route('clothessubcategory.index')->with('success', 'Clothes Subcategory deleted successfully.');
    }

}
