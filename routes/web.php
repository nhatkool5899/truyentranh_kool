<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\truyenController;
use App\Http\Controllers\categoryController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\adminController;
use App\Http\Controllers\ChapterController;
use Illuminate\Support\Facades\Artisan;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [HomeController::class, 'index']);
Route::get('/truyen-info/{id}', [HomeController::class, 'truyen']);
Route::get('/home', [HomeController::class, 'index']);
Route::get('/danhmuc/{slug}', [HomeController::class, 'danhmuc']);
Route::get('/theloai', [HomeController::class, 'theloai']);
Route::get('/wishlist', [HomeController::class, 'wishlist']);
Route::get('/visited', [HomeController::class, 'visited']);
Route::get('/quocgia/{slug}', [HomeController::class, 'quocgia']);
Route::get('/search', [HomeController::class, 'search']);
Route::get('/truyen-info/{slug}', [HomeController::class, 'truyen']);
Route::get('/tukhoa', [HomeController::class, 'tukhoa']);
Route::get('{slug_truyen}/chap-{chapter}', [HomeController::class, 'view_chapter']);

Route::post('/search-ajax', [HomeController::class, 'search_ajax']);

Route::get('/admin', [adminController::class, 'index']);
Route::get('/dashboard', [adminController::class, 'show_dashboard']);
Route::post('/admin-dashboard', [adminController::class, 'dashboard']);

Route::resource('/danhmuc-admin', categoryController::class);
Route::resource('/truyen', truyenController::class);
Route::resource('/chapter', ChapterController::class);


Route::get('/custom_error', function(){
    return Artisan::call('php artisan vendor:publish --tag=laravel-errors');
});
