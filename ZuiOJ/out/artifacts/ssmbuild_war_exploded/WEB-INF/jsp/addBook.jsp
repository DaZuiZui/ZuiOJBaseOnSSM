<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/2/10
  Time: 18:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>新增书籍</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12">
            <div class="col-md-10"></div>
            <div class="col-md-1">
                <h4 class="navbar-right">
                    <p class="text-info">${sessionScope.username}</p>
                </h4>
            </div>
            <a class="btn btn-danger navbar-right" href="${pageContext.request.contextPath}/loginOut">注销</a>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>新增书籍</small>
                </h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/allBook">返回</a>
        </div>
    </div>
    <div class="row clearfix">

    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <form action="${pageContext.request.contextPath}/book/addBook" method="post" class="form-inline">
                <div class="form-group">
                    书籍名称：<input type="text" name="bookName" required>
                </div>
                <div class="form-group">
                    书籍数量：<input type="text" name="bookCounts" required>
                </div>
                <div class="form-group">
                    书籍详情：<input type="text" name="detail" required>
                </div>
                <input type="submit" value="添加" class="btn btn-primary">
            </form>
        </div>
    </div>



</div>
