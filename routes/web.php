<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BlogsController;
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

Route::get('/',[BlogsController::class,'blogs'])->name('blogs');
Route::get('/blog/{id}',[BlogsController::class,'blog'])->name('blog');
Route::post('/blog/vote/{blog_id}',[BlogsController::class,'vote'])->name('vote');
