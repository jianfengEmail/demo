<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>BSMind任务管理系统 - 用户管理</title>

    <meta name="keywords" content="BSMind任务管理系统">
    <meta name="description" content="BSMind任务管理系统">

    <%@ include file="/comm.jsp" %>
</head>


<body class="gray-bg" style="padding: 8px;">

<div>
    <div class="ibox collapsed">

        <div class="ibox-title">
            <div>
                <a href="#modal-form" data-toggle="modal" class="btn btn-primary"><i class="fa fa-plus"></i>&nbsp;新增</a>
                <button class="btn btn-danger" type="button"><i class="fa fa-trash"></i>&nbsp;删除</button>
            </div>
            <div class="pull-right" style="width: 400px;">
                <div class="input-group">
                    <input type="text" placeholder="用户名、爱好、地址" class="form-control">
                    <span class="input-group-append">
                        <button class="btn btn-primary" type="button"><i class="fa fa-search"></i>&nbsp;搜索</button>
                    </span>
                    &emsp;
                    <button class="btn btn-success collapse-link" type="button"><i class="fa fa-list"></i></button>
                </div>
            </div>
        </div>
        <div class="ibox-content" style="display: none;">
            <div class="row">
                <div class="col-md-2">
                    姓名<input type="text" placeholder="请输入姓名" class="form-control">
                </div>
                <div class="col-md-2">
                    登录名<input type="text" placeholder="请输入登录名" class="form-control">
                </div>
                <div class="col-md-2">
                    邮箱<input type="text" placeholder="请输入邮箱" class="form-control">
                </div>
                <div class="col-md-2">
                    电话<input type="text" placeholder="请输入电话" class="form-control">
                </div>
            </div>
            <div class="text-right" style="margin-top: 10px;">
                <button class="btn btn-w-m btn-success" type="button">搜索</button>
            </div>
        </div>
    </div>
</div>

<div style="margin-bottom: 10px;">
    <div class="ibox-content" style="margin-top: -17px;">
        <div class="table-responsive">
            <table class="table table-striped table-bordered table-hover dataTables-example">
                <thead>
                <tr>
                    <th width="60px"><div class="checkbox" style="margin-top: -6px;"><input type="checkbox" value="" id="ckbAll"><label for="ckbAll"></label></div></th>
                    <th>姓名</th>
                    <th>登录账号</th>
                    <th>邮箱</th>
                    <th>电话</th>
                    <th class="text-center">状态</th>
                    <th class="text-center">操作</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><div class="checkbox" style="margin-top: -6px;"><input type="checkbox" value="" id="ckb1"><label for="ckb1"></label></div></td>
                    <td>杨剑锋</td>
                    <td>Administrator</td>
                    <td>467134382@qq.com</td>
                    <td>13800000000</td>
                    <td class="text-center">
                        <button class="btn btn-primary btn-xs btn-xs-sm" type="button" style="width: 45px;">已启用</button>
                    </td>
                    <td class="text-center">
                        <button class="btn btn-danger btn-xs btn-xs-sm" type="button"><i class="fa fa-file-text-o" alt="编辑"></i></button>
                        <button class="btn btn-danger btn-xs btn-xs-sm" type="button"><i class="fa fa-edit"></i></button>
                        <button class="btn btn-danger btn-xs btn-xs-sm" type="button"><i class="fa fa-trash"></i></button>
                    </td>
                </tr>
                </tbody>
            </table>
            <%@ include file="/pages/page.jsp" %>
        </div>
    </div>
</div>
<div id="modal-form" class="modal fade" aria-hidden="true">
    <div class="modal-dialog">
        <iframe class="J_iframe" name="iframe0" width="100%" height="420px" src="home.jsp" frameborder="0" data-id="home.jsp" seamless></iframe>
    </div>
</div>
</body>

</html>