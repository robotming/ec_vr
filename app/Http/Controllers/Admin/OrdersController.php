<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class OrdersController extends Controller
{
    //
    public function index(Request $request) {
        return view('admin.index', [
            'title' => '首页'
        ]);
    }

    public function category() {
        return view('admin.category', [
            'title' => '首页'
        ]);
    }

    public function tables() {
        return view('admin.tables', [
            'title' => '首页'
        ]);
    }

    public function detail () {
        return view('admin.index', [
            'title' => '首页'
        ]);
    }
}
