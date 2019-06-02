<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class GoodsModel extends Model
{
    //
    protected $connection = 'mysql';
    protected $table = 'yunji_goods';
    public $timestamps = false;

    protected $fillable = [
        'goods_id',
        'store_id',
        'cat_id',
        'cat_name',
        'goods_sn',
        'goods_name',
        'goods_number',
        'unit_price',
        'keywords',
        'goods_desc',
        'goods_img',
        'is_on_sale',
        'is_hot',
    ];
}
