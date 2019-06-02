@extends('admin.layouts.layout')
@section('content')
<!--***** CONTENT *****-->
<div class="card form" id="form2">
    <div class="card-header">
        <h3>添加商品</h3>
    </div>
    <br>
    <div class="row" style="margin: 20px;">
        <form action="{{ url('/admin/goods/save') }}" method="post" enctype="multipart/form-data">
        <div class="col-md-10">
            <div class="form-group row">
                <label for="example-text-input" style="width: 85px;" class=" col-form-label">商品名称</label>
                <div class="col-9">
                    <input class="form-control" name="goods_name" type="text" id="example-text-input">
                </div>
            </div>
            <div class="form-group row">
                <label for="example-search-input" style="width: 85px;" class=" col-form-label">商品编号</label>
                <div class="col-9">
                    <input class="form-control" name="goods_sn" type="text" id="example-text-input">

                </div>
            </div>
            <div class="form-group row">
                <label for="example-search-input" style="width: 85px;" class=" col-form-label">所属分类</label>
                <div class="col-9">
                    <select class="custom-select mb-2 mr-sm-2 mb-sm-0" name="cat_id" id="inlineFormCustomSelect">
                        <option selected="">选择...</option>
                        @foreach ($list as $k => $v)
                            <option value="{{ $v['cat_id'] }}">{{ $v['cat_name'] }}</option>
                        @endforeach
                    </select>
                </div>
            </div>
            <div class="form-group row">
                <label for="example-search-input" style="width: 85px;" class=" col-form-label">单价</label>
                <div class="col-9">
                    <input class="form-control" name="unit_price" type="number" id="example-text-input">

                </div>
            </div>
            <div class="form-group row">
                <label for="example-search-input" style="width: 85px;" class=" col-form-label">商品描述</label>
                <div class="col-9">
                    <input class="form-control" name="goods_desc" type="text" id="example-text-input">

                </div>
            </div>
            <div class="form-group row">
                <label for="example-search-input" style="width: 85px;" class=" col-form-label">图片</label>
                <div class="col-9">
                    <input type="file" name="goods_img">
                </div>
            </div>
            <input type="submit" class="btn btn-general btn-white" value="确认提交" />
        </div>
        </form>
    </div>
</div>
@endsection('content')
