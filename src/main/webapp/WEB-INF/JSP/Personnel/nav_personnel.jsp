
<%@ page import="it_sci.model.Personnel" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Personnel personnel = (Personnel) session.getAttribute("personnel");
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Information Technology</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"> <!-- เพิ่มไลบรารี Font Awesome -->
    <style>
        /* เพิ่มไอคอนให้กับลิงก์ */
        .top-nav li a i {
            margin-right: 5px;
        }

        /* เปลี่ยนสีของลิงก์เมื่อ hover */
        .top-nav li a:hover {
            color: rgb(245, 178, 33);
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
        /* ลบสีพื้นหลังของรายการนำทาง */
        .top-nav li {
            background: none;
            font-size: 10px;
            height: 40px;
            padding-top: 10px;
            position: relative;
            text-align: center;
            width: 22%;
            font-family: 'Kanit', sans-serif;
            list-style-type: none;
            list-style-image: none;
        }

        /* ปรับแต่งสไตล์ของลิงก์ */
        .top-nav li a {
            color: #aa1818;
            padding-top: 7px;
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            font-size: 13px;
            text-decoration: none;
            font-family: 'Kanit', sans-serif;
        }

        /* เพิ่มไอคอนให้กับลิงก์ */
        .top-nav li a i {
            margin-right: 5px;
        }

        /* เปลี่ยนสีของลิงก์เมื่อ hover */
        .top-nav li a:hover {
            color: rgb(245, 178, 33);
        }
    </style>
</head>
<body bgcolor="#ffffff" >
<nav >
    <div class="navbar navbar-default navbar-static-top" style="background-color: #FFFFFF">
        <div class="navbar-header" >
            <a class="navbar-brand" > <img src="${pageContext.request.contextPath}/assets/image/LOGOIT.png" class="hidden-xs" alt="" width="250px" style="margin-left: 15px; margin-top: 20px"></a>
        </div>
    </div>
    <ul class="top-nav" style="background-color: #FFFFFF; margin-top: -45px" >
        <li><a href="${pageContext.request.contextPath}/login/doLogout" style="font-size: 13px; width: auto"><i class="fas fa-sign-out-alt"></i><%=personnel.getFirstname()%> ออกจากระบบ</a></li>
        <li><a href="${pageContext.request.contextPath}/personnel/<%=personnel.getId()%>/edit_personnel_detail"><i class="fas fa-user-edit"></i> แก้ไขข้อมูลส่วนตัว</a></li>
        <li><a href="${pageContext.request.contextPath}"><i class="fas fa-home"></i> หน้าหลัก</a></li>
    </ul>
</nav>
</body>
</html>
