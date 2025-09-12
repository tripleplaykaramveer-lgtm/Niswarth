<?php 

use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Route;

Route::get('/clearcache', function () {
    Artisan::call('cache:clear');
    Artisan::call('route:cache');
    Artisan::call('route:clear');
    Artisan::call('view:clear');
    Artisan::call('config:cache');
    
    return response()->json([
        'status' => 'success',
        'message' => 'All caches have been cleared.'
    ]);
});
