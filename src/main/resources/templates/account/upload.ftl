<!DOCTYPE html>
<head>
    <meta charset="utf-8"/>
    <title>题库上传</title>
<#include "../header.ftl">

<#import "/spring.ftl" as spring />
<#if msg??>
    <script type="text/javascript">
        window.onload = function () {
            alert('<@spring.messageText msg, msg />')
        }
    </script>
</#if>
    <div class="app-content">
        <div ui-butterbar></div>
        <a href class="off-screen-toggle hide" data-toggle="class:off-screen" data-target=".app-aside"></a>
        <div class="app-content-body fade-in-up">
            <!-- COPY the content from "tpl/" -->
            <div class="hbox hbox-auto-xs hbox-auto-sm">
                <div class="col">
                    <div style="width: 70%; margin: 0 auto;">
                        <form class="form-horizontal" style="margin-top: 10%;" enctype="multipart/form-data"
                              method="post"
                              action="/account/upload">
                            <fieldset>
                                <legend>基本设置</legend>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">题库名</label>
                                    <div class="col-sm-4">
                                        <input class="form-control" name="exerName" type="text" placeholder="必填"/>
                                    </div>
                                    <label class="col-sm-2 control-label">备　注</label>
                                    <div class="col-sm-4">
                                        <input class="form-control" name="exerRemark" type="text" placeholder="可选"/>
                                    </div>
                                </div>
                            </fieldset>
                            <fieldset>
                                <legend>语言设置</legend>
                                <div class="form-group">
                                    <label for="disabledSelect" class="col-sm-2 control-label">语言</label>
                                    <div class="col-sm-10">
                                        <select class="form-control" name="language">
                                            <option value="zh">普通话</option>
                                            <option value="en">英　语</option>
                                            <option value="jp">日　语</option>
                                        </select>
                                    </div>
                                </div>
                            </fieldset>
                            <fieldset>
                                <legend>文本类型</legend>
                                <div class="form-group">
                                    <label for="disabledSelect" class="col-sm-2 control-label">权限</label>
                                    <div class="col-sm-10">
                                        <select class="form-control" name="text">
                                            <option value="选择题">选择题</option>
                                            <option value="长文本">长文本</option>
                                        </select>
                                    </div>
                                </div>
                            </fieldset>
                            <fieldset>
                                <legend>权限设置</legend>
                                <div class="form-group">
                                    <label for="disabledSelect" class="col-sm-2 control-label">权限</label>
                                    <div class="col-sm-10">
                                        <select class="form-control" name="power">
                                            <option value="public">公开</option>
                                            <option value="private">私有</option>
                                            <option value="grant">授权</option>
                                        </select>
                                    </div>
                                </div>
                            </fieldset>
                            <fieldset>
                                <legend>选择文件</legend>
                                <div class="form-group">
                                    <label for="disabledSelect" class="col-sm-2 control-label">文件位置</label>
                                    <div class="col-sm-10">
                                        <input type="file" name="file"/>
                                    </div>
                                </div>
                            </fieldset>
                            <button type="submit" class="btn btn-block btn-info">确认上传</button>
                        </form>
                    </div>
                </div>
                <div class="col w-lg bg-light lter b-l bg-auto">
                    <div class="wrapper">
                        <div class="">
                            <h4 class="m-t-xs m-b-xs">说明:</h4>
                            <p>一、上传的文件包含以下格式：</p>
                            <p>　1．后缀名为.xlsx或者xls</p>
                            <p>　2．每行分别为题号、题干、四个选项、答案（选项可以有不超过4个的任意多个）</p>
                            <p>　3．文件最大不超过20MB</p>
                            <p>　4．文本类型：选择题或者长文本</p>
                            <p>二、参数说明：</p>
                            <p>　1．题库名：显示的名称</p>
                            <p>　2．语言：系统最终将以什么语言播放</p>
                            <p>　3．权限：</p>
                            <p>　　①公开：任何人都能访问您的题库</p>
                            <p>　　②私有：您的题库只有您自己可见</p>
                            <p>　　③授权：您可以授权某人访问。</p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- PASTE above -->
        </div>
    </div>

<#include "../footer.ftl">