<!DOCTYPE html>
<head>
    <meta charset="utf-8"/>
    <title>个人中心</title>
    <link rel="stylesheet" href="css/bootstrap.css" type="text/css"/>
    <link rel="stylesheet" href="css/animate.css" type="text/css"/>
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css"/>
    <link rel="stylesheet" href="css/simple-line-icons.css" type="text/css"/>
    <link rel="stylesheet" href="css/font.css" type="text/css"/>
    <link rel="stylesheet" href="css/app.css" type="text/css"/>
    <link rel="icon" sizes="any" mask href="/images/title.png">
</head>
<body>
<div class="app app-header-fixed" id="app">
    <!-- navbar -->
    <div class="app-header navbar">
        <!-- navbar header -->
        <div class="navbar-header bg-dark">
            <button class="pull-right visible-xs dk">
                <i class="glyphicon glyphicon-cog"></i>
            </button>
            <button class="pull-right visible-xs">
                <i class="glyphicon glyphicon-align-justify"></i>
            </button>
            <!-- brand -->
            <a href="/index" class="navbar-brand text-lt">
                <!--		<i class="fa fa-btc"></i>-->
                <i class="fa fa-italic"></i>
                <span class="hidden-folded m-l-xs">ierc</span>
            </a>
            <!-- / brand -->
        </div>
        <!-- / navbar header -->

        <!-- navbar collapse -->
        <div class="collapse pos-rlt navbar-collapse box-shadow bg-white-only">
            <!-- buttons -->
            <div class="nav navbar-nav hidden-xs">
                <a href="#" class="btn no-shadow navbar-btn" data-toggle="class:app-aside-folded" data-target=".app">
                    <i class="fa fa-dedent fa-fw text"></i>
                    <i class="fa fa-indent fa-fw text-active"></i>
                </a>
                <a href class="btn no-shadow navbar-btn" data-toggle="class:show" data-target="#aside-user">
                    <i class="icon-user fa-fw"></i>
                </a>
            </div>
            <!-- / buttons -->

            <!-- search form -->
            <form class="navbar-form navbar-form-sm navbar-left shift" action="#" method="get">
                <div class="form-group">
                    <div class="input-group">
                        <input type="text" class="form-control input-sm bg-light no-border rounded padder"
                               placeholder="搜索...">
                        <span class="input-group-btn">
                            <button type="submit" class="btn btn-sm bg-light rounded">
                                <i class="fa fa-search"></i>
                            </button>
              			</span>
                    </div>
                </div>
            </form>
            <!-- / search form -->

            <!-- nabar right -->
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" data-toggle="dropdown" class="dropdown-toggle clear" data-toggle="dropdown">
								<span class="thumb-sm avatar pull-right m-t-n-sm m-b-n-sm m-l-sm">
				                	<img src="images/user.jpg" alt="..."/>
				                	<i class="on md b-white bottom"></i>
				             	</span>
                        <span class="hidden-sm hidden-md">${CURRENT_USER.loginName}</span> <b class="caret"></b>
                    </a>
                    <!-- dropdown -->
                    <ul class="dropdown-menu animated fadeInRight w">
                        <li class="wrapper b-b m-b-sm bg-light m-t-n-xs">
                            <div>
                                <p>账户余额：${CURRENT_USER.balance}</p>
                            </div>
                        <#--<progressbar value="60" class="progress-xs m-b-none bg-white"></progressbar>-->
                        </li>
                        <li>
                            <a href>
                                <span class="badge bg-danger pull-right">30%</span>
                                <span>完善资料</span>
                            </a>
                        </li>
                        <!--<li>
                            <a ui-sref="app.page.profile">Profile</a>
                        </li>-->
                        <li>
                            <a>
                                <span class="label bg-info pull-right">new</span> 帮助
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="/logout">注销</a>
                        </li>
                    </ul>
                    <!-- / dropdown -->
                </li>
            </ul>
            <!-- / navbar right -->

        </div>
        <!-- / navbar collapse -->
    </div>
    <!-- / navbar -->

    <!-- menu -->
    <div class="app-aside hidden-xs bg-dark">
        <div class="aside-wrap">
            <div class="navi-wrap">
                <!-- user -->
                <div class="clearfix hidden-xs text-center hide" id="aside-user">
                    <div class="dropdown wrapper">
                        <a>
                            <span class="thumb-lg w-auto-folded avatar m-t-sm">
                                <img src="images/user.jpg" class="img-full" alt="..."/>
                            </span>
                        </a>
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle hidden-folded">
                            <span class="clear">
                                <span class="block m-t-sm">
                                    <strong class="font-bold text-lt">${CURRENT_USER.loginName}</strong>
                                    <b class="caret"></b>
                                </span>
                                <span class="text-muted text-xs block">简介</span>
                            </span>
                        </a>
                        <!-- dropdown -->
                        <ul class="dropdown-menu animated fadeInRight w hidden-folded">
                            <li class="wrapper b-b m-b-sm bg-info m-t-n-xs">
                                <span class="arrow top hidden-folded arrow-info"></span>
                                <div>
                                    <p>账户余额：${CURRENT_USER.balance}</p>
                                </div>
                            <#--<progressbar value="60" type="white" class="progress-xs m-b-none dker"></progressbar>-->
                            </li>
                            <li>
                                <a href>账户设置</a>
                            </li>
                            <li>
                                <a href>
                                    <span class="badge bg-danger pull-right">30%</span> 完善资料
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="/logout">注销</a>
                            </li>
                        </ul>
                    </div>
                    <div class="line dk hidden-folded"></div>
                </div>
                <!-- / user -->

                <!-- nav -->
                <nav class="navi">
                    <ul class="nav">
                        <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
                            <span>个人中心</span>
                        </li>
                        <li>
                            <a href class="auto">
                                <i class="glyphicon glyphicon-stats icon text-primary-dker"></i>
                                <span class="font-bold">我的主页</span>
                            </a>
                        </li>
                        <li>
                            <a href="/account/index">
                                <i class="glyphicon glyphicon-calendar icon text-info-dker"></i>
                                <span class="font-bold">账户管理</span>
                            </a>
                        </li>
                        <li>
                            <a>
                                <b class="badge bg-info pull-right">9</b>
                                <i class="glyphicon glyphicon-envelope icon text-info-lter"></i>
                                <span class="font-bold">消息中心</span>
                            </a>
                        </li>
                        <li>
                            <a href class="auto">
                                <span class="pull-right text-muted">
                                    <i class="fa fa-fw fa-angle-right text"></i>
                                    <i class="fa fa-fw fa-angle-down text-active"></i>
                                </span>
                                <i class="glyphicon glyphicon-th-large icon text-success"></i>
                                <span class="font-bold">我的题库</span>
                            </a>
                            <ul class="nav nav-sub dk">
                                <li class="nav-sub-header">
                                    <a>
                                        <span>操作</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="/account/upload">
                                        <span>上传</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="/account/manage">
                                        <span>管理</span>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <li class="line dk"></li>

                        <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
                            <span>公共题库</span>
                        </li>
                        <li>
                            <a href="/practice/practice_list" class="auto">
                                <i class="glyphicon glyphicon-th"></i>
                                <span>题库列表</span>
                            </a>
                        </li>
                        <li>
                            <a href="/practice/collection">
                                <i class="glyphicon glyphicon-signal"></i>
                                <span>我的收藏</span>
                            </a>
                        </li>

                        <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
                            <span>高级功能</span>
                        </li>
                        <li>
                            <a href="/Video_dubbing/index" class="auto">
                                <i class="glyphicon glyphicon-th"></i>
                                <span>配音测试</span>
                            </a>
                        </li>
                        <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
                            <span>联系我们</span>
                        </li>
                        <li>
                            <a>
                                <i class="icon-user icon text-success-lter"></i>
                                <span>意见反馈</span>
                            </a>
                        </li>
                        <li>
                            <a>
                                <i class="icon-question icon"></i>
                                <span>帮助文档</span>
                            </a>
                        </li>
                    </ul>
                </nav>
                <!-- nav -->
            </div>
        </div>
    </div>
    <!-- / menu -->

    <!-- content -->
    <div class="app-content">
        <a href="#" class="off-screen-toggle hide"></a>
        <div class="app-content-body fade-in-up">
            <div class="hbox hbox-auto-xs hbox-auto-sm">
                <div class="col">
                    <div style="background:url(images/c4.jpg) center center; background-size:cover">
                        <div class="wrapper-lg bg-white-opacity">
                            <div class="row m-t">
                                <div class="col-sm-7">
                                    <a href="#" class="thumb-lg pull-left m-r">
                                        <img src="images/user.jpg" class="img-circle"/>
                                    </a>
                                    <div class="clear m-b">
                                        <div class="m-b m-t-sm">
                                            <span class="h3 text-black">${CURRENT_USER.loginName}</span>
                                            <small class="m-l">${CURRENT_USER.address}</small>
                                        </div>
                                        <p class="m-b">
                                            <a href class="btn btn-sm btn-bg btn-rounded btn-default btn-icon"><i
                                                    class="fa fa-qq"></i></a>
                                            <a href class="btn btn-sm btn-bg btn-rounded btn-default btn-icon"><i
                                                    class="fa fa-wechat"></i></a>
                                        </p>
                                        <a href class="btn btn-sm btn-success btn-rounded">分享</a>
                                    </div>
                                </div>
                                <div class="col-sm-5">
                                    <div class="pull-right pull-none-xs text-center">
                                        <a href="/account/manage" class="m-b-md inline m">
                                            <span class="h3 block font-bold">${CURRENT_USER.number}</span>
                                            <small>个人题库</small>
                                        </a>
                                        <a href="/practice/collection" class="m-b-md inline m">
                                            <span class="h3 block font-bold">${CURRENT_USER.follow}</span>
                                            <small>关注</small>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="wrapper bg-white b-b">
                        <ul class="nav nav-pills nav-sm">
                            <li class="active">
                                <a href="#">我的动态</a>
                            </li>
                        </ul>
                    </div>
                    <div class="padder">
                        <div class="streamline b-l b-info m-l-lg m-b padder-v">
                            <div>
                                <a class="pull-left thumb-sm avatar m-l-n-md">
                                    <img src="images/user.jpg" class="img-circle" alt="..."/>
                                </a>
                                <div class="m-l-lg m-b-lg">
                                <#list acts as act>
                                    <div class="m-b-xs">
                                        <a href class="h4">${CURRENT_USER.loginName}</a>
                                        <#--<span class="text-muted m-l-sm pull-right">${createTime?date('yyyy-MM-dd')}</span>-->
                                    </div>
                                    <div class="m-b">
                                        <div class="m-b">　　　　　${CURRENT_USER.loginName}${act.actionsName}${act.exerName}</div>
                                        <div class="m-t-sm">
                                            <a href class="text-muted m-xs"><i class="icon-star"></i></a>
                                            <a href class="text-muted m-xs"><i class="icon-trash"></i></a>
                                        </div>
                                    </div>
                                </#list>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col w-lg bg-light lter b-l bg-auto">
                    <div class="wrapper">
                        <div class="">
                            <h4 class="m-t-xs m-b-xs">最近访客</h4>
                            <ul class="list-group no-bg no-borders pull-in">
                                <li class="list-group-item">
                                    <a herf="#" class="pull-left thumb-sm avatar m-r">
                                        <img src="images/user.jpg" alt="..." class="img-circle"/>
                                        <i class="on b-white bottom"></i>
                                    </a>
                                    <div class="clear">
                                        <div>
                                            <a href="#">访客名</a>
                                        </div>
                                        <small class="text-muted">简述</small>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- footer -->
    <div class="app-footer wrapper b-t bg-light">
        <span class="pull-right">Copyright &copy; 2017.ierc.tech</span>
    </div>
    <!-- / footer -->
