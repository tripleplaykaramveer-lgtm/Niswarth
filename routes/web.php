<?php

use App\Http\Controllers\admin\Clothes\ClothesController;
use App\Http\Controllers\admin\Clothes\ClothesSubcategoryController;
use App\Http\Controllers\admin\Clothes\ClothesChaildernCategoryController;
use App\Http\Controllers\admin\Clothes\ClothesMiniChaildernCategoryController;
use App\Http\Controllers\admin\Education\EducationController;
use App\Http\Controllers\admin\Education\EducationSubcategoryController;
use App\Http\Controllers\admin\Education\EducationChaildernCategoryController;
use App\Http\Controllers\admin\Education\EducationMiniChaildernCategoryController;
use App\Http\Controllers\admin\Medicine\MedicineController;
use App\Http\Controllers\admin\Medicine\MedicineSubcategoryController;
use App\Http\Controllers\admin\Medicine\MedicineChaildernCategoryController;
use App\Http\Controllers\admin\Medicine\MedicineMiniChaildernCategoryController;
use App\Http\Controllers\admin\Spiritual\spiritualController;
use App\Http\Controllers\admin\Spiritual\SpiritualSubcategoryController;
use App\Http\Controllers\admin\Spiritual\SpiritualChaildernCategoryController;
use App\Http\Controllers\admin\Spiritual\SpiritualMiniChaildernCategoryController;
use App\Http\Controllers\admin\Treeinstallation\TreeController;
use App\Http\Controllers\admin\Treeinstallation\TreeSubcategoryController;
use App\Http\Controllers\admin\Treeinstallation\TreeChaildernCategoryController;
use App\Http\Controllers\admin\Treeinstallation\TreeMiniChaildernCategoryController;
use App\Http\Controllers\admin\FoodWaterController;
use App\Http\Controllers\admin\HomeController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\auth\RegisterController;
use App\Http\Controllers\admin\loginController;
use App\Http\Controllers\admin\DashboardController;



