<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 97405
  Date: 2019/8/14
  Time: 21:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<html>
<head>
    <title>Title</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <%application.setAttribute("ctp",request.getContextPath());%>
</head>
<body>
<%@include file="common/head.jsp"%>
<div class="container-fluid">
    <div class="row">
        <%@include file="common/leftsidebar.jsp"%>
        <!-- 中间员工表格信息展示内容 -->
        <div class="emp_info col-sm-10">

            <div class="panel panel-success">
                <!-- 路径导航 -->
                <div class="panel-heading">
                    <ol class="breadcrumb">
                        <li><a href="#">员工管理</a></li>
                        <li class="active">员工信息</li>
                    </ol>
                </div>
                <!-- Table -->
                <table class="table table-bordered table-hover" id="emp_table">
                    <thead>
                    <th>员工编号</th>
                    <th>员工姓名</th>
                    <th>邮箱</th>
                    <th>性别</th>
                    <th>部门</th>
                    <th>操作</th>
                    </thead>
                    <tbody>
                    <c:forEach items="${employee}" var="emp">
                        <tr>
                            <td>${emp.empId}</td>
                            <td>${emp.empName}</td>
                            <td>${emp.empEmail}</td>
                            <td>${emp.gender}</td>
                            <td>${emp.department}</td>
                            <td>
                                <a href="/hrms/emp/updata" role="button" class="btn btn-primary">编辑</a>
                                <a href="/hrms/emp/del" role="button" class="btn btn-danger">删除</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>

                <div class="panel-body">
                    <div class="table_items">
                        当前第<span class="badge">1</span>页，共有<span class="badge">10</span>页，总记录数<span class="badge">100</span>条。
                    </div>
                    <nav aria-label="Page navigation" class="pull-right">
                        <ul class="pagination">
                            <li><a href="#">首页</a></li>
                            <li class="disabled">
                                <a href="#" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </li>
                            <li class="active"><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li>
                                <a href="#" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </li>
                            <li><a href="#">尾页</a></li>
                        </ul>
                    </nav>
                </div>
            </div><!-- /.panel panel-success -->
        </div><!-- /.emp_info -->
    </div>
</div><!-- container-fluid -->
<%@include file="common/foot.jsp"%>
</body>

</html>