</div>
<!-- jQuery -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.js"></script>
<script type="text/javascript">
    +function ($) {
        $(function () {
            // class
            $(document).on('click', '[data-toggle^="class"]', function (e) {
                e && e.preventDefault();
                console.log('abc');
                var $this = $(e.target),
                        $class, $target, $tmp, $classes, $targets;
                !$this.data('toggle') && ($this = $this.closest('[data-toggle^="class"]'));
                $class = $this.data()['toggle'];
                $target = $this.data('target') || $this.attr('href');
                $class && ($tmp = $class.split(':')[1]) && ($classes = $tmp.split(','));
                $target && ($targets = $target.split(','));
                $classes && $classes.length && $.each($targets, function (index, value) {
                    if ($classes[index].indexOf('*') !== -1) {
                        var patt = new RegExp('\\s' +
                                $classes[index].replace(/\*/g, '[A-Za-z0-9-_]+').split(' ').join('\\s|\\s') +
                                '\\s', 'g');
                        $($this).each(function (i, it) {
                            var cn = ' ' + it.className + ' ';
                            while (patt.test(cn)) {
                                cn = cn.replace(patt, ' ');
                            }
                            it.className = $.trim(cn);
                        });
                    }
                    ($targets[index] != '#') && $($targets[index]).toggleClass($classes[index]) || $this.toggleClass($classes[index]);
                });
                $this.toggleClass('active');
            });

            // collapse nav
            $(document).on('click', 'nav a', function (e) {
                var $this = $(e.target),
                        $active;
                $this.is('a') || ($this = $this.closest('a'));

                $active = $this.parent().siblings(".active");
                $active && $active.toggleClass('active').find('> ul:visible').slideUp(200);

                ($this.parent().hasClass('active') && $this.next().slideUp(200)) || $this.next().slideDown(200);
                $this.parent().toggleClass('active');

                $this.next().is('ul') && e.preventDefault();

                setTimeout(function () {
                    $(document).trigger('updateNav');
                }, 300);
            });
        });
    }(jQuery);
</script>
</body>

</html>