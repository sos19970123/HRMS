<%--
  Created by IntelliJ IDEA.
  User: 97405
  Date: 2019/8/14
  Time: 21:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
</head>
<body>
    <%@include file="common/head.jsp"%>
    <div class="container-fluid">
        <div class="row">
            <%@include file="common/leftsidebar.jsp"%>
            <div class="hrms_main_ad col-sm-10">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h3 style="text-align: center;">欢迎进入XXX公司人力资源管理系统！</h3>
                    </div>
                    <div class="panel-body" style="position:relative; top:-15px;">
                        <div id="hrms_carousel_1" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#hrms_carousel_1" data-slide-to="0" class="active"></li>
                                <li data-target="#hrms_carousel_1" data-slide-to="1"></li>
                                <li data-target="#hrms_carousel_1" data-slide-to="2"></li>
                            </ol>

                            <div class="carousel-inner" role="listbox">
                                <div class="item active" style="text-align: center;">
                                    <img class="img-responsive center-block" src="C:\Users\Administrator\Desktop\company1.jpg" alt="company1">
                                    <div class="carousel-caption">
                                        <h3>漂亮大气的办公楼</h3>
                                    </div>
                                </div>
                                <div class="item">
                                    <img class="img-responsive center-block" src="C:\Users\Administrator\Desktop\company2.jpg" alt="company1">
                                    <div class="carousel-caption">
                                        <h3>休闲的放松场所</h3>
                                    </div>
                                </div>
                                <div class="item">
                                    <img class="img-responsive center-block" src="C:\Users\Administrator\Desktop\company3.jpg" alt="company1">
                                    <div class="carousel-caption">
                                        <h3>舒适的办公环境</h3>
                                    </div>
                                </div>
                            </div>

                            <!-- Controls -->
                            <a class="left carousel-control" href="#chrms_carousel_1" role="button" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="right carousel-control" href="#hrms_carousel_1" role="button" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div><!-- /#hrms_carousel_1 -->

                    </div><!-- /.panel-body -->
                </div><!-- /.panel -->
            </div><!-- /.hrms_main_ad -->
        </div>
    </div><!-- container-fluid -->
    <%@include file="common/foot.jsp"%>
</body>
</html>
