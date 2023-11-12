<%@ page import="it_sci.model.Personnel" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Personnel personnel = (Personnel) session.getAttribute("personnel");
%>
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
            font-size: 17px;
        }

        .navbar-expand-lg .navbar-nav .nav-link {
            padding-right: 1.2rem;
            padding-left: 1.2rem;
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
            <img src="${pageContext.request.contextPath}/assets/image/Oraphin_LogoIT.png" class="hidden-xs" alt="" width="250px"
                 style="margin-left: 30px;">
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
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/personnel/<%=personnel.getId()%>/edit_personnel_detail">แก้ไขข้อมูลส่วนตัว</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/login/doLogout" ><i class="fas fa-sign-out-alt"></i><%=personnel.getFirstname()%> : ออกจากระบบ</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>