<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<form:form action="${pageContext.request.contextPath}/logout" method="POST" name="frmLogout"></form:form>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css">
    <style>

        .navbar-light .navbar-nav .nav-link {
            color: #FFFFFF;
            font-family: Kanit;
            font-size: 19px;
        }

        .navbar-expand-lg .navbar-nav .nav-link {

            padding-right: 0.2rem;
            padding-left: 0.2rem;
        }

        .navbar-light .navbar-nav .nav-link:hover {
            color: #ffdd00;
        }

        .bg-light {
            background-color: #aa1818 !important;
            box-shadow: 0 3px 10px 0 rgba(0, 0, 0, .1);
        }

        .nav-item {
            margin-right: 10px;
        }

        .nav-link {
            color: #ffffff;
            font-family: Kanit;
            font-size: 16px;
        }

        .navbar {
            background-color: #aa1818;
            padding-bottom: 30px;
        }

        .navbar-brand img {
            margin-left: 30px;
            max-width: 250px;
        }

        .dropdown-menu {
            background-color: #831212;
        }

        .gtco-nav a {
            padding: 0px 0px;
            color: #ffffff;
            font-family: Kanit;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand" style="white-space: nowrap;">
            <img src="${pageContext.request.contextPath}/assets/image/Oraphin_LogoIT.png" class="hidden-xs" alt=""
                 style="margin-left: 0px; max-width: 300px;">
        </a>

        <!-- ปุ่มเมนูบนมือถือ -->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- เมนู -->
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}">หน้าหลัก</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="${pageContext.request.contextPath}/history"
                       id="navbarDropdown" role="button" data-bs-toggle="dropdown"
                       aria-haspopup="true" aria-expanded="false" style="white-space: nowrap;">
                        เกี่ยวกับเรา
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="${pageContext.request.contextPath}/history">ประวัติความเป็นมา</a>
                        <a class="dropdown-item" href="${pageContext.request.contextPath}/course">ข้อมูลหลักสูตร</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/news/list_news">ข่าวสารและกิจกรรม</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="${pageContext.request.contextPath}/alumni/list_alumni"
                       role="button" data-bs-toggle="dropdown"
                       aria-haspopup="true" aria-expanded="false" style="white-space: nowrap;">
                        ข้อมูลศิษย์เก่า
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="${pageContext.request.contextPath}/alumni/list_alumni" >ข้อมูลศิษย์เก่า</a>
                        <a class="dropdown-item" href="https://itsci.mju.ac.th/coopedu2/" target="_blank">จัดส่งรายงานสหกิจ</a>
                        <a class="dropdown-item" href="#" target="_blank">ฐานข้อมูลโครงงานสารสนเทศ</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/personnel/list_personnel">บุคลากร</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/faq">FAQ</a>
                </li>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link" href="${pageContext.request.contextPath}/contact">ช่องทางติดต่อ</a>--%>
<%--                </li>--%>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="${pageContext.request.contextPath}" role="button"
                       data-bs-toggle="dropdown"
                       aria-haspopup="true" aria-expanded="false" style="white-space: nowrap;">
                        เข้าสู่ระบบ
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="color: #FFFFFF;">
                        <a class="dropdown-item" href="${pageContext.request.contextPath}/login/loginByPersonnel">บุคลากร</a>
                        <a class="dropdown-item" href="${pageContext.request.contextPath}/login/loginByAdmin">ผู้ดูแลระบบ</a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</nav>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>