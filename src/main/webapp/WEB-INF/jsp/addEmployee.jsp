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
<head>
    <title>Title</title>
</head>
<body>
<div class="modal fade emp-add-modal" tabindex="-1" role="dialog" aria-labelledby="emp-add-modal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">员工新增</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal add_emp_form">
                    <div class="form-group">
                        <label for="add_inputName" class="col-sm-2 control-label">姓名</label>
                        <div class="col-sm-8">
                            <input type="text" name="empName" class="form-control" id="add_inputName" placeholder="如：张三">
                            <span id="helpBlock_add_inputName" class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add_inputEmail" class="col-sm-2 control-label">邮箱</label>
                        <div class="col-sm-8">
                            <input type="email" name="empEmail" class="form-control" id="add_inputEmail" placeholder="zs@qq.com">
                            <span id="helpBlock_add_inputEmail" class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">性别</label>
                        <div class="col-sm-8">
                            <label class="radio-inline">
                                <input type="radio" checked="checked" name="gender" id="add_inputGender1" value="M"> 男
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="gender" id="add_inputGender2" value="F"> 女
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add_department" class="col-sm-2 control-label">部门</label>
                        <div class="col-sm-8">
                            <div class="checkbox">
                                <select class="form-control" name="departmentId" id="add_department">
                                    <%-- <option value="1">CEO</option>--%>

                                </select>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary emp_save_btn">保存</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<script>

    //点击添加员工后，开启模态
    $(".emp_add_btn").click(function () {

        $.ajax({
            url:"${ctp}/hrms/getdeplist",
            method:"GET",
            success:function (result) {
                $.each(result, function () {
                    var optionEle = $("<option></option>").append(this.depName).attr("value", this.depId);
                    optionEle.appendTo("#add_department");
                });
            }
        });

        $('.emp-add-modal').modal({
            backdrop:static,
            keyboard:true
        });
    });


    $(".emp_save_btn").click(function () {
        $.ajax({
            url:"${ctp}/hrms/emp",
            type:"post",
            //serialize序列化表单进行提交
            data:$(".add_emp_form").serialize(),
            success:function (result) {
                if (result == 1){
                    alert("添加成功");
                };
            },
            error:function () {
                alert("添加失败，请重试")
            }
        })
    });
</script>
</body>
</html>
