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


class SpiritualSubcategoryController extends Controller
{
    public function index()
    {
        $spiritualSubcategorys = SpiritualSubcategory::latest()->paginate(10); // using correct model
        return view('admin.spiritualsubcategory.index', compact('spiritualSubcategorys'));
    }
    public function store(Request $request)
    {
        //  dd($request);
        $validated = $request->validate([
            'spiritual_id' => ['required','integer','exists:spirituals,id'],
            'title'        => ['required','string','max:255'],
            'spiritual_subcategory'           => ['required','array','min:1'],
            'spiritual_subcategory.*'         => ['required','string','max:255'],
            'status'      => ['required', Rule::in(['0','1'])],
        ]);

        $subs = collect($request->input('spiritual_subcategory', []))->map(fn($v)=>trim($v))->filter()->unique()->values();


        try {
            DB::transaction(function () use ($request, $subs) {

            foreach ($subs as $subName) {
                $sub = SpiritualSubcategory::firstOrCreate(
                    [
                        'spiritual_id' => $request->spiritual_id,
                        'name'         => $subName,
                    ],
                    [
                        'title'  => $request->title,
                        'status' => $request->status,
                    ]
                );
                
            }
        });

            return redirect()->route('spiritualsubcategory.index')->with('success', 'Saved successfully!');

        } catch (\Throwable $e) {
            return back()->withErrors(['error' => 'Save failed: '.$e->getMessage()]);
        }

        
    }

    public function create()
    {
        $spirituals = Spiritual::where('status', '1')->pluck('title', 'id');
        return view('admin.spiritualsubcategory.create', compact('spirituals'));
    }

    public function edit(spiritualSubcategory $subcategory)
    {
        $spirituals = Spiritual::pluck('title', 'id'); 
        
        return view('admin.spiritualsubcategory.edit', compact('subcategory', 'spirituals'));
    }

    public function update(Request $request, SpiritualSubcategory $subcategory)
    {
        $validated = $request->validate([
            'spiritual_id'          => ['required','integer','exists:spirituals,id'],
            'title'                 => ['required','string','max:255'],
            'spiritual_subcategory' => ['required','string','max:255'],
            'status'                => ['required', Rule::in(['0','1'])],
        ]);

        $subName = trim($request->spiritual_subcategory);

        try {
            DB::transaction(function () use ($request, $subName, $subcategory) {
                
                // 👉 Update current subcategory
                $subcategory->update([
                    'spiritual_id' => $request->spiritual_id,
                    'name'         => $subName,
                    'title'        => $request->title,
                    'status'       => $request->status,
                ]);
            });

            return redirect()->route('spiritualsubcategory.index')->with('success', 'Updated successfully!');
        } catch (\Throwable $e) {
            return back()->withErrors(['error' => 'Update failed: ' . $e->getMessage()]);
        }
    }

     public function destroy(SpiritualSubcategory $subcategory)
    {
        $subcategory->delete();
        return redirect()->route('spiritualsubcategory.index')->with('success', 'Spiritual Subcategory deleted successfully.');
    }

}
