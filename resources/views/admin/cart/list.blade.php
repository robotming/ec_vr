@extends('admin/layouts/layout')
@section('content')
<!--***** CONTENT *****-->
<a href="{{ url('admin/category/add') }}" class="btn btn-general btn-white">添加分类</a>
<div class="row">
    <table class="table table-hover">
        <thead>
        <tr class="bg-info text-white">
            <th>#</th>
            <th>名称</th>
            <th>图片</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        @foreach ($list as $k => $item)
        <tr class="table-danger table-warning table-success table-info">
            <th scope="row">{{ $item['cat_id'] }}</th>
            <td>{{ $item['cat_name'] }}</td>
            <td><img src="{{ asset("$item[category_img]") }}" alt="" width="50" height="50"></td>
            <td>操作</td>
        </tr>
        @endforeach
        </tbody>
    </table>
</div>
@endsection('content')
