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

    <title>BSMind任务管理系统 - 500错误</title>

    <meta name="keywords" content="BSMind任务管理系统">
    <meta name="description" content="BSMind任务管理系统">

    <%@ include file="/comm.jsp" %>
</head>

<body class="gray-bg">


<div class="middle-box text-center animated fadeInDown">

    <h2 class="font-bold">欢迎使用BSMind管理系统!</h2>

    <div class="error-desc">
        <a href="https://github.com/jianfengEmail" target="_blank" class="btn btn-primary m-t">Github：https://github.com/jianfengEmail</a><br/>
        <a href="https://blog.csdn.net/qq467134382" target="_blank" class="btn btn-danger m-t">CSDN：https://blog.csdn.net/qq467134382</a>
    </div>
</div>

</body>

</html>