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

class SpiritualChaildernCategoryController extends Controller
{
    public function index()
    {
         $spiritualchailderncategorys = SpiritualChaildernCategory::latest()->orderBy('id', 'desc')->paginate(10);
        return view('admin.spiritualchiderncategory.index', compact('spiritualchailderncategorys'));
    }


   public function store(Request $request)
{
    $validated = $request->validate([
        'spiritual_subcategory_id'     => ['required','integer','exists:spiritual_subcategorys,id'],
        'spiritual_chidern_category'   => ['required','array','min:1'],
        'spiritual_chidern_category.*' => ['required','string','max:255'],
        'title'                        => ['required','string','max:255'],
        'status'                       => ['required', Rule::in(['0','1'])],
        'short_order'                  => ['nullable','integer'], // ✅ new
    ]);

    $chaildrens = collect($request->input('spiritual_chidern_category', []))
        ->map(fn($v) => trim($v))
        ->filter()
        ->unique()
        ->values();

    try {
        DB::transaction(function () use ($request, $chaildrens) {
            foreach ($chaildrens as $chaildrenName) {
                SpiritualChaildernCategory::firstOrCreate(
                    [
                        'spiritual_subcategory_id' => $request->spiritual_subcategory_id,
                        'name'                     => $chaildrenName,
                    ],
                    [
                        'title'        => $request->title,
                        'status'       => $request->status,
                        'short_order'  => $request->short_order, // ✅ save
                    ]
                );
            }
        });

        return redirect()->route('spiritualchaildrencategory.index')
                         ->with('success', 'Saved successfully!');
    } catch (\Throwable $e) {
        return back()->withErrors(['error' => 'Save failed: '.$e->getMessage()]);
    }
}


    public function create()
    {
        $spiritualsubcategorys = SpiritualSubcategory::where('status', '1')->pluck('name', 'id');
        return view('admin.spiritualchiderncategory.create', compact('spiritualsubcategorys'));
    }

    public function edit(SpiritualChaildernCategory $chaildrencategory)
    {

        $spiritualsubcategorys = SpiritualSubcategory::pluck('name', 'id');

        return view('admin.spiritualchiderncategory.edit', compact('chaildrencategory', 'spiritualsubcategorys'));
    }

   public function update(Request $request, SpiritualChaildernCategory $chaildrencategory)
{
    $validated = $request->validate([
        'spiritual_subcategory_id'    => ['required','integer','exists:spiritual_subcategorys,id'],
        'spiritual_chidern_category'  => ['required','string','max:255'],
        'title'                       => ['required','string','max:255'],
        'status'                      => ['required', Rule::in(['0','1'])],
        'short_order'                 => ['nullable','integer','min:0'],
    ]);

    $subName = trim($request->spiritual_chidern_category);

    try {
        DB::transaction(function () use ($request, $subName, $chaildrencategory) {

            $chaildrencategory->update([
                'spiritual_subcategory_id' => $request->spiritual_subcategory_id,
                'name'                     => $subName,
                'title'                    => $request->title,
                'status'                   => $request->status,
                'short_order'              => $request->short_order,
            ]);
        });

        return redirect()->route('spiritualchaildrencategory.index')->with('success', 'Updated successfully!');
    } catch (\Throwable $e) {
        return back()->withErrors(['error' => 'Update failed: ' . $e->getMessage()]);
    }
}


     public function destroy(SpiritualChaildernCategory $chaildrencategory)
    {
        $chaildrencategory->delete();
        return redirect()->route('spiritualchaildrencategory.index')->with('success', 'Spiritual chaildren categories deleted successfully.');
    }
}
