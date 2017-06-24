<!DOCTYPE html>
<head>
    <meta charset="utf-8"/>
    <title>账户管理</title>
    <link rel="stylesheet" href="/css/manage.css">
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
                    <div class="table_div">
                        <div class="top_div">
                            <h3>个人题库列表</h3>
                        </div>
                        <p style="text-align: left;">第1页共1页</p>
                        <table class="table_list" border="1px">
                            <tr>
                                <th>题库名</th>
                                <th>备注</th>
                                <th>语言</th>
                                <th>类型</th>
                                <th>权限</th>
                                <th>操作</th>
                            </tr>

                        <#list allExerFile as exer>
                            <tr>
                                <td>${exer.exerName}</td>
                                <td>${exer.exerRemark}</td>
                                <td>${exer.language}</td>
                                <td>${exer.text}</td>
                                <td>${exer.power}</td>
                                <td>
                                    <a href="/account/manage/edit?sid=${exer.sid}" class="table_a">编辑</a>
                                    <a href="/account/manage/delete?sid=${exer.sid}" class="table_a">删除</a>
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