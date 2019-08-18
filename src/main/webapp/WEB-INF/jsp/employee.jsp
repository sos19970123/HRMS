<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/15
  Time: 14:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Head Page</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>

    <%@include file="common/head.jsp"%>
    <!-- 中间部分（包括左边栏和员工/部门表单显示部分） -->
    <div class="hrms_body" style="position:relative; top:-15px;">
        <div>
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
                        <c:forEach items="${employeeList}" var="emp">
                            <tr>
                                <td>${emp.empId}</td>
                                <td>${emp.empName}</td>
                                <td>${emp.empEmail}</td>
                                <td>${emp.gender == "0"?"女":"男"}</td>
                                <td>${emp.departmentId}</td>
                                <td>
                                    <a href="#" role="button" class="btn btn-primary emp_edit_btn" data-toggle="modal" data-target=".emp-update-modal">编辑</a>
                                    <a href="#" role="button" class="btn btn-danger emp_delete_btn" >删除</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>

                <div class="panel-body">
                    <div class="table_items">
                        当前第<span class="badge">${curPage}</span>页，共有<span class="badge">${totalPage}</span>页，总记录数<span class="badge">${totalItems}</span>条。
                    </div>
                    <nav aria-label="Page navigation" class="pull-right">
                        <ul class="pagination">
                            <li><a href="${ctp}/hrms/emp/list?pageNo=1">首页</a></li>
                                <c:if test="${curPage==1}">
                                    <li class="disabled">
                                        <a href="#" aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                        </a>
                                    </li>
                                </c:if>
                                <c:if test="${curPage!=1}">
                                    <li>
                                        <a href="#" aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                        </a>
                                    </li>
                                </c:if>
                                <c:forEach begin="1" end="${curPage<5?totalPage:5}" step="1" var="page">
                                    <c:if test="${curPage==page}">
                                        <li class="active">
                                            <a href="${ctp}/hrms/emp/list?pageNo=${page}">${page}</a>
                                        </li>
                                    </c:if>
                                    <c:if test="${curpage!=page}">
                                        <li>
                                            <a href="${ctp}/hrms/emp/list?pageNo=${page}">${page}</a>
                                        </li>
                                    </c:if>
                                </c:forEach>
                                <c:if test="${curPage!=totalPage}">
                                    <li>
                                        <a href="#" aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                        </a>
                                    </li>
                                </c:if>
                                <c:if test="${curPage==totalPage}">
                                    <li class="disabled">
                                        <a href="#" aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                        </a>
                                    </li>
                                </c:if>
                                
                            <%--<li class="active"><a href="#">1</a></li>--%>
                            <%--<li><a href="#">2</a></li>--%>
                            <%--<li><a href="#">3</a></li>--%>
                            <%--<li><a href="#">4</a></li>--%>
                            <%--<li><a href="#">5</a></li>--%>

                            <li><a href="${ctp}/hrms/emp/list?pageNo=${totalPage}">尾页</a></li>
                        </ul>
                    </nav>
                </div>
            </div><!-- /.panel panel-success -->
        </div><!-- /.emp_info -->

        <!-- 尾部 -->
        <%@ include file="common/foot.jsp"%>
        </div>
    </div><!-- /.hrms_body -->

    <%@ include file="addEmployee.jsp"%>
    <%@ include file="updataEmployee.jsp"%>

<script>
    $(".emp_delete_btn").click(function () {
        var empid =  $(this).parent().parent().find("td:eq(0)").text();
        var name = $(this).parent().parent().find("td:eq(1)").text();
        if(confirm("确认删除"+name+"的信息吗")){
            $.ajax({
                url:"${ctp}/hrms/emp/"+empid,
                //type可以支持rest风格
                type:"DELETE",
                success:function () {
                    alert("删除成功");
                }
            });
        }
    });
</script>

</body>
</html>
