<?php

use App\Http\Controllers\AuthenticationController;
use App\Http\Controllers\CustomerController;
use App\Models\Customer;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/customersInfo', [CustomerController::class, 'indexAPI']);
Route::get('/customerSearch/{name}', [CustomerController::class, 'searchAPI']);

Route::post('/register', [AuthenticationController::class,'register']);
Route::post('/login', [AuthenticationController::class,'login']);

Route::middleware('auth:sanctum')->group(
    function()
    {
        Route::post('/customerStore', [CustomerController::class, 'storeAPI']);
        Route::put('/customerUpdate/{id}', [CustomerController::class , 'updateAPI']);
        Route::delete('/customerDelete/{id}' , [CustomerController::class, 'destroyAPI']);
        Route::get('/customerShow/{id}', [CustomerController::class, 'showAPI']);
        Route::post('/logout', [AuthenticationController::class, 'logout']);
    }
);

