<%--
  Created by IntelliJ IDEA.
  User: 17852
  Date: 2019/6/23
  Time: 3:56
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>账单管理</title>
    <link rel="stylesheet"  href="${pageContext.request.contextPath}/css/bootstrap.css" />
    <link rel="stylesheet"  href="${pageContext.request.contextPath}/css/index.css" />
    <script src="${pageContext.request.contextPath}/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/js/userSetting.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap-paginator.js"></script>
    <script src="${pageContext.request.contextPath}/layer/layer.js"></script>
    <script src="${pageContext.request.contextPath}/laydate/laydate.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/zshop.css">
    <script>
        //执行一个laydate实例
        laydate.render({
            elem: '#creationDate' //指定元素
        });
    </script>
</head>
               
<body>
<div class="panel panel-default" id="adminSet">
    <div class="panel-heading">
        <h3 class="panel-title">账单管理</h3>
    </div>
    <div class="panel-body">
        <div class="showmargersearch">
            <form class="form-inline" action="${pageContext.request.contextPath}/findByParams" method="post">
                <div class="form-group">
                    <label for="creationDate">月份:</label>
                    <input type="text" class="form-control" id="creationDate" placeholder="请输入月份" name="creationDate"/>
                </div>
                <input type="submit" value="查询" class="btn btn-primary">
            </form>
        </div>
        <br>
        <form action="${pageContext.request.contextPath}/Add" method="post">
            <input type="submit" value="添加账单" class="btn btn-primary">
        </form>
        <div class="show-list text-center" style="position: relative; top: 10px;">
            <table class="table table-bordered table-hover" style='text-align: center;'>
                <thead>
                <tr class="text-danger">
                    <th class="text-center">编号</th>
                    <th class="text-center">账单编码</th>
                    <th class="text-center">消费情况</th>
                    <th class="text-center">账单总金额</th>
                    <th class="text-center">创建日期</th>
                    <th class="text-center">账单描述</th>
                    <th class="text-center">消费方向</th>
                    <th class="text-center">操作</th>
                </tr>
                </thead>
                <tbody id="tb">
                <c:forEach items="${billList}" var="bill">
                    <tr>
                        <td>${bill.id}</td>
                        <td>${bill.billCode}</td>
                        <td>
                            <c:if test="${bill.isPayment==1}">收入</c:if>
                            <c:if test="${bill.isPayment==2}">支出</c:if>
                        </td>
                        <td>${bill.totalPrice}</td>
                        <td>
                            <fmt:formatDate value="${bill.creationDate}" type="both" pattern="yyyy-MM-dd"/>
                        </td>
                        <td>${bill.billDesc}</td>
                        <td>${bill.role.roleName}</td>
                        <td class="text-center">
                            <a href="${pageContext.request.contextPath}/findBillById?id=${bill.id }">修改</a>
                            <a href="${pageContext.request.contextPath}/removeBillById?id=${bill.id }" onclick="return confirm('是否确认删除？')">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <ul id="pagination"></ul>
        </div>
    </div>
</div>

</body>

</html>
