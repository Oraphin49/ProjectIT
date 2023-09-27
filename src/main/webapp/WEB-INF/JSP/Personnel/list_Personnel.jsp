<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List of Personnel</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
   <style>
       /* styles/custom.css */

       /* สีพื้นหลังของหน้าเว็บ */
       body {
           background-color: #ffffff;
           font-family: 'Kanit', sans-serif;
       }

       /* สไตล์ส่วนหัวของหน้าเว็บ */
       .header {
           text-align: center;
           color: #000000;
           padding: 20px;
       }

       .header h2 {
           font-size: 2.5rem;
           margin-bottom: 10px;
       }

       /* สไตล์การแสดงผลของบุคลากร */
       .personnel-card {
           background-color: #ffffff;
           border-radius: 10px;
           box-shadow: 0px 2px 6px rgba(0, 0, 0, 0.1);
           transition: transform 0.3s ease-in-out;
           overflow: hidden;
           margin-bottom: 20px;
           padding: 20px;
           display: flex; /* ใช้ Flexbox */
           flex-direction: column; /* จัดเรียงตามแนวตั้ง */
           width: 80%;
       }

       /*.personnel-card img {*/
       /*    max-width: 100%; !* ปรับขนาดรูปภาพให้มีขนาดเท่ากัน *!*/
       /*    height: auto;*/
       /*    margin-bottom: 10px; !* ปรับขอบล่างของรูปภาพ *!*/
       /*}*/
       .personnel-card img {
           width: 100%;
           height: 200px;
           object-fit: cover;
           margin-bottom: 10px;
       }


       .personnel-card:hover {
           transform: translateY(-5px);
           box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
       }

       .card-title {
           font-size: 1.5rem;
           font-weight: bold;
           margin: 10px 0;
       }

       /* ปรับแต่งลิงค์ */
       a {
           text-decoration: none;
           color: #007bff;
           transition: color 0.3s ease-in-out;
       }

       a:hover {
           color: #0056b3;
       }

   </style>
</head>
<body>
<nav style="box-sizing: revert; position: fixed; top: 0; width: 100%; z-index: 100; margin-top: -30px">
    <jsp:include page="/WEB-INF/layouts/nav.jsp"/>
</nav>
<br>
<div class="header" style="margin-top: 100px">
    <h2>บุคลากรของหลักสูตร</h2>
</div>
<div class="container">
    <div class="row">
        <c:forEach items="${list_personnel}" var="personnel">
            <div class="col-md-4 mb-4">
                <div class="card personnel-card">
                    <img class="card-img-top" src="${pageContext.request.contextPath}/assets/image/${personnel.image}" alt="${personnel.firstname} ${personnel.lastname}">
                    <div class="card-body">
                        <p style="color: #111111; font-family: Kanit; font-size: 18px; font-weight: bold" class="card-title">${personnel.position} ${personnel.firstname} ${personnel.lastname}</p>
                        <a href="${pageContext.request.contextPath}/personnel/${personnel.id}/view_personnel_detail" class="btn btn-primary"><i class="bi bi-arrow-right-circle-fill"></i> ดูเพิ่มเติม</a>
                    </div>
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
