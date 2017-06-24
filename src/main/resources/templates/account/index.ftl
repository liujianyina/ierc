<!DOCTYPE html>
<head>
    <meta charset="utf-8"/>
    <title>账户管理</title>
<#import "/spring.ftl" as spring />
<#if msg??>
    <script type="text/javascript">
        window.onload = function () {
            alert('<@spring.messageText msg, msg />')
        }
    </script>
</#if>
<#include "../header.ftl">
    <div class="app-content">
        <div ui-butterbar></div>
        <a href class="off-screen-toggle hide" data-toggle="class:off-screen" data-target=".app-aside"></a>
        <div class="app-content-body fade-in-up">
            <!-- COPY the content from "tpl/" -->
            <div class="hbox hbox-auto-xs hbox-auto-sm">
                <div class="col">
                    <div style="width: 70%; margin: 0 auto;">
                        <form class="form-horizontal" style="margin-top: 10%;" method="post" action="/account/update">
                            <fieldset>
                                <legend>基本资料</legend>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">电　话</label>
                                    <div class="col-sm-4">
                                        <input class="form-control" name="phoneNum" type="text"
                                               value="${CURRENT_USER.phoneNum}"/>
                                    </div>
                                    <label class="col-sm-2 control-label">地　址</label>
                                    <div class="col-sm-4">
                                        <input class="form-control" name="address" type="text"
                                               value="${CURRENT_USER.address}"/>
                                    </div>
                                    <hr/>
                            </fieldset>
                            <hr/>
                            <fieldset>
                                <legend>偏好设置</legend>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">语速</label>
                                    <div class="col-sm-4">
                                        <input class="form-control" name="speed" type="text"
                                               value="${CURRENT_USER.speed}"/>
                                    </div>
                                    <hr/>
                            </fieldset>
                            <button type="submit" class="btn btn-block btn-info">保存</button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- PASTE above -->
        </div>
    </div>

<#include "../footer.ftl">