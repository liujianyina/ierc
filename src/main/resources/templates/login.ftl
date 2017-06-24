<!DOCTYPE>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>系统登录</title>
    <link href="css/login.css" rel="stylesheet" rev="stylesheet" type="text/css" media="all"/>
    <link href="css/demo.css" rel="stylesheet" rev="stylesheet" type="text/css" media="all"/>
    <link rel="icon" sizes="any" mask href="/images/title.png">
</head>

<body>

<div class="header">
    <h1 class="headerLogo"><a title="后台管理系统" href="#"><img alt="logo" src="images/logo.gif"></a></h1>
    <div class="headerNav">
        <a href="#">用户注册</a>
        <a href="#">忘记密码</a>
        <a href="#">开发团队</a>
        <a href="#">意见反馈</a>
        <a href="/show_info_test">信息展示</a>
    </div>
</div>

<div class="banner">
    <div class="login-aside">
        <div id="o-box-up"></div>
        <div id="o-box-down" style="table-layout:fixed;">
        <#import "/spring.ftl" as spring />
            <div class="error-box">
            <#if ERROR_MESSAGE??>
                    <@spring.messageText ERROR_MESSAGE, ERROR_MESSAGE />
                </#if>
            </div>
            <form class="registerform" action="/login" method="post">
                <div class="fm-item">
                    <label for="logonId" class="form-label">用户名：</label>
                    <input type="text" name="username" class="i-text">
                    <div class="ui-form-explain"></div>
                </div>

                <div class="fm-item">
                    <label for="logonId" class="form-label">密　码：</label>
                    <input type="password" name="password" class="i-text">
                    <div class="ui-form-explain"></div>
                </div>

                <div class="fm-item pos-r">
                    <label for="logonId" class="form-label">验证码</label>
                    <input type="text" maxlength="100" class="i-text yzm" name="code">
                    <div class="ui-form-explain">
                        <img src="/captcha" class="yzm-img" onclick="this.src='/captcha?' + Math.random();"/>
                    </div>
                </div>

                <div class="fm-item">
                    <label for="logonId" class="form-label"></label>
                    <input type="submit" value="" tabindex="4" id="send-btn" class="btn-login">
                    <div class="ui-form-explain"></div>
                </div>
            </form>
        </div>
    </div>

    <div class="bd">
        <ul>
            <li style="background:url(themes/theme-pic1.jpg) #CCE1F3 center 0 no-repeat;">
            </li>
            <li style="background:url(themes/theme-pic2.jpg) #BCE0FF center 0 no-repeat;">
            </li>
        </ul>
    </div>
</div>
<div class="banner-shadow" style="display: none">
    广告预留
</div>

<div class="footer">
    <p>Copyright &copy; 2017.ierc.tech</p>
</div>
</body>

</html>