<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CategoryModel extends Model
{
    //
    protected $connection = 'mysql';
    protected $table = 'yunji_category';
    public $timestamps = false;

    protected $fillable = [
        'cat_id' ,
        'cat_name' ,
        'category_img' ,
        'keywords' ,
        'cat_desc' ,
        'parent_id' ,
        'sort_order' ,
        'template_file' ,
        'measure_unit' ,
        'show_in_nav' ,
        'style' ,
        'is_show' ,
        'grade' ,
        'filter_attr' ,
    ];
}
