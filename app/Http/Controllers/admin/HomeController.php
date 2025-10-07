<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\Clothes\Cloth;
use App\Models\Education\Education;
use App\Models\FoodWater;
use App\Models\Medicine\Medicine;
use App\Models\Spiritual\Spiritual;
use App\Models\Treeinstallation\TreeInstallation;


class HomeController extends Controller
{
    public function index()
    {

        $educations = Education::orderBy('sort_order', 'asc')->take(6)->get();
        
        $medicines = Medicine::where('status', '1')
            ->orderBy('short_order', 'asc')
            ->take(5)
            ->get();

        $foodWaters = FoodWater::orderBy('short_order', 'asc')
            ->take(6)
            ->get();


        $clothes = Cloth::orderBy('short_order', 'asc')
            ->take(6)
            ->get();

        $treeInstallations = TreeInstallation::orderBy('short_order', 'asc')
            ->take(6)
            ->get();

        $spirituals = Spiritual::orderBy('short_order', 'asc')
            ->take(6)
            ->get();

        return view('frontend.pages.index', compact(
            'educations',
            'medicines',
            'foodWaters',
            'clothes',
            'treeInstallations',
            'spirituals'
        ));
    }
    public function foodWaterList()
    {
        $foodWaters = FoodWater::latest()->get();
        return view('frontend.pages.foodwater-list', compact('foodWaters'));
    }
    public function clothesList()
    {
        $clothes = Cloth::latest()->get();
        return view('frontend.pages.clothes-list', compact('clothes'));
    }
    public function treeInstallationList()
    {
        $treeInstallations = TreeInstallation::latest()->get();
        return view('frontend.pages.treeinstallation-list', compact('treeInstallations'));
    }

    public function educationList()
    {
        $educations = Education::latest()->paginate(12);
        return view('frontend.pages.education-list', compact('educations'));
    }
    public function medicineList()
    {
        $medicines = Medicine::where('status', 1)->latest()->get();
        return view('frontend.pages.medicine-list', compact('medicines'));
    }
    public function spiritualList()
    {
        $spirituals = Spiritual::latest()->get();
        return view('frontend.pages.spiritual-list', compact('spirituals'));
    }

}
