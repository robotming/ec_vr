<?php

namespace App\Http\Controllers\Admin;

use App\Models\CategoryModel;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;

class CategoryController extends Controller
{
    /**
     * 列表页面
     * @param Request $request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(Request $request) {
        $page = $request->get('page', 1);
        $pagesize = $request->get('page_size', 10);

        $offset = ($page - 1) * $pagesize;
        $list = app(CategoryModel::class)->offset($offset)->limit($pagesize)->orderby('cat_id', 'desc')->get()->toArray();


        $total = app(CategoryModel::class)->count();

        //
        $totalpage = ceil($total / $pagesize);

        foreach ($list as  $key => $val) {
            $val['category_img'] = './ec/images/'.str_replace('data/category/', '', $val['category_img']);
            $list[$key] = $val;
        }

        $pagination = [
            'total' => $total,
            'total_page' => $totalpage,
            'page_size' => $pagesize,
            'page' => $page,
        ];
        return view('admin.category.list', [
            'list' => $list,
            'title' => '首页',
            'pagination' => $pagination
        ]);
    }

    /**
     * 添加页面
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function add() {
        $list = app(CategoryModel::class)->select('cat_id', 'cat_name')->get()->toArray();

        return view('admin.category.add', [
            'title' => '首页',
            'list' => $list,
        ]);
    }

    /**
     * 保存操作
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function save(Request $request) {
        $paramters = $request->all();

        $file = $request->file('img');

        $ext = $file->getClientOriginalExtension();//获取文件的扩展名
        $originalName = $file->getClientOriginalName(); // 文件原名
        $realPath = $file->getRealPath();   //临时文件的绝对路径
        $type = $file->getClientMimeType();     // image/jpeg
        if (!in_array($type, [
            'image/jpeg',
            'image/png',
        ])) {
            dd('图片格式不正确');
        }

        //获取文件的绝对路径
        $path = $file->getRealPath();

        //
        $filepath = date('Ymd'). '/' . $originalName;
        Storage::disk('public')->put($filepath, file_get_contents($path));

        //
        $paramters['category_img'] = $filepath;

        app(CategoryModel::class)->create($paramters);
        return redirect('/admin/category/list');
    }

    /**
     * 编辑页面
     * @param Request $request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function modify(Request $request) {
        $id = (int)$request->get('id');

        $detail = app(CategoryModel::class)->where(['cat_id' => $id])->first();
        if ($detail) {
            $detail = $detail->toArray();
        }
        $list = app(CategoryModel::class)->select('cat_id', 'cat_name')->get()->toArray();

        return view('admin.category.modify', [
            'title' => '首页',
            'detail' => $detail,
            'list' => $list,
        ]);
    }

    /**
     * 保存操作
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function update(Request $request) {
        $paramters = $request->all();

        // 检查
        if (empty($paramters['cat_id'])) {
            dd('记录错误');
        }

        $detail = app(CategoryModel::class)->where(['cat_id' => $paramters['cat_id']])->first();
        if (empty($detail)) {
            dd('记录错误');
        }
        $filepath = $detail['category_img'];
        $file = $request->file('img');
        if ($file) {
            $ext = $file->getClientOriginalExtension();//获取文件的扩展名
            $originalName = $file->getClientOriginalName(); // 文件原名
            $realPath = $file->getRealPath();   //临时文件的绝对路径
            $type = $file->getClientMimeType();     // image/jpeg
            if (!in_array($type, [
                'image/jpeg',
                'image/png',
            ])) {
                dd('图片格式不正确');
            }

            //获取文件的绝对路径
            $path = $file->getRealPath();

            //
            $filepath = 'category/' . date('Ymd'). '/' . $originalName;
            Storage::disk('public')->put($filepath, file_get_contents($path));
        }
        //
        $paramters['category_img'] = $filepath;

        unset($paramters['img']);
        app(CategoryModel::class)->where(['cat_id' => $paramters['cat_id']])->update($paramters);
        return redirect('/admin/category/list');
    }

    /**
     * 删除
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function delete(Request $request) {
        $id = (int)$request->get('id');
        app(CategoryModel::class)->where([
            'cat_id' => $id
        ])->delete();
        return redirect('/admin/category/list');
    }
}
