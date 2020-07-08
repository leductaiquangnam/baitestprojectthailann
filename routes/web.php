<?php

use Illuminate\Support\Facades\Route;

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


Route::get('/','CategorysController@gettheloai')->name("theloai");

Route::get('danhmuctheloai/{id}','SubCategoryController@getdanhmuctheloai')->name("danhmuctheloai");

Route::get('danhmucsanpham/{id}','CategoryProductController@getdanhmucsanpham')->name("danhmucsanpham");

Route::get('chitietsanpham/{id}','CategoryProductController@getchitietsanpham')->name("chitietsanpham");

Route::get('cart','CartController@index')->name("cart");
Route::post('cart','CartController@store')->name("cartstore");

Route::delete('destroy/{id}','CartController@destroy')->name("cartdestroy");

Route::get('empty',function(){
     Cart::destroy();
});




Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
