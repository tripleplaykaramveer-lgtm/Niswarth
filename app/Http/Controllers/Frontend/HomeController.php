<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Clothes;
use App\Models\Education;
use App\Models\FoodWater;
use App\Models\Medicine;
use App\Models\Spiritual;
use App\Models\TreeInstallation;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    // public function index()
    // {
       
    //     $educations = Education::latest()->take(5)->get();
        
    //     $medicines = Medicine::latest()->take(5)->get();
    //     $foodWaters = FoodWater::latest()->take(5)->get();
    //     $clothes = Clothes::latest()->take(5)->get();
    //     $treeInstallations = TreeInstallation::latest()->take(5)->get();
    //     $spirituals = Spiritual::latest()->take(5)->get();

    //     return view('frontend.pages.index', compact(
    //         'educations',
    //         'medicines',
    //         'foodWaters',
    //         'clothes',
    //         'treeInstallations',
    //         'spirituals'
    //     ));
    // }
}
