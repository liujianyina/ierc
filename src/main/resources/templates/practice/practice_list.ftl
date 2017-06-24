<!DOCTYPE html>
<head>
    <meta charset="utf-8"/>
    <title>公共题库</title>
    <link rel="stylesheet" href="/css/manage.css">
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
                    <div class="table_div">
                        <div class="top_div">
                            <h3>题库列表</h3>
                        </div>
                        <p style="text-align: left;">第1页共1页</p>
                        <table class="table_list" border="1px">
                            <tr>
                                <th>题库名</th>
                                <th>publish</th>
                                <th>语言</th>
                                <td>类型</td>
                                <th>操作</th>
                            </tr>
                            <tr>
                                <td>综合测试页面</td>
                                <td>admin</td>
                                <td>综合测试</td>
                                <td>单词、句子、文本</td>
                                <td>
                                    <a href="/test" class="table_a">进入</a>
                                </td>


                            </tr>
                        <#list allExer as item>
                            <tr>
                                <td>${item.exerName}</td>
                                <td>${item.adminName}</td>
                                <td>${item.language}</td>
                                <td>${item.text}</td>
                                <td>
                                    <a href="/practice/practice_list/visit?sid=${item.sid}" class="table_a">进入</a>
                                    <a href="/practice/practice_list/collection?sid=${item.sid}" class="table_a">收藏</a>
                                </td>
                            </tr>
                        </#list>
                        </table>
                        <div class="down_div1">
                            <a class="btn btn-primary" href="#">上一页</a>
                        </div>

                        <div class="down_div2">
                            <a class="btn btn-primary" href="#">下一页</a>
                        </div>

                    </div>
                </div>
            </div>
        </div>
<#include "../footer.ftl">