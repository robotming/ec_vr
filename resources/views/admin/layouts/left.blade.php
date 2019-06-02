<div class="sidebar-header d-flex align-items-center">
    <div class="avatar"><img src="{{asset('img/avatar-1.jpg')}}" alt="..." class="img-fluid rounded-circle"></div>
    <div class="title">
        <h1 class="h4">Steena Ben</h1>
    </div>
</div>
<hr>
<!-- Sidebar Navidation Menus-->
<ul class="list-unstyled">
    <li class="active"> <a href="{{ url('Admin') }}"><i class="icon-home"></i>主页</a></li>
    <li><a href="#admins" aria-expanded="false" data-toggle="collapse"> <i class="icon-interface-windows"></i>管理员管理 </a>
        <ul id="admins" class="collapse list-unstyled">
            <li><a href="{{ url('/admin/administration/list') }}">管理员列表</a></li>
            <li><a href="{{ url('/admin/permission/list') }}">权限列表</a></li>
        </ul>
    </li>
    <li><a href="#category" aria-expanded="false" data-toggle="collapse"> <i class="icon-interface-windows"></i>分类管理 </a>
        <ul id="category" class="collapse list-unstyled">
            <li><a href="{{ url('/admin/category/list') }}">分类列表</a></li>
        </ul>
    </li>
    <li><a href="#goods" aria-expanded="false" data-toggle="collapse"> <i class="fa fa-building-o"></i>物品管理 </a>
        <ul id="goods" class="collapse list-unstyled">
            <li><a href="{{ url('/admin/goods/list') }}">物品列表</a></li>
        </ul>
    </li>
    <li><a href="#carts" aria-expanded="false" data-toggle="collapse"> <i class="fa fa-file-o"></i>购物车管理 </a>
        <ul id="carts" class="collapse list-unstyled">
            <li><a href="{{ url('/admin/cart/list') }}">购物车列表</a></li>
        </ul>
    </li>
    <li><a href="#orders" aria-expanded="false" data-toggle="collapse"> <i class="fa fa-file-o"></i>订单管理 </a>
        <ul id="orders" class="collapse list-unstyled">
            <li><a href="{{ url('/admin/orders/list') }}">订单列表</a></li>
        </ul>
    </li>
</ul>
{{--<span class="heading">Extras</span>--}}
{{--<ul class="list-unstyled">--}}
    {{--<li> <a href="#"> <i class="icon-picture"></i>Demo </a></li>--}}
{{--</ul>--}}