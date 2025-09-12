<?php

namespace App\Http\Controllers\admin\Spiritual;

use App\Http\Controllers\Controller;
use App\Models\Spiritual\Spiritual;
use App\Models\Spiritual\SpiritualSubcategory;
use App\Models\Spiritual\SpiritualChaildernCategory;
use App\Models\Spiritual\SpiritualMiniChaildernCategory;
use App\Models\Lead;
use App\Models\User;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;
use Illuminate\Validation\Rule;


class SpiritualMiniChaildernCategoryController extends Controller
{
    public function index()
    {
        $spiritualminichailderncategorys = SpiritualMiniChaildernCategory::latest()->paginate(10);
        return view('admin.spiritualminichiderncategory.index', compact('spiritualminichailderncategorys'));
    }
     public function store(Request $request)
    {
        
        $validated = $request->validate([
            'spiritual_chaildrencategory_id' => ['required','integer','exists:spiritual_chailderncategorys,id'],
            'spiritual_minichidern_category'           => ['required','array','min:1'],
            'spiritual_minichidern_category.*'         => ['required','string','max:255'],
            'status'      => ['required', Rule::in(['0','1'])],
        ]);

        $minichaildrens = collect($request->input('spiritual_minichidern_category', []))->map(fn($v)=>trim($v))->filter()->unique()->values();
        try {
            DB::transaction(function () use ($request, $minichaildrens) {
            foreach ($minichaildrens as $minichaildrenName) {

                $minichaildren = SpiritualMiniChaildernCategory::firstOrCreate(
                    [
                        'spiritual_chaildrencategory_id' => $request->spiritual_chaildrencategory_id,
                        'name'         => $minichaildrenName,
                    ],
                    [
                        'title' => $request->title,
                        'status' => $request->status,
                    ]
                );
                
            }
        });

            return redirect()->route('spiritualminichaildrencategory.index')->with('success', 'Saved successfully!');

        } catch (\Throwable $e) {
            return back()->withErrors(['error' => 'Save failed: '.$e->getMessage()]);
        }

    }

    public function create()
    {
        $spiritualchailderncategorys = SpiritualChaildernCategory::where('status', '1')->pluck('name', 'id');
        return view('admin.spiritualminichiderncategory.create', compact('spiritualchailderncategorys'));
    }

    public function edit(SpiritualMiniChaildernCategory $minichaildrencategory)
    {

        $spiritualchailderncategorys = SpiritualChaildernCategory::pluck('name', 'id'); 
        
        return view('admin.spiritualminichiderncategory.edit', compact('minichaildrencategory', 'spiritualchailderncategorys'));
    }

    public function update(Request $request, SpiritualMiniChaildernCategory $minichaildrencategory)
    {
       
        $validated = $request->validate([
            'spiritual_chaildrencategory_id'    => ['required','integer','exists:spiritual_chailderncategorys,id'],
            'spiritual_minichidern_category' => ['required','string','max:255'],
            'status'                     => ['required', Rule::in(['0','1'])],
        ]);
        $subName = trim($request->spiritual_minichidern_category);

        try {
            DB::transaction(function () use ($request, $subName, $minichaildrencategory) {
                
                $minichaildrencategory->update([
                    'spiritual_chaildrencategory_id' => $request->spiritual_chaildrencategory_id,
                    'name'         => $subName,
                    'title'       => $request->title,
                    'status'       => $request->status,
                ]);
            });

            return redirect()->route('spiritualminichaildrencategory.index')->with('success', 'Updated successfully!');
        } catch (\Throwable $e) {
            return back()->withErrors(['error' => 'Update failed: ' . $e->getMessage()]);
        }
    }

     public function destroy(SpiritualMiniChaildernCategory $minichaildrencategory)
    {
        $chaildrencategory->delete();
        return redirect()->route('spiritualminichaildrencategory.index')->with('success', 'Spiritual minichaildren categories deleted successfully.');
    }
}
