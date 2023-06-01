<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/2/10
  Time: 18:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>修改信息</title>
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
                    <small>修改信息</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/book/updateBook" method="post">
        <input type="hidden" name="bookID" value="${QBook.getBookID()}"/>
        书籍名称：<input type="text" name="bookName" value="${QBook.getBookName()}"/>
        书籍数量：<input type="text" name="bookCounts" value="${QBook.getBookCounts()}"/>
        书籍详情：<input type="text" name="detail" value="${QBook.getDetail() }"/>
        <input type="submit" value="提交"/>
    </form>

</div>