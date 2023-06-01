<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/2/12
  Time: 23:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录页面</title>
    <link href="https://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script>
        function register() {
                $.post({
                    data:
                        $('#logForm').serialize()
                });
        }
    </script>
</head>
<body>

<div class="container">

    <div class="row clearfix">
        <div class="col-md-12">
            <div class="page-header">
                <h1>
                    <small>图书管理系统————————登陆页面</small>
                </h1>
            </div>
        </div>
    </div>

    <div id="row clearfix">
        <div class="col-md-12">
            <div class="col-md-8">
                <form id="logForm" action="${pageContext.request.contextPath}/login" method="post">
                    <div class="form-group ">
                        <label>用户名</label>
                        <input type="text" class="form-control" name="userName" placeholder="用户名" required>
                    </div>
                    <div class="form-group">
                        <label>密码</label>
                        <input type="password" class="form-control" name="password" placeholder="密码" required>
                    </div>
                    <button class="btn btn-primary" onclick="register()">登录</button>
                    <a href="${pageContext.request.contextPath}/jumpChangePwdPage" class="btn btn-danger">忘记密码？点我找回</a>
                    <a href="${pageContext.request.contextPath}/jumpRegisterPage" class="btn btn-danger">还没有账号？点我注册</a>
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
