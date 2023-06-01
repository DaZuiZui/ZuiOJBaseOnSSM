<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/2/9
  Time: 0:52
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍详情</title>
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
        <div class="col-md-12">
            <div class="page-header col-md-10">
                <h1>
                    <small>书籍列表 —————— 显示所有书籍</small>
                </h1>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-2 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/toAddBook">新增</a>
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/allBook">书籍列表</a>
            </div>

        <div class="col-md-8 column" style="float: right">
            <form action="${pageContext.request.contextPath}/book/findBook" method="post" class="form-inline">
                <div class="form-group col-md-3">
                    <span style="color: red;font-weight: bold">${error}</span>
                </div>
                <div class="form-group col-md-8">
                    <input type="text" name="bookName" class="form-control" placeholder="请输入要查询的书籍名称">
                </div>
                <input type="submit" value="查询" class="btn btn-primary navbar-right">
            </form>
        </div>

        </div>

        <div class="row clearfix">
            <div class="col-md-12">
                <table class="table table-hover table-striped">
                    <thead>
                    <tr>
                        <th>书籍编号</th>
                        <th>书籍名字</th>
                        <th>书籍数量</th>
                        <th>书籍详情</th>
                        <th>操作</th>
                    </tr>
                    </thead>

                    <tbody>
                    <c:forEach var="book" items="${requestScope.get('list')}">
                        <tr>
                            <td>${book.getBookID()}</td>
                            <td>${book.getBookName()}</td>
                            <td>${book.getBookCounts()}</td>
                            <td>${book.getDetail()}</td>
                            <td>
                                <a href="#">详情</a>|
                                <a href="${pageContext.request.contextPath}/book/toUpdatePage/${book.getBookID()}">修改</a>|
                                <a href="${pageContext.request.contextPath}/book/deleteBook/${book.getBookID()}">删除</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>

                </table>
            </div>
        </div>

    </div>
</body>
</html>
