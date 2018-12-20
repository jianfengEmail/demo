<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

    <title>BSMind任务管理系统 - 登录</title>

    <meta name="keywords" content="BSMind任务管理系统">
    <meta name="description" content="BSMind任务管理系统">

    <link href="inspinia/css/bootstrap.min.css" rel="stylesheet">
    <link href="inspinia/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="inspinia/css/animate.css" rel="stylesheet">
    <link href="inspinia/css/style.css" rel="stylesheet">
    <link href="inspinia/css/login.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->
    <script>
        if (window.top !== window.self) {
            window.top.location = window.location;
        }
    </script>

</head>

<body class="signin">
<div class="signinpanel">
    <div class="row">
        <div class="col-sm-7">
            <div class="signin-info">
                <div class="logopanel m-b">
                    <h1>[ Hi ]</h1>
                </div>
                <div class="m-b"></div>
                <h4>欢迎使用 <strong>BSMind任务管理系统</strong></h4>
                <ul class="m-b">
                    <li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 任务管理</li>
                    <li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 角色管理</li>
                    <li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 用户管理</li>
                    <li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> 日志管理</li>

                </ul>
                <strong>还没有账号？ <a href="#">立即注册&raquo;</a></strong>
            </div>
        </div>
        <div class="col-sm-5">
            <form method="post" action="index.jsp">
                <h4 class="no-margins">登录:</h4>
                <p class="m-t-md">登录到BSMind任务管理系统</p>
                <input type="text" class="form-control uname" value="10000" maxlength="20" placeholder="用户名" autocomplete="off"/>
                <input type="password" class="form-control pword m-b" value="0" maxlength="32" placeholder="密码" autocomplete="off"/>
                <a href="" style="color:#0055aa;">忘记密码了？</a>
                <button class="btn btn-success btn-block">登&emsp;&emsp;录</button>
            </form>
        </div>
    </div>
    <div class="signup-footer">
        <div class="pull-left">
            &copy; 2018 All Rights Reserved. BSMind
        </div>
    </div>
</div>
</body>

</html>
