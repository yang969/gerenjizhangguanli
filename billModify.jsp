<%--
  Created by IntelliJ IDEA.
  User: 17852
  Date: 2019/6/23
  Time: 6:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>添加账单</title>
    <link rel="stylesheet"  href="${pageContext.request.contextPath}/css/bootstrap.css" />
    <link rel="stylesheet"  href="${pageContext.request.contextPath}/css/index.css" />
    <link rel="stylesheet"  href="${pageContext.request.contextPath}/css/file.css" />
    <script src="${pageContext.request.contextPath}/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/js/userSetting.js"></script>
    <script src="${pageContext.request.contextPath}/laydate/laydate.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/zshop.css">
    <script>
        /               /执行一个laydate实例
        laydate.render({
            elem: '#creationDate' //指定元素
        });
    </script>
</head>
<body>
<div class="panel panel-default" id="userPic">
    <div class="panel-heading">
        <h3 class="panel-title">添加账单</h3>
    </div>
    <div class="panel-body">
        <form action="${pageContext.request.contextPath}/billModify" method="post" class="form-horizontal">
            <div class="modal-content">
                <!-- 头部、主体、脚注 -->
                <div class="modal-header">
                    <button class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body text-center row">
                    <div class="col-sm-8">
                        <div class="form-group">
                            <label for="id" class="col-sm-4 control-label">账单编号：</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="id" name="id" readonly value="${bill1.id}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="billCode" class="col-sm-4 control-label">账单编号：</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="billCode" name="billCode" value="${bill1.billCode}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="isPayment" class="col-sm-4 control-label">消费情况：</label>
                            <div class="col-sm-8">
                                <select class="form-control" id="isPayment" name="isPayment">
                                    <option value="1" <c:if test="${bill1.isPayment==1 }">selected</c:if>>收入</option>
                                    <option value="2" <c:if test="${bill1.isPayment==2 }">selected</c:if>>支出</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                        <label for="totalPrice" class="col-sm-4 control-label">总金额：</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="totalPrice" name="totalPrice" value="${bill1.totalPrice}">
                        </div>
                    </div>
                        <div class="form-group">
                            <label for="creationDate" class="col-sm-4 control-label">创建日期：</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="creationDate" id="creationDate" value='<fmt:formatDate value="${bill1.creationDate }" pattern="yyyy-MM-dd" />'/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="billDesc" class="col-sm-4 control-label">账单描述：</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="billDesc" id="billDesc" value="${bill1.billDesc}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="billDesc" class="col-sm-4 control-label">消费方向：</label>
                            <div class="col-sm-8">
                                <select class="form-control" id="roleId" name="roleId">
                                    <option>--请选择--</option>
                                    <c:forEach items="${roles1}" var="role">
                                        <option value="${role.id}">${role.roleName}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-primary updatePro" type="submit">修改</button>
                    <input type="reset" class="btn btn-primary" value="返回">
                </div>
            </div>
        </form>
    </div>
</div>
</body>


</html>
