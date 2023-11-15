<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html style="height: 100%">
<head>
    <meta charset="UTF-8">
    <title>${title}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">
<%--    <link href="${pageContext.request.contextPath}/assets/css/Login.css" rel="stylesheet">--%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        .top-nav li {
            font-family: Kanit;
            list-style-type: none;
            list-style-image: none;
            background-color: rgb(170, 24, 24);
            border-bottom: 2px solid rgb(170, 24, 24);;
        }
        nav.main-nav{
            background: rgb(51, 51, 51);
            background-image: linear-gradient(top,#2f2f2f,#4f4f4f);
            width: 100%;
        }

        .top-nav{
            border-bottom: 2px solid #111;
            height: 30px;
            list-style: none;
            margin: 0;
            padding-left: 0;
            width: 100%;
        }
        .top-nav li{
            background: #aa1818;
            background-image: linear-gradient(top,#2f2f2f,#4f4f4f);
            border-bottom: 2px solid #aa1919;
            border-right: 1px solid #fff;
            float: left;
            font-size: 18px;
            height: 40px;
            padding-top: 10px;
            position: relative;
            text-align: center;
            width: 100%;
            /*transition: height 0.3s ease;*/

        }

        .top-nav li a{
            color: #fff;
            padding-top: 10px;
            position: absolute;
            left: 0;
            width: 150px;
            height: 25px;
            font-size: 13px;
        }

        .top-nav li a:hover{
            color: rgb(245, 178, 33);

        }

        .container {
            font-family: Kanit;
            width: 365px;
            height: 300px;
            margin-top: 50px;
            padding: 20px;
            background-color: #d9d9d9;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .container h2 {
            text-align: center;
            font-family: Kanit;
        }
        .container label, .container input[type="text"], .container input[type="password"], .container input[type="submit"] {
            display: block;
            height: 30px;
            width: 85%;
            border-radius: 10px;
            margin-bottom: 10px;
            font-size: 18px;
            margin-left: 17px;
        }
        .container input[type="submit"] {
            background-color: #807A8A;
            color: #000;
            border: none;
            padding: 10px;
            border-radius: 5px;
            cursor: pointer;
        }

        .bacK{
            background-color: #aa1818;
        }
        body{
            background-image: url('https://itsci.mju.ac.th/itsci/assets/img/banner4.png');
            background-position: center;
            background-size: cover;
            background-repeat: no-repeat;
        }

    </style>
</head>
<body bgcolor="#fffff1"
      style="background-image: linear-gradient(to bottom,rgb(255 255 255) 0%,rgb(255 255 255 / 69%) 100%), url('https://itsci.mju.ac.th/itsci/assets/img/banner4.png');background-position: center;background-size: cover;background-repeat: no-repeat; ">
<nav>
    <ul class="top-nav">
        <li><a href="${pageContext.request.contextPath}"><i class="fas fa-home"></i>หน้าหลัก</a></li>
    </ul>
</nav>
<br><br><br><br><br><br>
<div align="center">
<div>
    <h1 align="center" style="font-family: Kanit; font-weight: bold"><b>สำหรับบุคลากร</b></h1>
</div>
<div class="container" align="center">
    <h2>Login</h2>
    <form:form action="${pageContext.request.contextPath}/login/doLoginByPersonnel" method="POST">
        <%--@declare id="email"--%><label for="email"><img
            src="${pageContext.request.contextPath}/assets/image/email.png" width="28px"> Email:</label>
        <input type="text" id="username" name="username" required><label for="password"><img
            src="${pageContext.request.contextPath}/assets/image/padlock.png" width="28px"> Password:</label>
        <input type="password" id="password" name="password" required>
        <input type="submit" value="Login">
    </form:form>
</div>
</div>
</body>
</html>