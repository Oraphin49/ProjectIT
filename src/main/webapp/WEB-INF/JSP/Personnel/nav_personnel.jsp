<%@ page import="it_sci.model.Personnel" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Personnel personnel = (Personnel) session.getAttribute("personnel");
%>
<meta charset="UTF-8">
<title>Information Technology</title>
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
        height: 40px;
        padding-top: 10px;
        position: relative;
        text-align: center;
        width: 33.33%;
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
        position: center;
    }
</style>
</head>
<body bgcolor="#ffffff" >
<header>
    <div class="navbar navbar-default navbar-static-top">
        <div class="navbar-header">
            <a class="navbar-brand" > <img src="${pageContext.request.contextPath}/assets/image/LOGOIT.png" class="hidden-xs" alt="" width="250px" style="margin-left: 5px;"></a>

        </div>
    </div>
</header>
<nav >
    <ul class="top-nav" >
        <li><a href="${pageContext.request.contextPath}">
            <img src="${pageContext.request.contextPath}/assets/image/home.png" width="20px"> หน้าหลัก</a></li>
        <li><a href="${pageContext.request.contextPath}/personnel/<%=personnel.getId()%>/edit_personnel_detail">
            <img src="${pageContext.request.contextPath}/assets/image/news.png" width="20px">แก้ไขข้อมูลส่วนตัว</a></li>
        <li><a href="${pageContext.request.contextPath}/login/doLogout" style="font-size: 13px; width: auto">
            <img src="${pageContext.request.contextPath}/assets/image/logout.png" width="20px"> <%=personnel.getFirstname()%> ออกจากระบบ</a></li>
    </ul>
</nav>
</div>
</body>
</html>
