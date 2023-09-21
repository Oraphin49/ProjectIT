<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List of Personnel</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <style>
        /* ข้อมูลบุคลากร */
        .personnel-box {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin: 20px;
            text-align: center;
            transition: transform 0.2s;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .personnel-image {
            width: 100px;
            height: 100px;
            margin: 0 auto 10px;
            border: 2px solid #aaa;
            border-radius: 50%;
            object-fit: cover;
        }

        .personnel-name {
            font-weight: bold;
            margin: 5px 0;
            color: #333;
        }

        .view-more-button {
            background-color: #aa1818;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 5px 15px;
            font-weight: bold;
            text-decoration: none;
            transition: background-color 0.2s;
            margin-top: auto;
        }

        .view-more-button:hover {
            background-color: #8c1515;
        }

        /* ส่วนที่เปลี่ยนเป็นสีดำ */
        body {
            font-family: 'Kanit', sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
            color: #333;
        }

        .header {
            text-align: center;
            padding: 50px;
            background-color: #343a40;
            color: white;
        }

        /* ส่วนเพิ่มเติมในหัวข้อที่เปลี่ยนเป็นสีดำ */
        h1 {
            font-size: 36px;
        }

        /* ตัวอักษรขนาดเล็กกว่า */
        .personnel-name {
            font-size: 18px;
        }

        /* ปรับขนาดรูปภาพบุคลากร */
        .personnel-image {
            width: 100px;
            height: 100px;
        }
    </style>
</head>
<body>
<nav >
    <jsp:include page="/WEB-INF/layouts/nav.jsp"/>
</nav>
<br>
<div class="header">
    <h1>บุคลากรของหลักสูตร</h1>
</div>
<div class="container">
    <div class="row">
        <c:forEach items="${list_personnel}" var="personnel">
            <div class="col-md-4">
                <div class="personnel-box">
                    <img class="personnel-image" src="${pageContext.request.contextPath}/assets/image/${personnel.image}">
                    <p class="personnel-name">${personnel.position} ${personnel.firstname} ${personnel.lastname}</p>
                    <a href="${pageContext.request.contextPath}/personnel/${personnel.id}/view_personnel_detail" class="view-more-button">ดูเพิ่มเติม</a>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
<jsp:include page="/WEB-INF/layouts/footer.jsp"/>
</html>

