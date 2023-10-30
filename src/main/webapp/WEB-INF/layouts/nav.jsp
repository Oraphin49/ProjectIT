<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<form:form action="${pageContext.request.contextPath}/logout" method="POST" name="frmLogout"></form:form>

<!DOCTYPE html >
<html lang="en" >
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/nav.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"> <!-- เพิ่มไลบรารี Font Awesome -->
    <style>
        *, ::after, ::before {
            box-sizing: border-box;
        }
        /*.gtco-nav ul li a:hover, .gtco-nav ul li a:focus, .gtco-nav ul li a:active {*/
        /*    color: #fff;}*/
        /* ปรับแต่งสไตล์ของลิงก์ */
        .top-nav li a {
            color: #ffffff;
            padding-top: 5px;
            position: absolute;
            top: 0;
            left: -20px;
            width: 100%;
            height: 100%;
            font-size: 13px;
            text-decoration: none;
            font-family: 'Kanit', sans-serif;
            background-color: rgba(62, 69, 122, 100);
        }

        .top-nav li {
            background: none;
            float: left;
            left: 10px;
            border-bottom: 2px solid #FFFFFF;
            font-size: 10px;
            height: 32px;
            padding-top: 8px;
            position: relative;
            text-align: center;
            width: 12.5%;
            font-family: 'Kanit', sans-serif;
            background-color: rgba(62, 69, 122, 100);

            list-style-type: none;
            list-style-image: none;
        }

        /* เปลี่ยนสีของลิงก์เมื่อ hover */
        .top-nav li a:hover {
            color: rgb(255, 255, 255);
            background-color: rgb(42, 48, 108);
        }

        /* ปรับแต่งสไตล์ของเมนูแบบหลายระดับ */
        .top-nav .submenu {
            margin-top: 0px;
            display: none;
        }

        .top-nav li:hover .submenu {
            display: block;
            width: 150px;
            position: absolute;
            top: 100%;
            left: 0;
        }

        .top-nav .submenu li {
            display: block;
            background-color: rgba(62, 69, 122, 100);
            width: 150px;
            font-family: 'Kanit', sans-serif;
        }

        .top-nav .submenu li a {
            padding: 2px;
            color: #ffffff;
            width: 100%;
            margin-top: 5px;
            font-size: 12px;
            background-color: rgba(62, 69, 122, 100);
        }
        .top-nav .submenu li a:hover {
            color: #ffffff;
            background-color: rgb(42, 48, 108);
        }

    </style>
</head>
<body >
<nav class="navbar-b">
    <div class="navbar navbar-default navbar-static-top" style="background-color: #FFFFFF">
        <div class="navbar-header" >
            <a class="navbar-brand"  > <img src="${pageContext.request.contextPath}/assets/image/LOGOIT.png" class="hidden-xs" alt="" width="250px" style="margin-left: 30px;"></a>
        </div>
    </div>
    <ul class="top-nav" style="background-color: #FFFFFF; margin-top: 0px">
        <li><a href="${pageContext.request.contextPath}"><i class="fas fa-home"></i> หน้าหลัก</a></li>
        <li>
            <a href="${pageContext.request.contextPath}/history"><i class="fas fa-info-circle"></i> เกี่ยวกับเรา</a>
            <ul class="submenu">
                <li><a href="${pageContext.request.contextPath}/history">ประวัติความเป็นมา</a></li>
                <li><a href="${pageContext.request.contextPath}/course">ข้อมูลหลักสูตร</a></li>
<%--                <li><a href="${pageContext.request.contextPath}/plan">แผนการเรียน</a></li>--%>
            </ul>
        </li>
        <li><a href="${pageContext.request.contextPath}/news/list_news"><i class="fas fa-newspaper"></i> ข่าวสารและกิจกรรม</a></li>
        <li><a href="${pageContext.request.contextPath}/alumni/list_alumni"><i class="fas fa-graduation-cap"></i> นักศึกษา</a>
            <ul class="submenu">
                <li><a href="${pageContext.request.contextPath}/alumni/list_alumni">ข้อมูลศิษย์เก่า</a></li>
                <li><a href="https://itsci.mju.ac.th/coopedu2/"><i class="fas fa-file-alt"></i> จัดส่งรายงานสหกิจ</a></li>
                <li><a href="${pageContext.request.contextPath}/project"> ฐานข้อมูลโครงงานสารสนเทศ</a></li>
            </ul>
        </li>
        <li><a href="${pageContext.request.contextPath}/personnel/list_personnel"><i class="fas fa-users"></i> บุคลากร</a></li>
        <li><a href="${pageContext.request.contextPath}/faq"><i class="fas fa-question-circle"></i> FAQ</a></li>
        <li><a href="${pageContext.request.contextPath}/contact"><i class="fas fa-envelope"></i> ช่องทางการติดต่อ</a></li>
        <li>
            <a href="${pageContext.request.contextPath}" style="text-decoration: none;"><i class="fas fa-sign-in-alt"></i> เข้าสู่ระบบ</a>
            <ul class="submenu">
                <li><a href="${pageContext.request.contextPath}/login/LoginByPersonnel">บุคลากร</a></li>
                <li><a href="${pageContext.request.contextPath}/login/LoginByAdmin">ผู้ดูแลระบบ</a></li>
            </ul>
        </li>
    </ul>
</nav>
</body>
</html>
