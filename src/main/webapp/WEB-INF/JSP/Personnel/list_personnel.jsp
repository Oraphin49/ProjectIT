<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Information Technology</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
    <link href="img/favicon.ico" rel="icon">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/home/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/home/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/nav-gtco.css" rel="stylesheet">
    <style>
        body {
            background-color: #ffffff;
            font-family: 'Kanit', sans-serif;
        }

        .header1 h2 {
            font-size: 2.5rem;
            margin-bottom: 10px;
        }

        .personnel-card {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0px 2px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease-in-out;
            overflow: hidden;
            margin-bottom: 20px;
            padding: 20px;
            display: flex;
            flex-direction: column;
            width: 80%;
        }

        .personnel-card img {
            width: 100%;
            height: 250px;
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
            color: #ffffff;
        }
    </style>
</head>
<body>
<nav class="gtco-nav" role="navigation">
    <div class="gtco-container">
        <div class="row"  style="display: block">
            <jsp:include page="/WEB-INF/layouts/nav.jsp"/>
        </div>
    </div>
</nav>
<br><br><br>
<div  style="margin-top: 100px" align="center">
    <h2 style="color: #000000; font-family: Kanit; font-weight: bold">บุคลากรสาขาวิชา</h2>
</div>
<br>
<div class="container">
    <div class="row">
        <c:forEach items="${list_personnel}" var="personnel">
            <div class="col-md-4 mb-4">
                <div class="card personnel-card">
                    <img class="card-img-top" src="${pageContext.request.contextPath}/assets/image/personnel/${personnel.image}" alt="${personnel.firstname} ${personnel.lastname}">
                    <div class="card-body">
                        <p style="color: #111111; font-family: Kanit; font-size: 17px; font-weight: bold" class="card-title">${personnel.position} ${personnel.firstname} ${personnel.lastname}</p>

                            <c:forEach var="academicRank" items="${academicRanks}">
                        <small style="font-family: Kanit">${academicRank.name} </small>
                            </c:forEach>

                        <br><br>
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/css/home/js/main.js"></script>
</body>
<jsp:include page="/WEB-INF/layouts/footer.jsp"/>
</html>