<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>${title}</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="${pageContext.request.contextPath}/assets/css/Login.css" rel="stylesheet">


</head>
<body bgcolor="#fffff1">
<img src="${pageContext.request.contextPath}/assets/image/LOGOIT1.png" width="320px" alt="Image">
<nav>
  <ul class="top-nav">
    <li><a href="${pageContext.request.contextPath}">
      <img src="${pageContext.request.contextPath}/assets/image/home.png" width="20px"> หน้าหลัก</a></li>
  </ul>
</nav>
<div class="p">
  <img src="${pageContext.request.contextPath}/assets/image/p.png" width="285px">
  <p align="center"><b>สำหรับบุคลากร</b></p>
</div>
<div class="container">
  <h2>Login</h2>
  <form:form action="${pageContext.request.contextPath}/login/doLoginByPersonnel" method="POST">
    <%--@declare id="email"--%><label for="email"><img src="${pageContext.request.contextPath}/assets/image/email.png" width="28px"> Email:</label>
    <input type="text" id="username" name="username" required><label for="password"><img src="${pageContext.request.contextPath}/assets/image/padlock.png" width="28px"> Password:</label>
    <input type="password" id="password" name="password" required>
    <input type="submit" value="Login">
  </form:form>
</div>
</body>
</html>