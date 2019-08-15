<%--
  Created by IntelliJ IDEA.
  User: 97405
  Date: 2019/8/14
  Time: 21:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

</head>
<body>
<!-- 左侧栏 -->
<div class="panel-group col-sm-2" id="hrms_sidebar_left" role="tablist" aria-multiselectable="true">
    <ul class="nav nav-pills nav-stacked emp_sidebar">
        <li role="presentation" class="active">
            <a href="#" data-toggle="collapse" data-target="#collapse_emp">
                <span class="glyphicon glyphicon-user" aria-hidden="true">员工管理</span>
            </a>
            <ul class="nav nav-pills nav-stacked" id="collapse_emp">
                <li role="presentation"><a href="${ctp}/hrms/emp/list">员工信息</a></li>
                <li role="presentation"><a href="/hrms/emp/add">员工新增</a></li>
                <li role="presentation"><a href="/hrms/emp/delall">员工清零</a></li>
            </ul>
        </li>
    </ul>
    <ul class="nav nav-pills nav-stacked dept_sidebar">
        <li role="presentation" class="active">
            <a href="#"  data-toggle="collapse" data-target="#collapse_dept">
                <span class="glyphicon glyphicon-cloud" aria-hidden="true">部门管理</span>
            </a>
            <ul class="nav nav-pills nav-stacked" id="collapse_dept">
                <li role="presentation"><a href="/hrms/dep/list">部门信息</a></li>
                <li role="presentation"><a href="/hrms/dep/add">部门新增</a></li>
                <li role="presentation"><a href="/hrms/dep/delall">部门清零</a></li>
            </ul>
        </li>
    </ul>

</div><!-- /.panel-group，#hrms_sidebar_left -->

</body>
</html>
