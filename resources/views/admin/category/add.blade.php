@extends('admin.layouts.layout')
@section('content')
<!--***** CONTENT *****-->
<div class="card form" id="form2">
    <div class="card-header">
        <h3>添加分类</h3>
    </div>
    <br>
    <div class="row" style="margin: 20px;">
        <form action="{{ url('/admin/category/save') }}" method="post" enctype="multipart/form-data">
        <div class="col-md-10">
            <div class="form-group row">
                <label for="example-text-input" style="width: 85px;" class=" col-form-label">分类名称</label>
                <div class="col-9">
                    <input class="form-control" name="cat_name" type="text" id="example-text-input">
                </div>
            </div>
            <div class="form-group row">
                <label for="example-search-input" style="width: 85px;" class=" col-form-label">父集</label>
                <div class="col-9">
                    <select class="custom-select mb-2 mr-sm-2 mb-sm-0" name="parent_id" id="inlineFormCustomSelect">
                        <option selected="">选择...</option>
                        @foreach ($list as $k => $v)
                        <option value="{{ $v['cat_id'] }}">{{ $v['cat_name'] }}</option>
                        @endforeach
                    </select>
                </div>
            </div>
            <div class="form-group row">
                <label for="example-search-input" style="width: 85px;" class=" col-form-label">图片</label>
                <div class="col-9">
                    <input type="file" name="img">
                </div>
            </div>
            <input type="submit" class="btn btn-general btn-white" value="确认提交" />
        </div>
        </form>
    </div>
</div>
@endsection('content')
