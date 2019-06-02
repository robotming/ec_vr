@extends('admin/layouts/layout')
@section('content')
<!--***** CONTENT *****-->
<a href="{{ url('admin/goods/add') }}" class="btn btn-general btn-white">添加商品</a>
<div class="row">
    <table class="table table-hover">
        <thead>
        <tr class="bg-info text-white">
            <th>#</th>
            <th>商品名称</th>
            <th>商品图片</th>
            <th>商品描述</th>
            <th>所属分类</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        @foreach ($list as $k => $item)
        <tr class="table-danger table-warning table-success table-info">
            <th scope="row">{{ $item['goods_id'] }}</th>
            <td>{{ $item['goods_name'] }}</td>
            <td><img src="{{ asset("$item[goods_img]") }}" alt="" width="50" height="50"></td>
            <td>{{ $item['goods_desc'] }}</td>
            <td>{{ $item['cat_name'] }}</td>
            <td>
                <a href="{{ url('/admin/goods/modify').'?id='.$item['goods_id'] }}">修改</a>
                <a href="{{ url('/admin/goods/delete').'?id='.$item['goods_id'] }}">删除</a>
            </td>
        </tr>
        @endforeach
        </tbody>
    </table>
    <div>
        @for ($i = 1; $i <= $pagination['total_page']; $i++)
            <a class="btn btn-general btn-white" href="{{ url('admin/goods/list').'?page='.$i }}">{{ $i }}</a>
        @endfor
    </div>
</div>
@endsection('content')
