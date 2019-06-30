<%--
  Created by IntelliJ IDEA.
  User: 17852
  Date: 2019/6/23
  Time: 0:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>用户列表</title>
    <link rel="stylesheet"  href="${pageContext.request.contextPath}/css/bootstrap.css" />
    <link rel="stylesheet"  href="${pageContext.request.contextPath}/css/index.css" />
    <link rel="stylesheet"  href="${pageContext.request.contextPath}/css/file.css" />
    <script src="${pageContext.request.contextPath}/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/js/userSetting.js"></script>
</head>

<body>
<div class="panel panel-default" id="userPic">
    <div class="panel-heading">
        <h3 class="panel-title">用户修改</h3>
    </div>
    <div class="panel-body">
        <form action="${pageContext.request.contextPath}/modifyUser" method="post" class="form-horizontal">
            <div class="modal-content">
                <!-- 头部、主体、脚注 -->
                <div class="modal-header">
                    <button class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">修改用户</h4>
                </div>
                <div class="modal-body text-center row">
                    <div class="col-sm-8">
                        <div class="form-group">
                            <label for="id" class="col-sm-4 control-label">编号：</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="id" name="id" readonly value="${user1.id}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="userName" class="col-sm-4 control-label">用户名称：</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="userName" name="userName" value="${user1.userName}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="phone" class="col-sm-4 control-label">手机号：</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="phone" name="phone" value="${user1.phone}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="email" class="col-sm-4 control-label">邮箱：</label>
                            <div class="col-sm-8">
                                <input type="email" class="form-control" name="email" id="email" value="${user1.email}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="userPassword" class="col-sm-4 control-label">密码：</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="userPassword" id="userPassword" value="${user1.userPassword}">
                            </div>
                        </div>
                    </div>

                </div>
                <div class="modal-footer">
                    <button class="btn btn-primary updatePro" type="submit">修改</button>
                    <button class="btn btn-primary cancel" data-dismiss="modal">取消</button>
                </div>
            </div>
        </form>
    </div>
</div>
</body>

</html>
