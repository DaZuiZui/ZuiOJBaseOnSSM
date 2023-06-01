<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/2/8
  Time: 20:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>主页</title>
    <link href="https://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
  </head>
  <body>
    <div class="container">

      <div class="row clearfix">
        <div class="col-md-12 column">
          <nav class="navbar navbar-default" role="navigation">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button> <a class="navbar-brand" href="#">图书管理系统</a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              <ul class="nav navbar-nav">
                <li class="active">
                  <a href="${pageContext.request.contextPath}/book/allBook">书库</a>
                </li>
                <li>
                  <a href="#">待开发</a>
                </li>
              </ul>
              <ul class="nav navbar-nav navbar-right">
                  <li>
                    <a href="${pageContext.request.contextPath}/jumpLoginPage">登录</a>
                  </li>
              </ul>
            </div>
          </nav>
          <!--大框开始-->
          <div class="jumbotron">
            <h1>
              Hello, world!
            </h1>
            <p>
              开发中，敬请期待......
            </p>
            <p>
              <a class="btn btn-primary btn-large" href="#">了解更多</a>
            </p>
          </div>
        </div>
      </div>
      <!--大框结束-->
      <!--小框开始-->
      <div class="row clearfix">
        <!--小框1开始-->
        <div class="col-md-4 column">
          <h2>
            标题1
          </h2>
          <p>
           热卖图书1
          </p>
          <p>
            <a class="btn" href="#">查看详情 »</a>
          </p>
        </div>
        <!--小框1结束-->
        <!--小框2开始-->
        <div class="col-md-4 column">
          <h2>
            标题2
          </h2>
          <p>
            热卖图书2
          </p>
          <p>
            <a class="btn" href="#">查看详情 »</a>
          </p>
        </div>
        <!--小框2结束-->
        <!--小框3开始-->
        <div class="col-md-4 column">
          <h2>
            标题3
          </h2>
          <p>
            热卖图书3
          </p>
          <p>
            <a class="btn" href="#">查看详情 »</a>
          </p>
        </div>
        <!--小框3结束-->
      </div>
      <!--小框结束-->
    </div>
  </body>
</html>
