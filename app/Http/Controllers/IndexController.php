<?php

namespace App\Http\Controllers;

use App\Models\GoodsModel;
use Illuminate\Http\Request;
use App\Models\CategoryModel;
use App\Services\PublicService;

class IndexController extends Controller
{
    /**
     * 首页
     * @param Request $request
     * @return mixed
     */
    public function index(Request $request)
    {
        $list = app(CategoryModel::class)->get()->toArray();

        foreach ($list as  $key => $val) {
            $val['category_img'] = './ec/images/'.str_replace('data/category/', '', $val['category_img']);
            $list[$key] = $val;
        }
        $list = loop($list);

        return view('index.index', [
            'title' => '首页',
            'cat_list' => $list
        ]);
    }

    public function catList (Request $request) {
        $id = $request->route('id');

        $categorys = app(PublicService::class)->GetAllCategorys();
        $link = app(PublicService::class)->getParents($categorys, $id);
        $link = explode(',', $link);
        $categorys = app(PublicService::class)->loop($categorys);

        // 找到当前分类

        $temp = [];
        foreach ($categorys as $k => $v) {
            if ($v['cat_id'] == $link[0]){
                $temp = $v;
            }
        }
        $categoryt = $temp;
        $crumbs = ['','',''];
        $crumbs[0] = $categoryt['cat_name'];
        $categoryth = [];
        if (count($link) > 1) {
            foreach ($categoryt['children'] as $k => $v) {
                if ($v['cat_id'] == $link[1]){
                    $temp = $v;
                }
            }
            $categoryth = $temp;
            $crumbs[1] = $categoryth['cat_name'];

            if (count($link) > 2) {
                foreach ($categoryth['children'] as $k => $v) {
                    if ($v['cat_id'] == $link[2]){
                        $temp = $v;
                        $crumbs[2] = $temp['cat_name'];
                    }
                }
            }
        }
        // 面包屑end
        // 分类下物品
        $goodsList = app(GoodsModel::class)->where(['cat_id' => $id])->get()->toArray();
        foreach ($goodsList as $k => $v ){
            $v['store_name'] = '天天';
            $v['goods_img'] = '/goods_img/' . $v['goods_img'];
            $goodsList[$k] = $v;
        }

        return view('index.list', [
            'title' => '首页',
            'current_id' => $id,
            'categorys' => $categorys,
            'categoryt' => $categoryt,
            'categoryth' => $categoryth,
            'crumbs' => $crumbs,
            'goods_list' => $goodsList,
        ]);
    }

    public function detail (Request $request) {
        $id = $request->route('id');

        $goods = app(GoodsModel::class)->where(['goods_id' => $id])->first();
        if (empty($goods)) {
            dd('商品不存在');
        }
        $goods = $goods->toArray();
        return view('index.detail', [
            'title' => '首页',
            'goods' => $goods,
        ]);
    }

    public function file(Request $request)
    {
        if ($request->hasFile('file'))
        {
            $request->file('file')->store('upload');
            exit;
        }
        return view('index.file', [
            '' => ''
        ]);
    }
}


function loop ($list, $pid = 0) {
    $temp = [];

    foreach ($list as $key => $val) {
        if ($val['parent_id'] == $pid) {
            $val['children'] = loop($list, $val['cat_id']);
            $temp[] = $val;
        }
    }
    return $temp;
}