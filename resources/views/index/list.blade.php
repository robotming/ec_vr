
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta name="Generator" content="ECJIA 1.43" />
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>商品列表-ECJia到家 - 同城上门O2O解决方案 - Powered by ECJia</title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />

    <link rel="stylesheet" href="{{ asset('ec/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('ec/css/iconfont.min.css') }}">
    <link rel="stylesheet" href="{{ asset('ec/css/style.css') }}">
    <link rel="stylesheet" href="{{ asset('ec/css/swiper.min.css') }}">
</head>
<body>
<div class="main_content">



    <div class="ecjia-header fixed">
        <div class="ecjia-content">
            <div class="ecjia-fl ecjia-logo">
                <a href="http://ecjia.yunji.video"><img class="wt-10" src="http://ecjia.yunji.video/content/uploads/data/assets/ecjia-intro/shop_logo.gif"></a>
                <div class="select-location">
                    <i class="icon-position"></i>
                    <span class="current-position">上海</span>
                    <span class="choose-city">切换位置</span>
                </div>
            </div>
            <div class="ecjia-fl search">
                <input type="text" placeholder="搜索商品名称或商家" name="keywords" value="" autocomplete="off"/>
                <button class="button search-button"><i class="iconfont"></i></button>
                <ul class="shelper"></ul>
            </div>
            <div class="ecjia-fr">
                <ul class="nav">
                    <li ><a href="http://ecjia.yunji.video">首页</a></li>
                    <li ><a class="merchant-list">商家</a></li>
                    <li><a class="nopjax" target="_blank">商家入驻</a></li>
                    <li><a class="nopjax ecjia-back-green" target="_blank">商家登录</a></li>
                </ul>
            </div>
        </div>
    </div>


    <div class="ecjia-goods-list">
        <div class="goods-category ecjia-content">
            <span class="category-item">所有分类</span>
            <span class="category-item"><i class="iconfont icon-jiantou-right"></i><a><span class="">{{ $crumbs[0] }}</span></a></span>
            <span class="category-item"><i class="iconfont icon-jiantou-right"></i><a><span class="">{{ $crumbs[1] }}</span></a></span>
            <span class="category-item"><i class="iconfont icon-jiantou-right"></i><a><span class="ecjia-green">{{ $crumbs[2] }}</span></a></span>
        </div>
        <div class="goods-category ecjia-content category-list">
            <div class="category-item-list">
                <span class="category-item">分类：</span>
                <span class="category-item  @if ($current_id == $categoryt['cat_id'])curr @endif "><a href="{{ url('list') . '/' . $categoryt['cat_id'] }}">全部</a></span>
                @foreach ($categoryt['children'] as $k => $v)
                <span class="category-item @if ($current_id == $v['cat_id'])curr @endif ">
                    <a class="cat-ul" href="{{ url('list') . '/' . $v['cat_id'] }}">{{ $v['cat_name'] }}</a>
                </span>
                @endforeach
            </div>
            @if (count($categoryth) > 0)
            <div class="sub-category">
                <div class="sub-cat" style="display:block;">
                    <a class="cat-li " href="{{ url('list') . '/' . $categoryth['cat_id'] }}">全部</a>
                    @foreach($categoryth['children'] as $k => $v)
                    <a class="cat-li  @if ($current_id == $v['cat_id'])active @endif" href="{{ url('list') . '/' . $v['cat_id'] }}">{{ $v['cat_name'] }}</a>
                    @endforeach
                </div>
            </div>
            @endif
        </div>

        <div class="ecjia-content goods-list">
            <div class="goods-list-left">
                <div class="f-line">
                    <div class="f-sort">
                        <a href="http://ecjia.yunji.video/index.php?m=goods&c=index&a=init&cat_id=1048&select_id=1051&type=all" class="curr">全部商品</a>
                        <a href="http://ecjia.yunji.video/index.php?m=goods&c=index&a=init&cat_id=1048&select_id=1051&type=hot" class="">热门推荐</a>
                        <a class="" href="http://ecjia.yunji.video/index.php?m=goods&c=index&a=init&cat_id=1048&select_id=1051&sort_by=sales_volume&sort_order=desc">
                            销量<i class="iconfont icon-jiantou-bottom"></i>
                        </a>
                        <a class="" href="http://ecjia.yunji.video/index.php?m=goods&c=index&a=init&cat_id=1048&select_id=1051&sort_by=shop_price&sort_order=desc">
                            价格<i class="iconfont icon-jiantou-top"></i>
                        </a>
                    </div>
                </div>
                <div class="f-list">
                    @foreach($goods_list as $k => $v)
                    <div class="goods-item">
                        <a href="{{ url("/detail"). '/' . $v['goods_id']  }}">
                            <img src="{{ $v['goods_img'] }}">
                            <div class="goods-name">{{ $v['goods_name'] }}</div>
                            <div class="shop-name">
                                <i class="icon-merchant"></i>
                                <span class="name">{{ $v['store_name'] }}</span>
                            </div>
                            <div class="item-list">
                                <span class="goods-price">{{ $v['unit_price'] }}</span>
                                <span class="view-detail">查看详情</span>
                            </div>
                        </a>
                    </div>
                    @endforeach
                    <!--<p class="no_goods">很抱歉，没有找到相关的商品</p>-->
                </div>
            </div>
            <div class="goods-list-right">
                <div class="right-title">推荐商家</div>
                <p class="no_store">很抱歉，没有找到相关的商家</p>
            </div>
        </div>
    </div>

    <div class="ecjia-page-footer">
        <div class="foot-top">
            <p>特色<span class="ecjia-green">到家</span>平台</p>
            <p class="">品类齐全，轻松购物，为您呈现不一样的生活服务平台</p>
            <div class="helper">
                <div class="mod" data-spm-ab="1">
                    <div class="mod-wrap">
                        <h4>
                            <i class="icon-foot-1"></i>
                            <div>正品保障</div>
                            <div>正品行货，放心选购</div>
                        </h4>
                    </div>
                </div>

                <div class="mod" data-spm-ab="2">
                    <div class="mod-wrap">
                        <h4>
                            <i class="icon-foot-2"></i>
                            <div>产地直采</div>
                            <div>100%产地直采，放心低价</div>
                        </h4>
                    </div>
                </div>

                <div class="mod" data-spm-ab="3">
                    <div class="mod-wrap">
                        <h4>
                            <i class="icon-foot-3"></i>
                            <div>准时送达</div>
                            <div>收货时间，自主选择</div>
                        </h4>
                    </div>
                </div>

                <div class="mod" data-spm-ab="4">
                    <div class="mod-wrap">
                        <h4>
                            <i class="icon-foot-4"></i>
                            <div>售后无忧</div>
                            <div>客服全年无休，用户体验至上</div>
                        </h4>
                    </div>
                </div>
            </div>
            <div class="hot-city">
                <div class="hot-city-left">经营城市</div>
                <div class="hot-city-right">
                    <li class="position-li select-city-li" data-id="CN1101">北京</li>
                    <li class="position-li select-city-li" data-id="CN3301">杭州</li>
                    <li class="position-li select-city-li" data-id="CN3201">南京</li>
                    <li class="position-li select-city-li" data-id="CN1301">石家庄</li>
                    <li class="position-li select-city-li" data-id="CN3101">上海</li>
                    <li class="position-li select-city-li" data-id="CN1401">太原</li>
                </div>
            </div>

            <div class="friend-link">
                <div class="friend-link-title">合作伙伴</div>
                <div class="friend-link-content">
                    <ul class="link-content">

                    </ul>

                </div>
            </div>

        </div>
    </div>

    <div class="page-footer">
        <div class="footer-links">
            <p>
                <a class="nopjax" target="_blank">公司简介</a>
                <a class="nopjax" target="_blank">联系我们</a>
                <a class="nopjax" target="_blank">使用条款</a>
                <a class="nopjax" target="_blank">隐私协议</a>

            </p>
        </div>
        <p>地址：   咨询热线：400-021-6666</p>
    </div>
    <div class="choose-city-div">
        <div class="city-content">
            <div class="header">
                <div class="title">选择城市</div>
                <span class="close_div">X</span>
            </div>
            <div class="content">
                <div class="content-position">
                    <div class="guess-position">当前定位城市</div>
                    <div class="position">
                        <li class="position-li select-city-li active" data-id="CN3101"><i class="icon-position"></i>上海</i>
                    </div>
                </div>

                <div class="ecjia-history-city"></div>

                <div class="ecjia-select-city">

                    <div id="showLetter" class="showLetter"><span>A</span></div>

                    <div class="city-container">
                        <div class="city-list">
                            <div class="city-item">
                                <span class="city-letter" id="B1">B</span>
                                <div class="city-li"><p class="select-city-li" data-id="CN1101">北京</p></div>
                            </div>
                            <div class="city-item">
                                <span class="city-letter" id="H1">H</span>
                                <div class="city-li"><p class="select-city-li" data-id="CN3301">杭州</p></div>
                            </div>
                            <div class="city-item">
                                <span class="city-letter" id="N1">N</span>
                                <div class="city-li"><p class="select-city-li" data-id="CN3201">南京</p></div>
                            </div>
                            <div class="city-item">
                                <span class="city-letter" id="S1">S</span>
                                <div class="city-li"><p class="select-city-li" data-id="CN1301">石家庄</p></div>
                                <div class="city-li"><p class="select-city-li" data-id="CN3101">上海</p></div>
                            </div>
                            <div class="city-item">
                                <span class="city-letter" id="T1">T</span>
                                <div class="city-li"><p class="select-city-li" data-id="CN1401">太原</p></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="letter">
                <ul>
                    <li><a href="javascript:;" data-top="top">定位</a></li>
                    <li><a href="javascript:;">B</a></li>
                    <li><a href="javascript:;">H</a></li>
                    <li><a href="javascript:;">N</a></li>
                    <li><a href="javascript:;">S</a></li>
                    <li><a href="javascript:;">T</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="choose-city-overlay"></div>

    <div class="suspension">
        <div class="suspension-box">

            <div class="suspension-box-item">
                <a class="a tel j-icon"><i>tel</i></a>
                <div class="tel j-box">
                    <strong>服务热线：</strong>
                    <p>4001-021-758</p>
                    <i></i>
                </div>
            </div>

            <div class="suspension-box-item">
                <a class="code j-icon a"><i>code</i></a>
                <div class="code j-box">
                    <img src="./ec/images/shop_wechat_qrcode.jpg">
                    <p>
                        扫一扫，微信关注EC+到家
                    </p>
                    <i></i>
                </div>
            </div>
            <a class="back_top j-back-top a"><i>back_top</i></a>
        </div>
    </div>
</div>

<script type="text/javascript" src="./ec/js/jquery.min.js" ></script>
<script type="text/javascript" src="./ec/js/jquery.pjax.js" ></script>
<script type="text/javascript" src="./ec/js/jquery.cookie.js" ></script>
<script type="text/javascript" src="./ec/js/ecjia.js" ></script>
<script type="text/javascript" src="./ec/js/swiper.min.js"></script>
<script type="text/javascript" src="./ec/js/jquery.localstorage.js"></script>
<script type="text/javascript">var theme_url = "http://ecjia.yunji.video/content/themes/ecjia-pc/";</script>


<script type="text/javascript" src="./ec/js/ecjia.pc.raty.js" ></script>
<script type="text/javascript" src="./ec/js/ecjia.pc.koala.js" ></script>
<script type="text/javascript" src="./ec/js/ecjia.pc.js" ></script>

<script type="text/javascript">
    ecjia.pc.init();
</script>

</body>
</html>
