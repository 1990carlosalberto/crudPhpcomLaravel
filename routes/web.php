<?php

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

Route::resource('/books','BookController' );
//Route::resource('/books/{book}/edit','BookController' );
//Route::resource('/books','BookController' );
//Route::resource('/public/{books}','bookController@show');
//Route::get('/books/', 'testeController@show');
//Route::resource('/book', BookController::class);

//Route::resource('/books/{books}','BookController');
//Route::resource('/books', 'BookController::class');
//Route::get('/books/public','BookController@show');
//Route::get('crud_laravel6/public/books/{books}','BookController@show');
//Route::resource('/public/books', BookController::class);