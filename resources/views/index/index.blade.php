<!DOCTYPE html>
<!-- saved from url=(0025)http://ecjia.yunji.video/ -->
<html lang="zh-CN"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="Generator" content="ECJIA 1.43">

    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ECJia到家 - 同城上门O2O解决方案 - Powered by ECJia</title>
    <meta name="keywords" content="ECJia">
    <meta name="description" content="">
    {{--<link href="http://ecjia.yunji.video/content/uploads/data/assets/ecjia-intro/wap_logo.png" rel="shortcut icon bookmark">--}}

    <link rel="stylesheet" href="./ec/css/bootstrap.min.css">
    <link rel="stylesheet" href="./ec/css/iconfont.min.css">
    <link rel="stylesheet" href="./ec/css/style.css">
    <link rel="stylesheet" href="./ec/css/swiper.min.css">
</head>
<body>
<div class="main_content">



    <div class="ecjia-header fixed">
        <div class="ecjia-content">
            <div class="ecjia-fl ecjia-logo">
                <a href="http://ecjia.yunji.video/"><img class="wt-10" src="./ec/images/shop_logo.gif"></a>
                <div class="select-location">
                    <i class="icon-position"></i>
                    <span class="current-position">南京</span>
                    <span class="choose-city">切换位置</span>
                </div>
            </div>
            <div class="ecjia-fl search" data-url="http://ecjia.yunji.video/index.php?m=main&amp;c=index&amp;a=search">
                <input type="text" placeholder="搜索商品名称或商家" name="keywords" value="" autocomplete="off">
                <button class="button search-button" data-url="http://ecjia.yunji.video/index.php?m=goods&amp;c=index&amp;a=init"><i class="iconfont"></i></button>
                <ul class="shelper"></ul>
            </div>
            <div class="ecjia-fr">
                <ul class="nav">
                    <li class="active"><a href="http://ecjia.yunji.video/">首页</a></li>
                    <li><a class="merchant-list" href="http://ecjia.yunji.video/index.php?m=merchant&amp;c=store&amp;a=category">商家</a></li>
                    <li><a class="nopjax" href="http://ecjia.yunji.video/sites/app">下载APP</a></li>
                    <li><a class="nopjax" href="http://ecjia.yunji.video/sites/merchant/index.php?m=franchisee&amp;c=merchant&amp;a=init" target="_blank">商家入驻</a></li>
                    <li><a class="nopjax ecjia-back-green" href="http://ecjia.yunji.video/sites/merchant/index.php?m=staff&amp;c=privilege&amp;a=login" target="_blank">商家登录</a></li>
                </ul>
            </div>
        </div>
    </div>


    <div class="ecjia-category-nav">
        <div class="category-info ecjia-category">
            <div class="ecjia-category-info">
                @foreach ($cat_list as $catK => $catV)
                <div class="ecjia-category-info-l1">
                    <a class="ecjia-category-l2" href="{{ url("/list/{$catV['cat_id']}") }}">
                        <span class="category-icon"><img src="{{ $catV['category_img'] }}"></span>{{ $catV['cat_name'] }}
                        <i class="iconfont icon-jiantou-right"></i>
                    </a>
                    <div class="ecjia-category-info-l2">
                        <div class="cate_detail">
                            @foreach ($catV['children'] as $key => $val)
                            <dl class="cate_detail_item cate_detail_item_{{ $val['cat_id'] }}">
                                <dt class="cate_detail_tit">
                                    <a class="cate_detail_tit_lk" href="{{ url("/list/{$val['cat_id']}") }}">{{ $val['cat_name'] }}
                                        <i class="iconfont icon-jiantou-right"></i>
                                    </a>
                                </dt>
                                <dd class="cate_detail_con">
                                    @foreach ($val['children'] as $k => $v)
                                    <a class="cate_detail_con_lk" href="{{ url("/list/{$v['cat_id']}") }}">
                                        <img src="{{ $v['category_img'] }}">
                                        <span class="cat_name">{{ $v['cat_name'] }}</span>
                                    </a>
                                    @endforeach
                                </dd>
                            </dl>
                            @endforeach
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
        <div class="category-bg"></div>
    </div>

    <div class="ecjia-cycleimage">
        <div id="swiper-web" class="swiper-container swiper-container-horizontal swiper-container-fade">
            <div class="swiper-wrapper" style="transition-duration: 0ms;"><div class="swiper-slide swiper-slide-duplicate" style="background: url(&quot;http://ecjia.yunji.video/content/uploads/data/cycleimage/1492651353919196607.png&quot;) center center no-repeat; width: 1519px; transform: translate3d(0px, 0px, 0px); transition-duration: 0ms; opacity: 1;" data-swiper-slide-index="4">
                    <a href="https://cityo2o.ecjia.com/index.php?m=goods&amp;c=index&amp;a=init&amp;cat_id=1033"></a>
                </div>
                <div class="swiper-slide" style="background: url(&quot;http://ecjia.yunji.video/content/uploads/data/cycleimage/1492650806593974463.png&quot;) center center no-repeat; width: 1519px; transform: translate3d(-1519px, 0px, 0px); transition-duration: 0ms; opacity: 1;" data-swiper-slide-index="0">
                    <a href="https://cityo2o.ecjia.com/index.php?m=merchant&amp;c=store&amp;a=category&amp;cat_id=4"></a>
                </div>
                <div class="swiper-slide" style="background: url(&quot;http://ecjia.yunji.video/content/uploads/data/cycleimage/1492651290525993731.png&quot;) center center no-repeat; width: 1519px; transform: translate3d(-3038px, 0px, 0px); transition-duration: 0ms; opacity: 1;" data-swiper-slide-index="1">
                    <a href="https://cityo2o.ecjia.com/index.php?m=merchant&amp;c=goods&amp;a=init&amp;store_id=111"></a>
                </div>
                <div class="swiper-slide swiper-slide-prev" style="background: url(&quot;http://ecjia.yunji.video/content/uploads/data/cycleimage/1492651307128656813.png&quot;) center center no-repeat; width: 1519px; transform: translate3d(-4557px, 0px, 0px); transition-duration: 0ms; opacity: 1;" data-swiper-slide-index="2">
                    <a href="https://cityo2o.ecjia.com/index.php?m=merchant&amp;c=goods&amp;a=init&amp;store_id=60"></a>
                </div>
                <div class="swiper-slide swiper-slide-active" style="background: url(&quot;http://ecjia.yunji.video/content/uploads/data/cycleimage/1492651334051472978.png&quot;) center center no-repeat; width: 1519px; transform: translate3d(-6076px, 0px, 0px); transition-duration: 0ms; opacity: 1;" data-swiper-slide-index="3">
                    <a href="https://cityo2o.ecjia.com/index.php?m=merchant&amp;c=goods&amp;a=init&amp;store_id=109"></a>
                </div>
                <div class="swiper-slide swiper-slide-next" style="background: url(&quot;http://ecjia.yunji.video/content/uploads/data/cycleimage/1492651353919196607.png&quot;) center center no-repeat; width: 1519px; transform: translate3d(-7595px, 0px, 0px); transition-duration: 0ms; opacity: 0;" data-swiper-slide-index="4">
                    <a href="https://cityo2o.ecjia.com/index.php?m=goods&amp;c=index&amp;a=init&amp;cat_id=1033"></a>
                </div>
                <div class="swiper-slide swiper-slide-duplicate" style="background: url(&quot;http://ecjia.yunji.video/content/uploads/data/cycleimage/1492650806593974463.png&quot;) center center no-repeat; width: 1519px; transform: translate3d(-9114px, 0px, 0px); transition-duration: 0ms; opacity: 0;" data-swiper-slide-index="0">
                    <a href="https://cityo2o.ecjia.com/index.php?m=merchant&amp;c=store&amp;a=category&amp;cat_id=4"></a>
                </div></div>
            <div class="swiper-pagination swiper-index-pagination swiper-pagination-clickable"><span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet swiper-pagination-bullet-active"></span><span class="swiper-pagination-bullet"></span></div>
        </div>
    </div>
    <div class="ecjia-category-container ecjia-background-fff">
        <div class="ecjia-category-item" id="item-0">
            <div class="ecjia-category-content">
                <div class="cat-item cat-ul">水果蔬菜</div>
                <div class="category-list">
                    <li class="cat-item" data-id="1033"><span class="ecjia-back-green">水果</span></li>
                    <li class="cat-item" data-id="1034"><span>蔬菜</span></li>
                    <li class="cat-item" data-id="1277"><span>进口水果</span></li>
                    <li class="cat-item" data-id="1278"><span>时令水果</span></li>
                    <li class="cat-item" data-id="1276"><span>热带水果</span></li>
                </div>

                <div class="more-category"><a href="http://ecjia.yunji.video/index.php?m=goods&amp;c=index&amp;a=init&amp;cat_id=1033" data-url="http://ecjia.yunji.video/index.php?m=goods&amp;c=index&amp;a=init">更多<i class="iconfont icon-jiantou-right"></i></a></div>
                <div class="category-goods category-goods-1033">
                    <div class="goods-item">
                        <a href="http://ecjia.yunji.video/index.php?m=goods&amp;c=index&amp;a=show&amp;goods_id=430">
                            <img src="http://ecjia.yunji.video/content/uploads/images/201610/goods_img/430_G_1459971655294.jpg">
                            <div class="goods-name">以色列葡萄柚4个约250g/个</div>
                            <div class="item-list">
                                <span class="goods-price">￥30.00</span>
                                <span class="view-detail">查看详情</span>
                            </div>
                        </a>
                    </div>
                    <div class="goods-item">
                        <a href="http://ecjia.yunji.video/index.php?m=goods&amp;c=index&amp;a=show&amp;goods_id=433">
                            <img src="http://ecjia.yunji.video/content/uploads/images/201610/goods_img/433_G_1459127377813.jpg">
                            <div class="goods-name">菲律宾凤梨2个</div>
                            <div class="item-list">
                                <span class="goods-price">￥29.00</span>
                                <span class="view-detail">查看详情</span>
                            </div>
                        </a>
                    </div>
                    <div class="goods-item">
                        <a href="http://ecjia.yunji.video/index.php?m=goods&amp;c=index&amp;a=show&amp;goods_id=460">
                            <img src="http://ecjia.yunji.video/content/uploads/images/201610/goods_img/460_G_1459126720606.jpg">
                            <div class="goods-name">菲律宾香蕉约1.5kg</div>
                            <div class="item-list">
                                <span class="goods-price">￥29.90</span>
                                <span class="view-detail">查看详情</span>
                            </div>
                        </a>
                    </div>
                    <div class="goods-item">
                        <a href="http://ecjia.yunji.video/index.php?m=goods&amp;c=index&amp;a=show&amp;goods_id=461">
                            <img src="http://ecjia.yunji.video/content/uploads/images/201610/goods_img/461_G_1459127072318.jpg">
                            <div class="goods-name">泰国龙眼2KG装</div>
                            <div class="item-list">
                                <span class="goods-price">￥29.90</span>
                                <span class="view-detail">查看详情</span>
                            </div>
                        </a>
                    </div>
                    <div class="goods-item">
                        <a href="http://ecjia.yunji.video/index.php?m=goods&amp;c=index&amp;a=show&amp;goods_id=466">
                            <img src="http://ecjia.yunji.video/content/uploads/images/201610/goods_img/466_G_1459125813221.jpg">
                            <div class="goods-name">智利蜜甜珍珠无籽红提1kg</div>
                            <div class="item-list">
                                <span class="goods-price">￥59.00</span>
                                <span class="view-detail">查看详情</span>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="category-goods ecjiaf-dn category-goods-1034">
                    <div class="goods-item">
                        <a href="http://ecjia.yunji.video/index.php?m=goods&amp;c=index&amp;a=show&amp;goods_id=617">
                            <img src="http://ecjia.yunji.video/content/uploads/images/201610/goods_img/617_G_1459128638678.jpg">
                            <div class="goods-name">精选菜薹300g</div>
                            <div class="item-list">
                                <span class="goods-price">￥5.00</span>
                                <span class="view-detail">查看详情</span>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="category-goods ecjiaf-dn category-goods-1277">
                    <div class="goods-item">
                        <a href="http://ecjia.yunji.video/index.php?m=goods&amp;c=index&amp;a=show&amp;goods_id=460">
                            <img src="http://ecjia.yunji.video/content/uploads/images/201610/goods_img/460_G_1459126720606.jpg">
                            <div class="goods-name">菲律宾香蕉约1.5kg</div>
                            <div class="item-list">
                                <span class="goods-price">￥29.90</span>
                                <span class="view-detail">查看详情</span>
                            </div>
                        </a>
                    </div>
                    <div class="goods-item">
                        <a href="http://ecjia.yunji.video/index.php?m=goods&amp;c=index&amp;a=show&amp;goods_id=461">
                            <img src="http://ecjia.yunji.video/content/uploads/images/201610/goods_img/461_G_1459127072318.jpg">
                            <div class="goods-name">泰国龙眼2KG装</div>
                            <div class="item-list">
                                <span class="goods-price">￥29.90</span>
                                <span class="view-detail">查看详情</span>
                            </div>
                        </a>
                    </div>
                    <div class="goods-item">
                        <a href="http://ecjia.yunji.video/index.php?m=goods&amp;c=index&amp;a=show&amp;goods_id=468">
                            <img src="http://ecjia.yunji.video/content/uploads/images/201610/goods_img/468_G_1459127208058.jpg">
                            <div class="goods-name">法国青蛇果20个约190g/个</div>
                            <div class="item-list">
                                <span class="goods-price">￥79.00</span>
                                <span class="view-detail">查看详情</span>
                            </div>
                        </a>
                    </div>
                    <div class="goods-item">
                        <a href="http://ecjia.yunji.video/index.php?m=goods&amp;c=index&amp;a=show&amp;goods_id=393">
                            <img src="http://ecjia.yunji.video/content/uploads/images/201610/goods_img/393_G_1459126348866.jpg">
                            <div class="goods-name">越南红心火龙果2.5kg</div>
                            <div class="item-list">
                                <span class="goods-price">￥69.00</span>
                                <span class="view-detail">查看详情</span>
                            </div>
                        </a>
                    </div>
                    <div class="goods-item">
                        <a href="http://ecjia.yunji.video/index.php?m=goods&amp;c=index&amp;a=show&amp;goods_id=433">
                            <img src="http://ecjia.yunji.video/content/uploads/images/201610/goods_img/433_G_1459127377813.jpg">
                            <div class="goods-name">菲律宾凤梨2个</div>
                            <div class="item-list">
                                <span class="goods-price">￥29.00</span>
                                <span class="view-detail">查看详情</span>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="category-goods ecjiaf-dn category-goods-1278">
                    <div class="goods-item">
                        <a href="http://ecjia.yunji.video/index.php?m=goods&amp;c=index&amp;a=show&amp;goods_id=461">
                            <img src="http://ecjia.yunji.video/content/uploads/images/201610/goods_img/461_G_1459127072318.jpg">
                            <div class="goods-name">泰国龙眼2KG装</div>
                            <div class="item-list">
                                <span class="goods-price">￥29.90</span>
                                <span class="view-detail">查看详情</span>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="category-goods ecjiaf-dn category-goods-1276">
                    <div class="goods-item">
                        <a href="http://ecjia.yunji.video/index.php?m=goods&amp;c=index&amp;a=show&amp;goods_id=433">
                            <img src="http://ecjia.yunji.video/content/uploads/images/201610/goods_img/433_G_1459127377813.jpg">
                            <div class="goods-name">菲律宾凤梨2个</div>
                            <div class="item-list">
                                <span class="goods-price">￥29.00</span>
                                <span class="view-detail">查看详情</span>
                            </div>
                        </a>
                    </div>
                    <div class="goods-item">
                        <a href="http://ecjia.yunji.video/index.php?m=goods&amp;c=index&amp;a=show&amp;goods_id=461">
                            <img src="http://ecjia.yunji.video/content/uploads/images/201610/goods_img/461_G_1459127072318.jpg">
                            <div class="goods-name">泰国龙眼2KG装</div>
                            <div class="item-list">
                                <span class="goods-price">￥29.90</span>
                                <span class="view-detail">查看详情</span>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="J_f J_lift lift" id="lift" style="left: 89.5px;">
        <ul class="lift_list">
        </ul>
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
                        <li><a href="https://ecjia.com/" title="ECJia" target="_blank"><img src="./ec/images/1516064370074434971.png" width="110" height="auto"></a></li>
                        <li><a href="https://daojia.ecjia.com/app_deliver.html" title="ECJia配送员" target="_blank"><img src="./ec/images/1516064454522712258.png" width="110" height="auto"></a></li>
                        <li><a href="https://daojia.ecjia.com/" title="ECJia到家" target="_blank"><img src="./ec/images/1516065080563470058.png" width="110" height="auto"></a></li>
                        <li><a href="https://sms.ecjia.com/" title="ECJia云短信" target="_blank"><img src="./ec/images/1516065143412858667.png" width="110" height="auto"></a></li>
                        <li><a href="https://daojia.ecjia.com/app_street.html" title="ECJia店铺街" target="_blank"><img src="./ec/images/1516064398084199921.png" width="110" height="auto"></a></li>
                        <li><a href="https://daojia.ecjia.com/app_shopkeeper.html" title="ECJia掌柜" target="_blank"><img src="./ec/images/1516064416107998015.png" width="110" height="auto"></a></li>
                        <li><a href="http://www.dscmall.cn/" title="大商创" target="_blank"><img src="./ec/images/1516064461322168913.png" width="110" height="auto"></a></li>
                        <li><a href="http://www.ecmoban.com/" title="模板堂" target="_blank"><img src="./ec/images/1516064468293462321.png" width="110" height="auto"></a></li>
                        <li><a href="https://www.ectouch.cn/" title="ECTouch" target="_blank"><img src="./ec/images/1516064475491192193.png" width="110" height="auto"></a></li>
                    </ul>

                </div>
            </div>

        </div>
    </div>

    <div class="page-footer">
        <div class="outlink">
		        <span>
            <a class="blog-ico" href="http://weibo.com/ECMBT" target="_blank"></a>
        </span>
            <span class="outlink-qrcode">
            <div class="wechat-code">
				<img src="./ec/images/shop_wechat_qrcode.jpg">
				<span>打开微信扫一扫关注</span>
			</div>
			<a class="wechat" href="javascript:void(0)"></a>
		</span>
        </div>
        <div class="footer-links">
            <p>
                <a class="nopjax" target="_blank" href="http://ecjia.yunji.video/sites/help/index.php?m=article&amp;c=info&amp;a=init&amp;aid=101">公司简介</a>
                <a class="nopjax" target="_blank" href="http://ecjia.yunji.video/sites/help/index.php?m=article&amp;c=info&amp;a=init&amp;aid=104">联系我们</a>
                <a class="nopjax" target="_blank" href="http://ecjia.yunji.video/sites/help/index.php?m=article&amp;c=info&amp;a=init&amp;aid=107">使用条款</a>
                <a class="nopjax" target="_blank" href="http://ecjia.yunji.video/sites/help/index.php?m=article&amp;c=info&amp;a=init&amp;aid=108">隐私协议</a>

            </p>
        </div>
        <p>上海商创网络科技有限公司 版权所有 &nbsp;&nbsp;<a href="http://www.miibeian.gov.cn/" target="_blank"> 沪ICP备20170120号</a>&nbsp;&nbsp;<a href="http://www.ecjia.com/" target="_blank">Powered&nbsp;by&nbsp;<strong><span style="color: #3366FF">ECJia</span></strong></a></p>
        <p>地址：上海市中山北路3553号伸大厦301   咨询热线：4001-021-758</p>
    </div>
    <script src="./ec/js/hm.js"></script><script>
        var _hmt = _hmt || [];
        (function() {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?45572e750ba4de1ede0e776212b5f6cd";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>
    <div class="choose-city-div" style="left: 434.5px; top: 37.5px;">
        <div class="city-content">
            <div class="header">
                <div class="title">选择城市</div>
                <span class="close_div">X</span>
            </div>
            <div class="content">
                <div class="content-position">
                    <div class="guess-position">当前定位城市</div>
                    <div class="position">
                        <li class="position-li select-city-li active" data-id="CN3201"><i class="icon-position"></i>南京
                        </li></div>
                </div>

                <div class="ecjia-history-city"><h2 class="history-city-title"><span>历史访问城市</span></h2><ul class="history-city-list"><li class="data-li"><p class="select-city-li" data-id="CN3201">南京</p></li></ul></div>

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
            <a class="back_top j-back-top a" style="display: none;"><i>back_top</i></a>
        </div>
    </div>
</div>

<script type="text/javascript" src="./ec/js/jquery.min.js"></script>
<script type="text/javascript" src="./ec/js/jquery.pjax.js"></script>
<script type="text/javascript" src="./ec/js/jquery.cookie.js"></script>
<script type="text/javascript" src="./ec/js/ecjia.js"></script>
<script type="text/javascript" src="./ec/js/swiper.min.js"></script>
<script type="text/javascript" src="./ec/js/jquery.localstorage.js"></script>
<script type="text/javascript">var theme_url = "http://ecjia.yunji.video/content/themes/ecjia-pc/";</script>


<script type="text/javascript" src="./ec/js/ecjia.pc.raty.js"></script>
<script type="text/javascript" src="./ec/js/ecjia.pc.koala.js"></script>
<script type="text/javascript" src="./ec/js/ecjia.pc.js"></script>

<script type="text/javascript">
    sessionStorage.removeItem('index_swiper');
    ecjia.pc.init();
</script>



</body></html>