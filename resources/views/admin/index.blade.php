@extends('admin.layouts.layout')
@section('content')
<!--***** REPORT-1 *****-->
<div class="row" id="report1">
    <div class="col-sm-3">
        <div class="card">
            <div class="card-block">
                <div class="text-left report1-cont">
                    <h2 class="font-light m-b-0"><i class="ti-arrow-up text-success"></i> $9,220</h2>
                    <span class="text-muted">Todays Income</span>
                </div>
                <span class="text-success">80%</span>
                <div class="progress">
                    <div class="progress-bar bg-success" role="progressbar" style="width: 80%; height: 6px;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p><small>Last month 10% Growth</small></p>
            </div>
        </div>
    </div>
    <div class="col-sm-3">
        <div class="card">
            <div class="card-block">
                <div class="text-left report1-cont">
                    <h2 class="font-light m-b-0"><i class="ti-arrow-up text-danger"></i> $5,530</h2>
                    <span class="text-muted">Gross Profit</span>
                </div>
                <span class="text-danger">43%</span>
                <div class="progress">
                    <div class="progress-bar bg-danger" role="progressbar" style="width: 43%; height: 6px;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p><small>Last month 10% Growth</small></p>
            </div>
        </div>
    </div>
    <div class="col-sm-3">
        <div class="card">
            <div class="card-block">
                <div class="text-left report1-cont">
                    <h2 class="font-light m-b-0"><i class="ti-arrow-up text-warning"></i> $3,620</h2>
                    <span class="text-muted">Interest Expenses </span>
                </div>
                <span class="text-warning">53%</span>
                <div class="progress">
                    <div class="progress-bar bg-warning" role="progressbar" style="width: 53%; height: 6px;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p><small>Last month 10% Growth</small></p>
            </div>
        </div>
    </div>
    <div class="col-sm-3">
        <div class="card">
            <div class="card-block">
                <div class="text-left report1-cont">
                    <h2 class="font-light m-b-0"><i class="ti-arrow-up text-info"></i> $82,600</h2>
                    <span class="text-muted">Net Profit</span>
                </div>
                <span class="text-info">70%</span>
                <div class="progress">
                    <div class="progress-bar bg-info" role="progressbar" style="width: 70%; height: 6px;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <p><small>Last month 10% Growth</small></p>
            </div>
        </div>
    </div>
</div>

<!--***** REPORT-2 *****-->
<div class="row" id="report2">
    <div class="col-md-4">
        <div class="card card-c1">
            <div class="card-header card-chart" data-background-color="green">
                <canvas class="ct-chart" id="myChart1" height="250"></canvas>
            </div>
            <div class="card-content">
                <h4 class="title">Daily Sales</h4>
                <p class="category">
                    <span class="text-success"><i class="fa fa-long-arrow-up"></i> 55% </span> increase in today sales.</p>
            </div>
            <div class="card-footer">
                <div class="stats">
                    <i class="fa fa-clock-o"></i> updated 4 minutes ago
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="card card-c1">
            <div class="card-header card-chart" data-background-color="orange">
                <canvas class="ct-chart" id="myChart2" height="250"></canvas>
            </div>
            <div class="card-content">
                <h4 class="title">Email Subscriptions</h4>
                <p class="category">Last Campaign Performance</p>
            </div>
            <div class="card-footer">
                <div class="stats">
                    <i class="fa fa-clock-o"></i> campaign sent 2 days ago
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="card card-c1">
            <div class="card-header card-chart" data-background-color="red">
                <canvas class="ct-chart" id="myChart3" height="250"></canvas>
            </div>
            <div class="card-content">
                <h4 class="title">Completed Tasks</h4>
                <p class="category">Last Campaign Performance</p>
            </div>
            <div class="card-footer">
                <div class="stats">
                    <i class="fa fa-clock-o"></i> campaign sent 2 days ago
                </div>
            </div>
        </div>
    </div>
</div>
<div class="tlinks">Collect from <a href="http://www.cssmoban.com/" >企业网站模板</a></div>

