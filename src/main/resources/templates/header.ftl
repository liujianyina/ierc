<link rel="stylesheet" href="/css/bootstrap.css" type="text/css"/>
<link rel="stylesheet" href="/css/animate.css" type="text/css"/>
<link rel="stylesheet" href="/css/font-awesome.min.css" type="text/css"/>
<link rel="stylesheet" href="/css/simple-line-icons.css" type="text/css"/>
<link rel="stylesheet" href="/css/font.css" type="text/css"/>
<link rel="stylesheet" href="/css/app.css" type="text/css"/>
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
            <a href="#" class="navbar-brand text-lt">
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
				                	<img src="/images/user.jpg" alt="..."/>
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
					                	<img src="/images/user.jpg" class="img-full" alt="..."/>
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
                            <a href="/index">
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