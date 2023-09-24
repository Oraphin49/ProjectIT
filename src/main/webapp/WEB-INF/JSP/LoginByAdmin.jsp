<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html style="height: 100%">
<head>
    <meta charset="UTF-8">
    <title>${title}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="${pageContext.request.contextPath}/assets/css/Login.css" rel="stylesheet">

</head>
<body bgcolor="#fffff1" style="background-image: linear-gradient(to bottom, rgba(255, 255, 255, 0.6) 0%,rgba(255, 255, 255, 0.6) 100%), url('https://itsci.mju.ac.th/itsci/assets/img/banner4.png');background-position: center;background-size: cover;background-repeat: no-repeat; ">
<nav>
    <img src="${pageContext.request.contextPath}/assets/image/LOGOIT1.png" width="320px" alt="Image">
    <ul class="top-nav">
        <li><a href="${pageContext.request.contextPath}">
            <img src="${pageContext.request.contextPath}/assets/image/home.png" width="20px"> หน้าหลัก</a></li>
    </ul>
</nav>
<div class="p">
    <img src="${pageContext.request.contextPath}/assets/image/p.png" width="285px">
    <p align="center"><b>สำหรับผู้ดูแลระบบ</b></p>
</div>
<div class="container">
    <h2>Login</h2>
    <form:form action="${pageContext.request.contextPath}/login/doLoginByAdmin" method="POST">
        <%--@declare id="email"--%><label for="email"><img src="${pageContext.request.contextPath}/assets/image/email.png" width="28px"> Email:</label>
        <input type="text" id="username" name="username" required><label for="password"><img src="${pageContext.request.contextPath}/assets/image/padlock.png" width="28px"> Password:</label>
        <input type="password" id="password" name="password" required>
        <input type="submit" value="Login">
    </form:form>
</div>
</body>
</html>