<!--***** REPORT-3 *****-->
<div class="row" id="report3">
    <div class="col-md-8">
        <div class="card card-c2">
            <table class="table table-hover">
                <thead>
                <div class="dropdown pull-right menu-sett-card">
                    <a id="notifications" class="nav-link" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fa fa-ellipsis-v men"></i>
                    </a>
                    <ul aria-labelledby="notifications" class="dropdown-menu">
                        <li>
                            <a rel="nofollow" href="#" class="dropdown-item nav-link">Edit</a>
                        </li>
                        <li>
                            <a rel="nofollow" href="#" class="dropdown-item nav-link">FAQ</a>
                        </li>
                        <li>
                            <a rel="nofollow" href="#" class="dropdown-item nav-link">Support</a>
                        </li>
                    </ul>
                </div>
                <tr>
                    <th>Case Study</th>
                    <th>Target Date</th>
                    <th>Progress <!-- <i class="fa fa-ellipsis-v pull-right" ></i> -->
                    </th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>Tech Wireframes</td>
                    <td>23/03/2018</td>
                    <td>
                        <div class="progress">
                            <div class="progress-bar bg-info" role="progressbar" style="width: 75%; height:10px;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>Mobile Boz</td>
                    <td>02/06/2018</td>
                    <td>
                        <div class="progress">
                            <div class="progress-bar bg-info" role="progressbar" style="width: 100%; height:10px;" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>Reskel Soft</td>
                    <td>11/02/2018</td>
                    <td>
                        <div class="progress">
                            <div class="progress-bar bg-info" role="progressbar" style="width: 95%; height:10px;" aria-valuenow="5" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>Desan Shop</td>
                    <td>05/03/2018</td>
                    <td>
                        <div class="progress">
                            <div class="progress-bar bg-info" role="progressbar" style="width: 75%; height:10px;" aria-valuenow="5" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                    </td>
                </tr><tr>
                    <td>Effel Soft</td>
                    <td>24/02/2018</td>
                    <td>
                        <div class="progress">
                            <div class="progress-bar bg-info" role="progressbar" style="width: 100%; height:10px;" aria-valuenow="5" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                    </td>
                </tr><tr>
                    <td>Tech Box</td>
                    <td>01/09/2018</td>
                    <td>
                        <div class="progress">
                            <div class="progress-bar bg-info" role="progressbar" style="width: 55%; height:10px;" aria-valuenow="5" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                    </td>
                </tr><tr>
                    <td>Lesto Firm</td>
                    <td>15/12/2018</td>
                    <td>
                        <div class="progress">
                            <div class="progress-bar bg-info" role="progressbar" style="width: 85%; height:10px;" aria-valuenow="5" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>Technoborn</td>
                    <td>08/08/2018</td>
                    <td>
                        <div class="progress">
                            <div class="progress-bar bg-info" role="progressbar" style="width: 45%; height:10px;" aria-valuenow="5" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>Redor Books</td>
                    <td>18/08/2018</td>
                    <td>
                        <div class="progress">
                            <div class="progress-bar bg-info" role="progressbar" style="width: 55%; height:10px;" aria-valuenow="5" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div class="col-md-4">
        <div class="card card-c2">
            <div class="dropdown pull-right menu-sett-card" >
                <a id="notifications" class="nav-link" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="fa fa-ellipsis-v men"></i>
                </a>
                <ul aria-labelledby="notifications" class="dropdown-menu">
                    <li>
                        <a rel="nofollow" href="#" class="dropdown-item nav-link">Edit</a>
                    </li>
                    <li>
                        <a rel="nofollow" href="#" class="dropdown-item nav-link">FAQ</a>
                    </li>
                    <li>
                        <a rel="nofollow" href="#" class="dropdown-item nav-link">Support</a>
                    </li>
                </ul>
            </div>
            <div class="header">
                <h4 class="title">Email Statistics</h4>
                <p class="category">Last Campaign Performance</p>
            </div>
            <div class="content">
                <canvas class="ct-chart" id="polar-chart" height="250"></canvas>
                <!-- <canvas class="ct-chart" id="myChart4" height="250"></canvas> -->
                <div class="footer">
                    <div class="legend">
                        <i class="fa fa-circle text-info"></i> Open
                        <i class="fa fa-circle text-danger"></i> Bounce
                        <i class="fa fa-circle text-warning"></i> Unsubscribe
                    </div>
                    <hr>
                    <div class="stats">
                        <i class="fa fa-clock-o"></i> Campaign sent 2 days ago
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!--***** REPORT-4 *****-->
<div class="row" id="report4">
    <div class="col-md-4" id="card-1">
        <div class="card card-inverse card-info">
            <img class="card-img-top" src="img/card/c-1.jpg">
            <div class="card-block">
                <h4 class="card-title">Clean Tech Box </h4>
                <div class="card-text">
                    Lorem Ipsum has been the industry's standard.
                </div>
            </div>
            <div class="card-footer">
                <small>Last updated 3 mins ago</small>
                <button class="btn btn-info float-right btn-sm">Follow</button>
            </div>
        </div>
    </div>
    <div class="col-md-4 mt-0" id="card-2">
        <div class="card hovercard">
            <div class="cardheader"></div>
            <div class="avatar">
                <img alt="" src="img/avatar-1.jpg" class="img-fluid">
            </div>
            <div class="info">
                <div class="title">
                    <a target="_blank" href="#">Steena Ben</a>
                </div>
                <div class="desc">Passionate designer</div>
                <div class="desc">Curious developer</div>
                <div class="desc">Tech geek</div>
            </div>
            <div class="bottom">
                <a class="btn btn-primary btn-twitter btn-sm" href="https://twitter.com/webmaniac">
                    <i class="fa fa-twitter"></i>
                </a>
                <a class="btn btn-danger btn-sm" rel="publisher"
                   href="https://plus.google.com/+ahmshahnuralam">
                    <i class="fa fa-google-plus"></i>
                </a>
                <a class="btn btn-primary btn-sm" rel="publisher"
                   href="https://plus.google.com/shahnuralam">
                    <i class="fa fa-facebook"></i>
                </a>
                <a class="btn btn-warning btn-sm" rel="publisher" href="https://plus.google.com/shahnuralam">
                    <i class="fa fa-behance"></i>
                </a>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="card card-c2">
            <div class="dropdown pull-right menu-sett-card" >
                <a id="notifications" class="nav-link" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="fa fa-ellipsis-v men"></i>
                </a>
                <ul aria-labelledby="notifications" class="dropdown-menu">
                    <li>
                        <a rel="nofollow" href="#" class="dropdown-item nav-link">Edit</a>
                    </li>
                    <li>
                        <a rel="nofollow" href="#" class="dropdown-item nav-link">FAQ</a>
                    </li>
                    <li>
                        <a rel="nofollow" href="#" class="dropdown-item nav-link">Support</a>
                    </li>
                </ul>
            </div>
            <div class="header">
                <h4 class="title">Newsfeed</h4>
                <p class="category">Latest News Update</p>
                <hr>
            </div>
            <div class="content newsf-list">
                <ul class="list-unstyled">
                    <li class="border border-primary">
                        <a rel="nofollow " href="#" class=" d-flex">
                            <div class="news-f-img"> <img src="img/avatar-2.jpg" alt="..." class="img-fluid rounded-circle"></div>
                            <div class="msg-body">
                                <h3 class="h5 msg-nav-h3">New Innovation world</h3>
                                <small>Tech soft is great innovation for...</small>
                            </div>
                        </a>
                    </li>
                    <li class="border border-success">
                        <a rel="nofollow" href="#" class=" d-flex">
                            <div class="news-f-img"> <img src="img/avatar-3.jpg" alt="..." class="img-fluid rounded-circle"></div>
                            <div class="msg-body">
                                <h3 class="h5 msg-nav-h3">Modified hand-cart steering</h3>
                                <small>The idea is to incorporate easy...</small>
                            </div>
                        </a>
                    </li>
                    <li class="border border-info">
                        <a rel="nofollow" href="#" class=" d-flex">
                            <div class="news-f-img"> <img src="img/avatar-4.jpg" alt="..." class="img-fluid rounded-circle"></div>
                            <div class="msg-body">
                                <h3 class="h5 msg-nav-h3">Low cost Modern printer</h3>
                                <small>A dot matrix printer modified at...</small>
                            </div>
                        </a>
                    </li>

                </ul>
            </div>
        </div>
    </div>
</div>

<!--***** FOOTER *****-->
<div class="row" id="report4">
    <div class="col-md-3">
        <div class="card text-center social-bottom sb-fb">
            <i class="fa fa-facebook"></i>
            <div>3250 +</div>
            <p>Likes</p>
        </div>
    </div>
    <div class="col-md-3">
        <div class="card text-center social-bottom sb-tw">
            <i class="fa fa-twitter"></i>
            <div>2345 +</div>
            <p>Following</p>
        </div>
    </div>
    <div class="col-md-3">
        <div class="card text-center social-bottom sb-gp">
            <i class="fa fa-google-plus"></i>
            <div>1253 +</div>
            <p>Followers</p>
        </div>
    </div>
    <div class="col-md-3">
        <div class="card text-center social-bottom sb-in">
            <i class="fa fa-instagram"></i>
            <div>4524 +</div>
            <p>Likes</p>
        </div>
    </div>
    More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>

</div>
@endsection('content')
