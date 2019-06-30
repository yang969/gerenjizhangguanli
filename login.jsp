<%--
  Created by IntelliJ IDEA.
  User: 17852
  Date: 2019/6/21
  Time: 16:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>登录页面</title>

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
  <link href="${pageContext.request.contextPath }/assets/fontAwesome/css/fontawesome-all.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath }/assets/css/lib/themify-icons.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath }/assets/css/lib/bootstrap.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath }/assets/css/lib/nixon.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath }/assets/css/style.css" rel="stylesheet">
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
            <h4>People Login</h4>
            <form action="${pageContext.request.contextPath}/doLogin" method="post">
              <div class="form-group">
                <label>Email address</label>
                <input type="email" id="email" name="email"  class="form-control" placeholder="Email">
              </div>
              <div class="form-group">
                <label>Password</label>
                <input type="password" id="userPassword" name="userPassword" class="form-control" placeholder="Password">
              </div>
              <input type="submit" class="btn btn-primary btn-flat m-b-30 m-t-30" value="Sign in">
              <div class="register-link m-t-15 text-center">
                <p>Don't have account ? <a href="${pageContext.request.contextPath}/register"> Sign Up Here</a></p>
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