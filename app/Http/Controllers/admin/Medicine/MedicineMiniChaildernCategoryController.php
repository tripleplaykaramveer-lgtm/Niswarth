<?php

namespace App\Http\Controllers\admin\Medicine;

use App\Http\Controllers\Controller;
use App\Models\Medicine\Medicine;
use App\Models\Medicine\MedicineSubcategory;
use App\Models\Medicine\MedicineChaildernCategory;
use App\Models\Medicine\MedicineMiniChaildernCategory;
use App\Models\Lead;
use App\Models\User;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;
use Illuminate\Validation\Rule;

class MedicineMiniChaildernCategoryController extends Controller
{
    public function index()
    {
        $medicineminichailderncategorys = MedicineMiniChaildernCategory::latest()->paginate(10);
        return view('admin.medicineminichiderncotegory.index', compact('medicineminichailderncategorys'));
    }
     public function store(Request $request)
    {
        
        $validated = $request->validate([
            'medicinechaildrencategory_id'   => ['required','integer','exists:medicine_chaildrencategorys,id'],
            'minichidern_category'           => ['required','array','min:1'],
            'minichidern_category.*'         => ['required','string','max:255'],
            'title'                          => ['required','string','max:255'],
            'status'                         => ['required', Rule::in(['0','1'])],
        ]);

        $minichaildrens = collect($request->input('minichidern_category', []))->map(fn($v)=>trim($v))->filter()->unique()->values();
        try {
            DB::transaction(function () use ($request, $minichaildrens) {
            foreach ($minichaildrens as $minichaildrenName) {

                $minichaildren = MedicineMiniChaildernCategory::firstOrCreate(
                    [
                        'medicinechaildrencategory_id' => $request->medicinechaildrencategory_id,
                        'name'         => $minichaildrenName,
                    ],
                    [
                        'title' => $request->title,
                        'status' => $request->status,
                    ]
                );
                
            }
        });

            return redirect()->route('medicineminichaildrencategory.index')->with('success', 'Saved successfully!');

        } catch (\Throwable $e) {
            return back()->withErrors(['error' => 'Save failed: '.$e->getMessage()]);
        }

    }

    public function create()
    {
        $medicinechailderncategorys = MedicineChaildernCategory::where('status', '1')->pluck('name', 'id');
        return view('admin.medicineminichiderncotegory.create', compact('medicinechailderncategorys'));
    }

    public function edit(MedicineMiniChaildernCategory $minichaildrencategory)
    {

        $medicinechailderncategorys = MedicineChaildernCategory::pluck('name', 'id'); 
        
        return view('admin.medicineminichiderncotegory.edit', compact('minichaildrencategory', 'medicinechailderncategorys'));
    }

    public function update(Request $request, MedicineMiniChaildernCategory $minichaildrencategory)
    {
       
        $validated = $request->validate([
            'medicinechaildrencategory_id'    => ['required','integer','exists:medicine_chaildrencategorys,id'],
            'minichidern_category' => ['required','string','max:255'],
            'title'                          => ['required','string','max:255'],
            'status'                     => ['required', Rule::in(['0','1'])],
        ]);
        $subName = trim($request->minichidern_category);

        try {
            DB::transaction(function () use ($request, $subName, $minichaildrencategory) {
                
                $minichaildrencategory->update([
                    'medicinechaildrencategory_id' => $request->medicinechaildrencategory_id,
                    'name'         => $subName,
                    'title'       => $request->title,
                    'status'       => $request->status,
                ]);
            });

            return redirect()->route('medicineminichaildrencategory.index')->with('success', 'Updated successfully!');
        } catch (\Throwable $e) {
            return back()->withErrors(['error' => 'Update failed: ' . $e->getMessage()]);
        }
    }

     public function destroy(MedicineMiniChaildernCategory $minichaildrencategory)
    {
        $chaildrencategory->delete();
        return redirect()->route('medicineminichaildrencategory.index')->with('success', 'Medicine minichaildren categories deleted successfully.');
    }
}
