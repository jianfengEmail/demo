<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div id="pageDiv" class="form-inline pull-right">
    <div class="btn-group">
        <button class="btn btn-default btn-xs" type="button"><i class="fa fa-step-backward"></i>&nbsp;首页</button>
        <button class="btn btn-default btn-xs active" type="button"><i class="fa fa-chevron-left"></i>&nbsp;上一页</button>
        <button class="btn btn-default btn-xs active" type="button">下一页&nbsp;<i class="fa fa-chevron-right"></i></button>
        <button class="btn btn-default btn-xs" type="button">末页&nbsp;<i class="fa fa-step-forward"></i></button>
    </div>
    &nbsp;&nbsp;每页显示&nbsp;
    <div class="input-group">
        <button id="btnPageSize" data-toggle="dropdown" class="btn btn-white  btn-xs dropdown-toggle" type="button" style="width: 40px;">9</button>
        <ul class="dropdown-menu float-right">
            <li><a href="javascript:setPageSize(9)">9</a></li>
            <li><a href="javascript:setPageSize(18)">18</a></li>
            <li><a href="javascript:setPageSize(36)">36</a></li>
            <li><a href="javascript:setPageSize(72)">72</a></li>
        </ul>
    </div>
    &nbsp;条/共10页&nbsp;,当前第&nbsp;
    <div class="input-group">
        <input type="number" class="form-control" style="width: 60px;height: 26px;font-size: 10px;" value="1">
        <span class="input-group-append">
            <button class="btn btn-primary btn-xs" type="button"><i class="fa fa-send"></i></button>
        </span>
    </div>
    &nbsp;页
</div>
<script type="text/javascript">
    function setPageSize(pageSize){
        $("#btnPageSize").text(pageSize);
        localData.set("pageSize",pageSize);
    }

    $(document).ready(function () {
        var pageSize = localData.get("pageSize");
        if(!isNaN(pageSize) && parseInt(pageSize)>0){
            $("#btnPageSize").text(pageSize);
        }
    });
</script>