Route::get('/register', [RegisterController::class, 'register_show'])->name('register');
Route::get('/app-register', [\App\Http\Controllers\Frontend\RegisterController::class, 'register'])->name('app.register');
Route::get('/app-login', [\App\Http\Controllers\Frontend\RegisterController::class, 'login'])->name('app.login');
Route::post('app-register', [\App\Http\Controllers\Frontend\RegisterController::class, 'store'])->name('frontend.register.store');
Route::post('/user-register', [RegisterController::class, 'createuser'])->name('user.register');
Route::get('/admin/login', [loginController::class, 'login_show'])->name('login');
Route::post('/user-login', [loginController::class, 'login'])->name('user.login');
Route::get('/logout', [loginController::class, 'logout'])->name('user.logout');
Route::post('/logout', [loginController::class, 'logout'])->name('logout');
Route::get('/', [HomeController::class, 'index'])->name('home');
Route::post('/login', [RegisterController::class, 'loginCheck'])->name('frontend.login.check');
Route::get('/education', [HomeController::class, 'educationList'])->name('education.list');
Route::get('/medicines', [HomeController::class, 'medicineList'])->name('mediciness.list');
Route::get('/food-water', [HomeController::class, 'foodWaterList'])->name('foodwater.list');
Route::get('/clothes', [HomeController::class, 'clothesList'])->name('clothes.list');
Route::get('/tree-installations', [HomeController::class, 'treeInstallationList'])->name('treeinstallation.list');
Route::get('/spirituals', [HomeController::class, 'spiritualList'])->name('spiritual.list');
Route::middleware(['admin'])->namespace('admin')->prefix('admin')->group(function () {
    Route::get('/dashboard', [DashboardController::class, 'index'])->name('main.dashboard');

    Route::get('/education', [EducationController::class, 'index'])->name('education.index');
    Route::get('/education/create', [EducationController::class, 'create'])->name('education.create');
    Route::post('/education', [EducationController::class, 'store'])->name('education.store');
    Route::get('education/{education}/edit', [EducationController::class, 'edit'])->name('education.edit');
    Route::put('education/{education}', [EducationController::class, 'update'])->name('education.update');
    Route::delete('education/{education}', [EducationController::class, 'destroy'])->name('education.destroy');

    Route::get('/medicine', [MedicineController::class, 'index'])->name('medicine.index');
    Route::get('/medicine/create', [MedicineController::class, 'create'])->name('medicine.create');
    Route::post('/medicine', [MedicineController::class, 'store'])->name('medicine.store');
    Route::get('medicine/{medicine}/edit', [MedicineController::class, 'edit'])->name('medicine.edit');
    Route::put('medicine/{medicine}', [MedicineController::class, 'update'])->name('medicine.update');
    Route::delete('medicine/{medicine}', [MedicineController::class, 'destroy'])->name('medicine.destroy');
    // Update request
    Route::put('/foodwater/{foodWater}', [FoodWaterController::class, 'update'])
        ->name('foodwater.update');
    Route::get('/food-water', [FoodWaterController::class, 'index'])->name('food-water.index');
    Route::get('/food-water/create', [FoodWaterController::class, 'create'])->name('food-water.create');
    Route::post('/food-water', [FoodWaterController::class, 'store'])->name('food-water.store');
    Route::get('admin/foodwater/{foodWater}/edit', [FoodWaterController::class, 'edit'])
        ->name('food-water.edit');
    Route::put('food-water/{education}', [FoodWaterController::class, 'update'])->name('food-water.update');
    Route::delete('food-water/{education}', [FoodWaterController::class, 'destroy'])->name('food-water.destroy');

    Route::get('/clothes', [ClothesController::class, 'index'])->name('clothes.index');
    Route::get('/clothes/create', [ClothesController::class, 'create'])->name('clothes.create');
    Route::post('/clothes', [ClothesController::class, 'store'])->name(name: 'clothes.store');
    Route::get('clothes/{clothes}/edit', [ClothesController::class, 'edit'])->name('clothes.edit');
    Route::put('clothes/{clothes}', [ClothesController::class, 'update'])->name('clothes.update');
    Route::delete('clothes/{clothes}', [ClothesController::class, 'destroy'])->name('clothes.destroy');

    Route::get('/tree-installation', [TreeController::class, 'index'])->name('tree-installation.index');
    Route::get('/tree-installation/create', [TreeController::class, 'create'])->name('tree-installation.create');
    Route::post('/tree-installation', [TreeController::class, 'store'])->name(name: 'tree-installation.store');
    Route::get('tree-installation/{education}/edit', [TreeController::class, 'edit'])->name('tree-installation.edit');
    Route::put('tree-installation/{education}', [TreeController::class, 'update'])->name('tree-installation.update');
    Route::delete('tree-installation/{education}', [TreeController::class, 'destroy'])->name('tree-installation.destroy');

    Route::get('/spiritual', [spiritualController::class, 'index'])->name('spiritual.index');
    Route::get('/spiritual/create', [spiritualController::class, 'create'])->name('spiritual.create');
    Route::post('/spiritual', [spiritualController::class, 'store'])->name(name: 'spiritual.store');
    Route::get('spiritual/{spiritual}/edit', [spiritualController::class, 'edit'])->name('spiritual.edit');
    Route::put('spiritual/{spiritual}', [spiritualController::class, 'update'])->name('spiritual.update');
    Route::delete('spiritual/{spiritual}', [spiritualController::class, 'destroy'])->name('spiritual.destroy');

    Route::get('/education-subcategory', [EducationSubcategoryController::class, 'index'])->name('educationsubcategory.index');
    Route::get('/education-subcategory/create', [EducationSubcategoryController::class, 'create'])->name('educationsubcategory.create');
    Route::post('/education-subcategory', [EducationSubcategoryController::class, 'store'])->name('educationsubcategory.store');
    Route::get('/education-subcategory/edit/{subcategory}', [EducationSubcategoryController::class, 'edit'])->name('educationsubcategory.edit');
    Route::post('/education-subcategory/update/{subcategory}', [EducationSubcategoryController::class, 'update'])->name('educationsubcategory.update');
    Route::delete('/education-subcategory/{subcategory}', [EducationSubcategoryController::class, 'destroy'])->name('educationsubcategory.destroy');

    Route::get('/education-chaildrencategory', [EducationChaildernCategoryController::class, 'index'])->name('educationchaildrencategory.index');
    Route::get('/education-chaildrencategory/create', [EducationChaildernCategoryController::class, 'create'])->name('educationchaildrencategory.create');
    Route::post('/education-chaildrencategory', [EducationChaildernCategoryController::class, 'store'])->name('educationchaildrencategory.store');
    Route::get('/education-chaildrencategory/edit/{chaildrencategory}', [EducationChaildernCategoryController::class, 'edit'])->name('educationchaildrencategory.edit');
    Route::post('/education-chaildrencategory/update/{chaildrencategory}', [EducationChaildernCategoryController::class, 'update'])->name('educationchaildrencategory.update');
    Route::delete('/education-chaildrencategory/{chaildrencategory}', [EducationChaildernCategoryController::class, 'destroy'])->name('educationchaildrencategory.destroy');

    Route::get('/education-minichaildrencategory', [EducationMiniChaildernCategoryController::class, 'index'])->name('educationminichaildrencategory.index');
    Route::get('/education-minichaildrencategory/create', [EducationMiniChaildernCategoryController::class, 'create'])->name('educationminichaildrencategory.create');
    Route::post('/education-minichaildrencategory', [EducationMiniChaildernCategoryController::class, 'store'])->name('educationminichaildrencategory.store');
    Route::get('/education-minichaildrencategory/edit/{minichaildrencategory}', [EducationMiniChaildernCategoryController::class, 'edit'])->name('educationminichaildrencategory.edit');
    Route::post('/education-minichaildrencategory/update/{minichaildrencategory}', [EducationMiniChaildernCategoryController::class, 'update'])->name('educationminichaildrencategory.update');
    Route::delete('/education-minichaildrencategory/{minichaildrencategory}', [EducationMiniChaildernCategoryController::class, 'destroy'])->name('educationminichaildrencategory.destroy');

    Route::get('/medicine-subcategory', [MedicineSubcategoryController::class, 'index'])->name('medicinesubcategory.index');
    Route::get('/medicine-subcategory/create', [MedicineSubcategoryController::class, 'create'])->name('medicinesubcategory.create');
    Route::post('/medicine-subcategory', [MedicineSubcategoryController::class, 'store'])->name('medicinesubcategory.store');
    Route::get('medicine-subcategory/{subcategory}/edit', [MedicineSubcategoryController::class, 'edit'])->name('medicinesubcategory.edit');
    Route::post('medicine-subcategory/{subcategory}', [MedicineSubcategoryController::class, 'update'])->name('medicinesubcategory.update');
    Route::delete('medicine-subcategory/{subcategory}', [MedicineSubcategoryController::class, 'destroy'])->name('medicinesubcategory.destroy');

    Route::get('/medicine-chaildrencategory', [MedicineChaildernCategoryController::class, 'index'])->name('medicinechaildrencategory.index');
    Route::get('/medicine-chaildrencategory/create', [MedicineChaildernCategoryController::class, 'create'])->name('medicinechaildrencategory.create');
    Route::post('/medicine-chaildrencategory', [MedicineChaildernCategoryController::class, 'store'])->name('medicinechaildrencategory.store');
    Route::get('/medicine-chaildrencategory/edit/{chaildrencategory}', [MedicineChaildernCategoryController::class, 'edit'])->name('medicinechaildrencategory.edit');
    Route::post('/medicine-chaildrencategory/update/{chaildrencategory}', [MedicineChaildernCategoryController::class, 'update'])->name('medicinechaildrencategory.update');
    Route::delete('/medicine-chaildrencategory/{chaildrencategory}', [MedicineChaildernCategoryController::class, 'destroy'])->name('medicinechaildrencategory.destroy');

    Route::get('/medicine-minichaildrencategory', [MedicineMiniChaildernCategoryController::class, 'index'])->name('medicineminichaildrencategory.index');
    Route::get('/medicine-minichaildrencategory/create', [MedicineMiniChaildernCategoryController::class, 'create'])->name('medicineminichaildrencategory.create');
    Route::post('/medicine-minichaildrencategory', [MedicineMiniChaildernCategoryController::class, 'store'])->name('medicineminichaildrencategory.store');
    Route::get('/medicine-minichaildrencategory/edit/{minichaildrencategory}', [MedicineMiniChaildernCategoryController::class, 'edit'])->name('medicineminichaildrencategory.edit');
    Route::post('/medicine-minichaildrencategory/update/{minichaildrencategory}', [MedicineMiniChaildernCategoryController::class, 'update'])->name('medicineminichaildrencategory.update');
    Route::delete('/medicine-minichaildrencategory/{minichaildrencategory}', [MedicineMiniChaildernCategoryController::class, 'destroy'])->name('medicineminichaildrencategory.destroy');

    Route::get('/spiritual-subcategory', [SpiritualSubcategoryController::class, 'index'])->name('spiritualsubcategory.index');
    Route::get('/spiritual-subcategory/create', [SpiritualSubcategoryController::class, 'create'])->name('spiritualsubcategory.create');
    Route::post('/spiritual-subcategory', [SpiritualSubcategoryController::class, 'store'])->name('spiritualsubcategory.store');
    Route::get('spiritual-subcategory/{subcategory}/edit', [SpiritualSubcategoryController::class, 'edit'])->name('spiritualsubcategory.edit');
    Route::post('spiritual-subcategory/{subcategory}', [SpiritualSubcategoryController::class, 'update'])->name('spiritualsubcategory.update');
    Route::delete('spiritual-subcategory/{subcategory}', [SpiritualSubcategoryController::class, 'destroy'])->name('spiritualsubcategory.destroy');

    Route::get('/spiritual-chaildrencategory', [SpiritualChaildernCategoryController::class, 'index'])->name('spiritualchaildrencategory.index');
    Route::get('/spiritual-chaildrencategory/create', [SpiritualChaildernCategoryController::class, 'create'])->name('spiritualchaildrencategory.create');
    Route::post('/spiritual-chaildrencategory', [SpiritualChaildernCategoryController::class, 'store'])->name('spiritualchaildrencategory.store');
    Route::get('/spiritual-chaildrencategory/edit/{chaildrencategory}', [SpiritualChaildernCategoryController::class, 'edit'])->name('spiritualchaildrencategory.edit');
    Route::post('/spiritual-chaildrencategory/update/{chaildrencategory}', [SpiritualChaildernCategoryController::class, 'update'])->name('spiritualchaildrencategory.update');
    Route::delete('/spiritual-chaildrencategory/{chaildrencategory}', [SpiritualChaildernCategoryController::class, 'destroy'])->name('spiritualchaildrencategory.destroy');

    Route::get('/spiritual-minichaildrencategory', [SpiritualMiniChaildernCategoryController::class, 'index'])->name('spiritualminichaildrencategory.index');
    Route::get('/spiritual-minichaildrencategory/create', [SpiritualMiniChaildernCategoryController::class, 'create'])->name('spiritualminichaildrencategory.create');
    Route::post('/spiritual-minichaildrencategory', [SpiritualMiniChaildernCategoryController::class, 'store'])->name('spiritualminichaildrencategory.store');
    Route::get('/spiritual-minichaildrencategory/edit/{minichaildrencategory}', [SpiritualMiniChaildernCategoryController::class, 'edit'])->name('spiritualminichaildrencategory.edit');
    Route::post('/spiritual-minichaildrencategory/update/{minichaildrencategory}', [SpiritualMiniChaildernCategoryController::class, 'update'])->name('spiritualminichaildrencategory.update');
    Route::delete('/spiritual-minichaildrencategory/{minichaildrencategory}', [SpiritualMiniChaildernCategoryController::class, 'destroy'])->name('spiritualminichaildrencategory.destroy');


    Route::get('/treeinstallation-subcategory', [TreeSubcategoryController::class, 'index'])->name('treeinstallationsubcategory.index');
    Route::get('/treeinstallation-subcategory/create', [TreeSubcategoryController::class, 'create'])->name('treeinstallationsubcategory.create');
    Route::post('/treeinstallation-subcategory', [TreeSubcategoryController::class, 'store'])->name('treeinstallationsubcategory.store');
    Route::get('treeinstallation-subcategory/{subcategory}/edit', [TreeSubcategoryController::class, 'edit'])->name('treeinstallationsubcategory.edit');
    Route::post('treeinstallation-subcategory/{subcategory}', [TreeSubcategoryController::class, 'update'])->name('treeinstallationsubcategory.update');
    Route::delete('treeinstallation-subcategory/{subcategory}', [TreeSubcategoryController::class, 'destroy'])->name('treeinstallationsubcategory.destroy');

    Route::get('/treeinstallation-chaildrencategory', [TreeChaildernCategoryController::class, 'index'])->name('treeinstallationchaildrencategory.index');
    Route::get('/treeinstallation-chaildrencategory/create', [TreeChaildernCategoryController::class, 'create'])->name('treeinstallationchaildrencategory.create');
    Route::post('/treeinstallation-chaildrencategory', [TreeChaildernCategoryController::class, 'store'])->name('treeinstallationchaildrencategory.store');
    Route::get('/treeinstallation-chaildrencategory/edit/{chaildrencategory}', [TreeChaildernCategoryController::class, 'edit'])->name('treeinstallationchaildrencategory.edit');
    Route::post('/treeinstallation-chaildrencategory/update/{chaildrencategory}', [TreeChaildernCategoryController::class, 'update'])->name('treeinstallationchaildrencategory.update');
    Route::delete('/treeinstallation-chaildrencategory/{chaildrencategory}', [TreeChaildernCategoryController::class, 'destroy'])->name('treeinstallationchaildrencategory.destroy');

    Route::get('/treeinstallation-minichaildrencategory', [TreeMiniChaildernCategoryController::class, 'index'])->name('treeinstallationminichaildrencategory.index');
    Route::get('/treeinstallation-minichaildrencategory/create', [TreeMiniChaildernCategoryController::class, 'create'])->name('treeinstallationminichaildrencategory.create');
    Route::post('/treeinstallation-minichaildrencategory', [TreeMiniChaildernCategoryController::class, 'store'])->name('treeinstallationminichaildrencategory.store');
    Route::get('/treeinstallation-minichaildrencategory/edit/{minichaildrencategory}', [TreeMiniChaildernCategoryController::class, 'edit'])->name('treeinstallationminichaildrencategory.edit');
    Route::post('/treeinstallation-minichaildrencategory/update/{minichaildrencategory}', [TreeMiniChaildernCategoryController::class, 'update'])->name('treeinstallationminichaildrencategory.update');
    Route::delete('/treeinstallation-minichaildrencategory/{minichaildrencategory}', [TreeMiniChaildernCategoryController::class, 'destroy'])->name('treeinstallationminichaildrencategory.destroy');

    Route::get('/clothes-subcategory', [ClothesSubcategoryController::class, 'index'])->name('clothessubcategory.index');
    Route::get('/clothes-subcategory/create', [ClothesSubcategoryController::class, 'create'])->name('clothessubcategory.create');
    Route::post('/clothes-subcategory', [ClothesSubcategoryController::class, 'store'])->name('clothessubcategory.store');
    Route::get('clothes-subcategory/{subcategory}/edit', [ClothesSubcategoryController::class, 'edit'])->name('clothessubcategory.edit');
    Route::post('clothes-subcategory/{subcategory}', [ClothesSubcategoryController::class, 'update'])->name('clothessubcategory.update');
    Route::delete('clothes-subcategory/{subcategory}', [ClothesSubcategoryController::class, 'destroy'])->name('clothessubcategory.destroy');

    Route::get('/clothes-chaildrencategory', [ClothesChaildernCategoryController::class, 'index'])->name('clotheschaildrencategory.index');
    Route::get('/clothes-chaildrencategory/create', [ClothesChaildernCategoryController::class, 'create'])->name('clotheschaildrencategory.create');
    Route::post('/clothes-chaildrencategory', [ClothesChaildernCategoryController::class, 'store'])->name('clotheschaildrencategory.store');
    Route::get('/clothes-chaildrencategory/edit/{chaildrencategory}', [ClothesChaildernCategoryController::class, 'edit'])->name('clotheschaildrencategory.edit');
    Route::post('/clothes-chaildrencategory/update/{chaildrencategory}', [ClothesChaildernCategoryController::class, 'update'])->name('clotheschaildrencategory.update');
    Route::delete('/clothes-chaildrencategory/{chaildrencategory}', [ClothesChaildernCategoryController::class, 'destroy'])->name('clotheschaildrencategory.destroy');

    Route::get('/clothes-minichaildrencategory', [ClothesMiniChaildernCategoryController::class, 'index'])->name('clothesminichaildrencategory.index');
    Route::get('/clothes-minichaildrencategory/create', [ClothesMiniChaildernCategoryController::class, 'create'])->name('clothesminichaildrencategory.create');
    Route::post('/clothes-minichaildrencategory', [ClothesMiniChaildernCategoryController::class, 'store'])->name('clothesminichaildrencategory.store');
    Route::get('/clothes-minichaildrencategory/edit/{minichaildrencategory}', [ClothesMiniChaildernCategoryController::class, 'edit'])->name('clothesminichaildrencategory.edit');
    Route::post('/clothes-minichaildrencategory/update/{minichaildrencategory}', [ClothesMiniChaildernCategoryController::class, 'update'])->name('clothesminichaildrencategory.update');
    Route::delete('/clothes-minichaildrencategory/{minichaildrencategory}', [ClothesMiniChaildernCategoryController::class, 'destroy'])->name('clothesminichaildrencategory.destroy');
});

