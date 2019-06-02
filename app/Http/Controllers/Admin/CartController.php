<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class CartController extends Controller
{
    //
    public function index(Request $request) {
        return view('admin.cart.list', [
            'title' => '首页'
        ]);
    }
}
