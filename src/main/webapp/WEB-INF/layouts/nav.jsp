<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<form:form action="${pageContext.request.contextPath}/logout" method="POST" name="frmLogout"></form:form>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>เข้าสู่ระบบ Information Technology</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/nav.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">
    <style>
        .top-nav li{
            background: #aa1818;
            border-bottom: 4px solid #aa1919;
            float: left;
            font-size: 10px;
            height: 30px;
            padding-top: 10px;
            position: relative;
            text-align: center;
            width: 12.5%;
          font-family: Kanit;
        }
        .top-nav li a{
            color: #fff;
            padding-top: 7px;
            position: absolute;
            top: 0;
            left: 0;
            width: 150px;
            height: 25px;
            font-size: 13px;
            text-decoration: none;
            font-family: Kanit;
        }
    </style>
</head>
<body bgcolor="#ffffff" >
<header>
    <div class="navbar navbar-default navbar-static-top">
        <div class="navbar-header">
            <a class="navbar-brand"> <img src="${pageContext.request.contextPath}/assets/image/LOGOIT.png" class="hidden-xs" alt="" width="250px" style="margin-left: 30px;"></a>

        </div>
    </div>
</header>
<nav >
    <ul class="top-nav" >
        <li><a href="${pageContext.request.contextPath}">
            <img src="${pageContext.request.contextPath}/assets/image/home.png" width="20px"> หน้าหลัก</a></li>
        <li>
            <a href="${pageContext.request.contextPath}/history">
                <img src="${pageContext.request.contextPath}/assets/image/software-application.png" width="20px"> เกี่ยวกับเรา</a>
            <ul class="submenu">
                <li><a href="${pageContext.request.contextPath}/history">ประวัติความเป็นมา</a></li>
                <li><a href="${pageContext.request.contextPath}/course">ข้อมูลหลักสูตร</a></li>
                <li><a href="${pageContext.request.contextPath}/plan">แผนการเรียน</a></li>
            </ul>
        </li>
        <li><a href="${pageContext.request.contextPath}/news/list_news">
            <img src="${pageContext.request.contextPath}/assets/image/news.png" width="20px">ข่าวสารและกิจกรรม</a></li>
        <li><a href="${pageContext.request.contextPath}/alumni/list_alumni">
            <img src="${pageContext.request.contextPath}/assets/image/reading-book.png" width="20px"> นักศึกษา</a>
        <ul class="submenu">
            <li><a href="${pageContext.request.contextPath}/alumni/list_alumni">ข้อมูลศิษย์เก่า</a></li>
            <li><a href="${pageContext.request.contextPath}">จัดส่งรายงานสหกิจ</a></li>
            <li><a href="${pageContext.request.contextPath}">โครงงานสารสนเทศ</a></li>
        </ul>
        </li>
        <li><a href="${pageContext.request.contextPath}/personnel/list_personnel">
            <img src="${pageContext.request.contextPath}/assets/image/profile-user%20.png" width="20px">  บุคลากร</a></li>
        <li><a href="${pageContext.request.contextPath}">
            <img src="${pageContext.request.contextPath}/assets/image/help.png" width="20px">  FAQ</a></li>
        <li><a href="${pageContext.request.contextPath}/contact">
            <img src="${pageContext.request.contextPath}/assets/image/contact-us.png" width="20px">  ช่องทางการติดต่อ</a></li>

        <li>
            <a href="${pageContext.request.contextPath}" style="text-decoration: none;" >
                <img src="${pageContext.request.contextPath}/assets/image/in.png" width="20px"> เข้าสู่ระบบ</a>
            <ul class="submenu">
                <li><a href="${pageContext.request.contextPath}/login/LoginByPersonnel">บุคลากร</a></li>
                <li><a href="${pageContext.request.contextPath}/login/LoginByAdmin">ผู้ดูแลระบบ</a></li>
            </ul>
        </li>
    </ul>
</nav>
</body>
</html>
