<%--
  Created by IntelliJ IDEA.
  User: 17852
  Date: 2019/6/21
  Time: 17:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>注册页面</title>

    <!-- ================= Favicon ================== -->
    <!-- Standard -->
    <link rel="shortcut icon" href="http://placehold.it/64.png/000/fff">
    <!-- Retina iPad Touch Icon-->
    <link rel="apple-touch-icon" sizes="144x144" href="http://placehold.it/144.png/000/fff">
    <!-- Retina iPhone Touch Icon-->
    <link rel="apple-touch-icon" sizes="114x114" href="http://placehold.it/114.png/000/fff">
    <!-- Standard iPad Touch Icon-->
    <link rel="apple-touch-icon" sizes="72x72" href="http://placehold.it/72.png/000/fff">
    <!-- Standard iPhone Touch Icon-->
    <link rel="apple-touch-icon" sizes="57x57" href="http://placehold.it/57.png/000/fff">

    <!-- Styles -->
    <link href="assets/fontAwesome/css/fontawesome-all.min.css" rel="stylesheet">
    <link href="assets/css/lib/themify-icons.css" rel="stylesheet">
    <link href="assets/css/lib/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/lib/nixon.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">
</head>

<body class="bg-primary">

<div class="Nixon-login">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-lg-offset-3">
                <div class="login-content">
                    <div class="login-logo">
                        <span>PeopleAdmin</span></a>
                    </div>
                    <div class="login-form">
                        <h4>Register to PeopleAdmin</h4>
                        <form action="${pageContext.request.contextPath}/doRegister" method="post">
                            <div class="form-group">
                                <label>User Name</label>
                                <input type="text" id="userName" name="userName" class="form-control" placeholder="User Name">
                            </div>
                            <div class="form-group">
                                <label>User Phone</label>
                                <input type="text" id="phone" name="phone" class="form-control" placeholder="Phone">
                            </div>
                            <div class="form-group">
                                <label>Email address</label>
                                <input type="email" id="email" name="email" class="form-control" placeholder="Email">
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" id="userPassword" name="userPassword" class="form-control" placeholder="Password">
                            </div>

                            <button type="submit" class="btn btn-primary btn-flat m-b-30 m-t-30">Register</button>

                            <div class="register-link m-t-15 text-center">
                                <p>Already have account ? <a href="${pageContext.request.contextPath}/login"> Sign in</a></p>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>

