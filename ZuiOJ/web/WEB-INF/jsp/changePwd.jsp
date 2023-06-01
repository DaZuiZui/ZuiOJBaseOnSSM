<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/2/13
  Time: 19:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改密码</title>
    <link href="https://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12">
            <div class="page-header">
                <h1>
                    <small>图书管理系统————————修改密码</small>
                </h1>
            </div>
        </div>
    </div>

    <div id="row clearfix">
        <div class="col-md-12">
            <div class="col-md-8">
                <form action="${pageContext.request.contextPath}/changePwd" method="post">
                    <div class="form-group">
                        <label>用户名</label>
                        <input type="text" class="form-control" name="userName" placeholder="输入要找回密码的用户名" required>
                    </div>
                    <div class="form-group">
                        <label>旧密码</label>
                        <input type="password" class="form-control" name="oldPassword" placeholder="请输入旧密码" required>
                    </div>
                    <div class="form-group">
                        <label>新密码</label>
                        <input type="password" class="form-control" name="newPassword" placeholder="请输入新密码" required>
                    </div>
                    <button type="submit" class="btn btn-primary">修改密码</button>
                    <a href="${pageContext.request.contextPath}/jumpLoginPage" class="btn btn-danger">返回</a>
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