<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/2/13
  Time: 18:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册页面</title>
    <link href="https://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script>
        let result1;
        let result2;
        function validatePwd(){
            let text="两次的密码不相同!";
            result1 = false;
            if ($("#password").val() === $("#confirmPassword").val()){
                result1 = true;
            }
            if (result1 !== true){
                $("#confirmPwdInfo").css("color", "red").html(text);
            }

        }

        function validateUserName() {
                $.get({
                    url:"${pageContext.request.contextPath}/validateUserName",
                    data:{userName:$("#userName").val()},
                    success:function (data) {
                        if (data === "用户名可用！"){
                            result2 = true;
                            $("#userInfo").css("color","green").html(data);
                        }else{
                            result2 = false;
                            $("#userInfo").css("color","red").html(data);
                        }
                    }
                })

        }
        function register() {
            if(result1===true && result2===true){
                $.post({
                    data:
                        $('#from1').serialize()
                });
            }else if (result1 !== true){
                alert("两次输入的密码不一致！");
            }else if(result2 !== true){
                alert("用户名已存在！");
            }else {
                alert("注册成功！");
            }
        }
    </script>
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12">
            <div class="page-header">
                <h1>
                    <small>图书管理系统————————注册页面</small>
                </h1>
            </div>
        </div>
    </div>

    <div id="row clearfix">
        <div class="col-md-12">
            <div class="col-md-8">
                <form id="from1" method="post" action="${pageContext.request.contextPath}/register">
                    <div class="form-group">
                        <label>用户名</label>
                        <input type="text" class="form-control" name="userName" id="userName" placeholder="用户名可以由字母、数字和下划线组成" onblur="validateUserName()" required>
                        <p class="small" id="userInfo"></p>
                    </div>
                    <div class="form-group">
                        <label>密码</label>
                        <input type="password" class="form-control" name="password" id="password" placeholder="请输入密码" required>
                    </div>
                    <div class="form-group">
                        <label>确认密码</label>
                        <input type="password" class="form-control" name="confirmPassword" id="confirmPassword" placeholder="请再次输入密码" onblur="validatePwd()" required>
                        <p class="small" id="confirmPwdInfo"></p>
                    </div>
                    <button class="btn btn-primary" onclick="register()">注册</button>
                    <a href="${pageContext.request.contextPath}/jumpLoginPage" class="btn btn-danger">已有账号？点我登录</a>
                </form>
            </div>
            <div class="col-md-4">
                <label>公告栏</label>
                <p class="text-danger">本系统尚处于开发状态</p>
            </div>
        </div>
    </div>

</div>

</body>
</html>
