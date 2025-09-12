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

class ClothesMiniChaildernCategoryController extends Controller
{
    public function index()
    {
        $clothminichailderncategorys = ClothMiniChaildernCategory::latest()->paginate(10);
        return view('admin.clothesminichiderncotegory.index', compact('clothminichailderncategorys'));
    }
     public function store(Request $request)
    {
        
        $validated = $request->validate([
            'id' => ['required','integer','exists:cloth_chailderncategorys,id'],
            'name'           => ['required','array','min:1'],
            'name.*'         => ['required','string','max:255'],
            'title'         => ['required','string','max:255'],
            'status'      => ['required', Rule::in(['0','1'])],
        ]);

        $minichaildrens = collect($request->input('name', []))->map(fn($v)=>trim($v))->filter()->unique()->values();
        try {
            DB::transaction(function () use ($request, $minichaildrens) {
            foreach ($minichaildrens as $minichaildrenName) {

                $minichaildren = ClothMiniChaildernCategory::firstOrCreate(
                    [
                        'cloth_chailderncategory_id' => $request->id,
                        'name'         => $minichaildrenName,
                    ],
                    [
                        'title' => $request->title,
                        'status' => $request->status,
                    ]
                );
                
            }
        });

            return redirect()->route('clothesminichaildrencategory.index')->with('success', 'Saved successfully!');

        } catch (\Throwable $e) {
            return back()->withErrors(['error' => 'Save failed: '.$e->getMessage()]);
        }

    }

    public function create()
    {
        $ClothChaildernCategory = ClothChaildernCategory::where('status', '1')->pluck('name', 'id');
        return view('admin.clothesminichiderncotegory.create', compact('ClothChaildernCategory'));
    }

    public function edit(ClothMiniChaildernCategory $minichaildrencategory)
    {

        $clotheschailderncategorys = ClothChaildernCategory::pluck('name', 'id'); 
        
        return view('admin.clothesminichiderncotegory.edit', compact('minichaildrencategory', 'clotheschailderncategorys'));
    }

    public function update(Request $request, ClothMiniChaildernCategory $minichaildrencategory)
    {
       
        $validated = $request->validate([
            'id'    => ['required','integer','exists:cloth_chailderncategorys,id'],
            'name' => ['required','string','max:255'],
            'title' => ['required','string','max:255'],
            'status'                     => ['required', Rule::in(['0','1'])],
        ]);
        $subName = trim($request->name);

        try {
            DB::transaction(function () use ($request, $subName, $minichaildrencategory) {
                
                $minichaildrencategory->update([
                    'cloth_chailderncategory_id' => $request->id,
                    'name'         => $subName,
                    'title'       => $request->title,
                    'status'       => $request->status,
                ]);
            });

            return redirect()->route('clothesminichaildrencategory.index')->with('success', 'Updated successfully!');
        } catch (\Throwable $e) {
            return back()->withErrors(['error' => 'Update failed: ' . $e->getMessage()]);
        }
    }

     public function destroy(ClothMiniChaildernCategory $minichaildrencategory)
    {
        $minichaildrencategory->delete();
        return redirect()->route('clothesminichaildrencategory.index')->with('success', 'Clothes minichaildren categories deleted successfully.');
    }
}
