<?php

namespace App\Http\Controllers\Admin;

use App\Models\CategoryModel;
use App\Models\GoodsModel;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;

class GoodsController extends Controller
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
        $list = app(GoodsModel::class)->offset($offset)->limit($pagesize)->orderby('cat_id', 'desc')->get()->toArray();


        $total = app(GoodsModel::class)->count();

        //
        $totalpage = ceil($total / $pagesize);

        foreach ($list as  $key => $val) {
//            $val['category_img'] = './ec/images/'.str_replace('data/category/', '', $val['category_img']);
            $list[$key] = $val;
        }

        $pagination = [
            'total' => $total,
            'total_page' => $totalpage,
            'page_size' => $pagesize,
            'page' => $page,
        ];
        return view('admin.goods.list', [
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

        return view('admin.goods.add', [
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

        $file = $request->file('goods_img');
        $filepath = '';
        if ($file) {
            $originalName = $file->getClientOriginalName(); // 文件原名
            $type = $file->getClientMimeType();     // image/jpeg
            if (!in_array($type, [
                'image/jpeg',
                'image/png',
            ])) {
                dd('图片格式不正确');
            }

            //获取文件的绝对路径
            $path = $file->getRealPath();
            $filepath = 'goods/' . date('Ymd'). '/' . $originalName;
            Storage::disk('public')->put($filepath, file_get_contents($path));
        }
        //
        $paramters['goods_img'] = $filepath;

        app(GoodsModel::class)->create($paramters);
        return redirect('/admin/goods/list');
    }

    /**
     * 编辑页面
     * @param Request $request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function modify(Request $request) {
        $id = (int)$request->get('id');

        $detail = app(GoodsModel::class)->where(['goods_id' => $id])->first();
        if ($detail) {
            $detail = $detail->toArray();
        }
        $list = app(CategoryModel::class)->get()->toArray();

        return view('admin.goods.modify', [
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
        if (empty($paramters['goods_id'])) {
            dd('记录错误');
        }

        $detail = app(GoodsModel::class)->where(['goods_id' => $paramters['goods_id']])->first();
        if (empty($detail)) {
            dd('记录错误');
        }
        $filepath = $detail['goods_img'];
        $file = $request->file('goods_img');
        if ($file) {
            $originalName = $file->getClientOriginalName(); // 文件原名
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
            $filepath = 'goods/' . date('Ymd'). '/' . $originalName;
            Storage::disk('public')->put($filepath, file_get_contents($path));
        }
        //
        $paramters['goods_img'] = $filepath;

        app(GoodsModel::class)->where(['goods_id' => $paramters['goods_id']])->update($paramters);
        return redirect('/admin/goods/list');
    }

    /**
     * 删除
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function delete(Request $request) {
        $id = (int)$request->get('id');
        app(GoodsModel::class)->where([
            'goods_id' => $id
        ])->delete();
        return redirect('/admin/goods/list');
    }
}
