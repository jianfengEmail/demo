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
    <meta name="renderer" content="webkit">

    <title>BSMind任务管理系统</title>

    <meta name="keywords" content="BSMind任务管理系统">
    <meta name="description" content="BSMind任务管理系统">

    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->

    <link href="inspinia/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="inspinia/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="inspinia/css/animate.css" rel="stylesheet">
    <link href="inspinia/css/style.css?v=4.1.0" rel="stylesheet">
</head>

<body class="fixed-sidebar full-height-layout gray-bg skin-1" style="overflow:hidden">
<div id="wrapper">
    <!--左侧导航开始-->
    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="nav-close"><i class="fa fa-times-circle"></i>
        </div>
        <div class="sidebar-collapse">
            <ul class="nav" id="side-menu">
                <li style="line-height: 33px;font-size: 14px;">
                    <a class="navbar-minimalize" style="color: white;"><i class="fa fa-th"></i> <span class="nav-label">BSMind任务管理系统</span></a>
                </li>
                <li>
                    <a class="J_menuItem" href="home.jsp" data-index="0">
                        <i class="fa fa-home"></i>
                        <span class="nav-label">首页</span>
                    </a>
                </li>
                <li>
                    <a class="J_menuItem" href="pages/task/list.jsp" data-index="0">
                        <i class="fa fa-tasks"></i>
                        <span class="nav-label">任务管理</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-gear"></i>
                        <span class="nav-label">系统管理</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a class="J_menuItem" href="pages/sys/user/list.jsp">用户管理</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="pages/sys/role/list.jsp">角色管理</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="pages/sys/menu/list.jsp">菜单管理</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="pages/sys/log/list.jsp">日志管理</a>
                        </li>
                    </ul>
                </li>
                <%--<li>--%>
                    <%--<a class="J_menuItem" href="layouts.html"><i class="fa fa-columns"></i> <span class="nav-label">布局</span></a>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<a href="#"><i class="fa fa-flask"></i> <span class="nav-label">UI元素</span><span class="fa arrow"></span></a>--%>
                    <%--<ul class="nav nav-second-level">--%>
                        <%--<li><a class="J_menuItem" href="typography.html">排版</a>--%>
                        <%--</li>--%>
                        <%--<li>--%>
                            <%--<a href="#">字体图标 <span class="fa arrow"></span></a>--%>
                            <%--<ul class="nav nav-third-level">--%>
                                <%--<li>--%>
                                    <%--<a class="J_menuItem" href="fontawesome.html">Font Awesome</a>--%>
                                <%--</li>--%>
                            <%--</ul>--%>
                        <%--</li>--%>
                    <%--</ul>--%>
                <%--</li>--%>
            </ul>
        </div>
    </nav>
    <!--左侧导航结束-->
    <!--右侧部分开始-->
    <div id="page-wrapper" class="gray-bg dashbard-1">
        <div class="row border-bottom">
            <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0;">
                <div class="navbar-header" style="display: none;">
                    <div class="navbar-form-custom" style="line-height: 60px;font-size: 20px;color: #0e9aef;"><b>&emsp;BSMind管理系统</b></div>
                    <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
                </div>
                <ul class="nav navbar-top-links navbar-right">
                    <li class="dropdown hidden-xs">
                        <a href="help.jsp" class="right-sidebar-toggle J_menuItem" aria-expanded="false">
                            <i class="fa fa-question-circle"></i>帮助中心
                        </a>
                    </li>
                    <li class="dropdown hidden-xs">
                        <a href="pages/sys/user/edit.jsp" class="right-sidebar-toggle J_menuItem" menuText="用户信息" aria-expanded="false">
                            <i class="fa fa-user"></i>Administrator&nbsp;(&nbsp;杨剑锋&nbsp;)
                        </a>
                    </li>
                    <li class="dropdown hidden-xs">
                        <a class="right-sidebar-toggle count-info J_menuItem" menuText="信息列表" href="pages/task/message.jsp">
                            <i class="fa fa-bell"></i>新消息<span class="label label-danger">1</span>
                        </a>
                    </li>
                    <li class="dropdown hidden-xs">
                        <a class="right-sidebar-toggle" aria-expanded="false" href="login.jsp">
                            <i class="fa fa-sign-out"></i>退出
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
        <div class="row content-tabs">
            <button class="roll-nav roll-left J_tabLeft"><i class="fa fa-backward"></i>
            </button>
            <nav class="page-tabs J_menuTabs">
                <div class="page-tabs-content">
                    <a href="javascript:;" class="active J_menuTab" data-id="home.jsp">首页</a>
                </div>
            </nav>
            <button class="roll-nav roll-right J_tabRight" style="right: 80px;"><i class="fa fa-forward"></i>
            </button>
            <div class="btn-group roll-nav roll-right" style="right: 0px;">
                <button class="dropdown J_tabClose" data-toggle="dropdown">关闭操作<span class="caret"></span>

                </button>
                <ul role="menu" class="dropdown-menu dropdown-menu-right">
                    <li class="J_tabCloseAll"><a>关闭全部</a>
                    </li>
                    <li class="J_tabCloseOther"><a>关闭其他</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="row J_mainContent" id="content-main">
            <iframe class="J_iframe" name="iframe0" width="100%" height="100%" src="home.jsp" frameborder="0" data-id="home.jsp" seamless></iframe>
        </div>
    </div>
    <!--右侧部分结束-->
</div>

<!-- 全局js -->
<script src="inspinia/js/jquery.min.js?v=2.1.4"></script>
<script src="inspinia/js/bootstrap.min.js?v=3.3.6"></script>
<script src="inspinia/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="inspinia/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="inspinia/js/plugins/layer/layer.min.js"></script>

<!-- 自定义js -->
<script src="inspinia/js/hplus.js?v=4.1.0"></script>
<script type="text/javascript" src="inspinia/js/contabs.js"></script>

<!-- 第三方插件 -->
<script src="inspinia/js/plugins/pace/pace.min.js"></script>

</body>

</html>
