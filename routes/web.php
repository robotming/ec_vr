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

Route::get('/', 'IndexController@index');
Route::get('/list/{id}', 'IndexController@catList');
Route::get('/detail/{id}', 'IndexController@detail');





// 后台路由组
Route::group(["prefix" => 'admin'],  function () {
    Route::get('/', 'Admin\AdminController@index');
    Route::get('/administration/list', 'Admin\AdminController@adminList');

    //    分类
    Route::get('/category/list', 'Admin\CategoryController@index');
    Route::get('/category/add', 'Admin\CategoryController@add');
    Route::post('/category/save', 'Admin\CategoryController@save');
    Route::any('/category/modify', 'Admin\CategoryController@modify');
    Route::any('/category/update', 'Admin\CategoryController@update');
    Route::any('/category/delete', 'Admin\CategoryController@delete');

    // 商品
    Route::get('/goods/list', 'Admin\GoodsController@index');
    Route::get('/goods/add', 'Admin\GoodsController@add');
    Route::post('/goods/save', 'Admin\GoodsController@save');
    Route::any('/goods/modify', 'Admin\GoodsController@modify');
    Route::any('/goods/update', 'Admin\GoodsController@update');
    Route::any('/goods/delete', 'Admin\GoodsController@delete');

    // 购物车
    Route::get('/cart/list', 'Admin\CartController@index');

    // 订单
    Route::get('/orders/list', 'Admin\OrdersController@index');
});



//
Route::get('/file', 'IndexController@file');
Route::post('/file', 'IndexController@file');