Route::get('/step-flow/{educationId}', [EducationController::class, 'getStepFlow']);
Route::get('/education-subcategories/{educationId}', [EducationController::class, 'getSubcategories']);
Route::get('/education-children/{subcategoryId}', [EducationController::class, 'getChildren']);
Route::get('/education-minichildren/{childId}', [EducationController::class, 'getMiniChildren']);

Route::get('/medicine-flow/{medicineId}', [MedicineController::class, 'getStepFlow']);
Route::get('/medicine-subcategories/{medicineId}', [MedicineController::class, 'getSubcategories']);
Route::get('/medicine-children/{subcategoryId}', [MedicineController::class, 'getChildren']);
Route::get('/medicine-minichildren/{childId}', [MedicineController::class, 'getMiniChildren']);

Route::get('/spiritual-flow/{spiritualId}', [spiritualController::class, 'getStepFlow']);
Route::get('/spiritual-subcategories/{spiritualId}', [spiritualController::class, 'getSubcategories']);
Route::get('/spiritual-children/{subcategoryId}', [spiritualController::class, 'getChildren']);
Route::get('/spiritual-minichildren/{childId}', [spiritualController::class, 'getMiniChildren']);

Route::get('/treeinstallation-flow/{treeinstallationId}', [TreeController::class, 'getStepFlow']);
Route::get('/treeinstallation-subcategories/{treeinstallationId}', [TreeController::class, 'getSubcategories']);
Route::get('/treeinstallation-children/{subcategoryId}', [TreeController::class, 'getChildren']);
Route::get('/treeinstallation-minichildren/{childId}', [TreeController::class, 'getMiniChildren']);

Route::get('/clothes-flow/{clothesId}', [ClothesController::class, 'getStepFlow']);
Route::get('/clothes-subcategories/{clothesId}', [ClothesController::class, 'getSubcategories']);
Route::get('/clothes-children/{subcategoryId}', [ClothesController::class, 'getChildren']);
Route::get('/clothes-minichildren/{childId}', [ClothesController::class, 'getMiniChildren']);

Route::middleware(['vendor'])->namespace('admin')->prefix('vendor')->group(function () {
    Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');

});




