<?php
namespace App\Services;

class PublicService {
    public function GetAllCategorys () {
        $categorys = app(\App\Models\CategoryModel::class)->get()->toArray();
        return $categorys;
    }

    public function loop ($data, $pid = 0) {
        $temp = [];
        foreach ($data as $k => $v) {
            if ($v['parent_id'] == $pid) {
                $v['children'] = $this->loop($data, $v['cat_id']);
                $temp[] = $v;
            }
        }
        return $temp;
    }

    public function getParents ($data, $catid) {
        $temp = '';
        foreach ($data as $k => $v) {
            if ($v['cat_id'] == $catid) {
                if ($v['parent_id'] == 0) {
                    return $v['cat_id'];
                }
                $temp .= $this->getParents($data, $v['parent_id']) . ',' . $v['cat_id'] ;
            }
        }
        return $temp;
    }
}