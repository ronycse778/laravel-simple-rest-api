<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\Api\UserController;
$apiIp = env('PKG_API_IP');

Route::prefix($apiIp)->group(function () {
    Route::get('/users', [UserController::class, 'index']);
    Route::get('/users/{id}', [UserController::class, 'show']);
    Route::post('/users', [UserController::class, 'store']);
    Route::put('/users/{id}', [UserController::class, 'update']);
    Route::delete('/users/{id}', [UserController::class, 'destroy']);

    Route::post('/user-list', [UserController::class, 'userList']);
});
