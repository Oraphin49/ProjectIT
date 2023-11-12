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
        #searchInput {
            background-position: 10px 12px;
            background-repeat: no-repeat;
            width: 60%;
            font-size: 16px;
            padding: 12px 20px 12px 40px;
            border: 1px solid #ddd;
            margin-bottom: 12px;
            font-family: Kanit;
        }

        .card {
            border-radius: 10px;
            height: 100%;
            background-size: cover;
            background-position: center;
        }

        .card-title {
            font-family: "Kanit";
            color: #000000;
        }

        .card-text {
            font-family: "Kanit";
            font-size: 14px;
            color: #000000;
        }

        .card-img-top {
            height: 200px;
            object-fit: cover;
            vertical-align: middle;
        }

        .card.mb-4 {
            border-radius: 35px;
            width: 300px;
            height: 430px;
            margin: 10px;
            transition: transform 0.5s ease, opacity 0.5s ease;
        }

        .card.mb-4:hover {
            transform: translateX(10px);
            opacity: 0.8;
        }

        .card.mb-4 {
            animation: slideIn 1s forwards;
        }

        .card.mb-4.hover-transform {
            animation: slideOut 1s forwards;
        }

        @keyframes slideIn {
            from {
                transform: translateX(-100%);
                opacity: 0;
            }
            to {
                transform: translateX(0);
                opacity: 1;
            }
        }

        @keyframes slideOut {
            from {
                transform: translateX(0);
                opacity: 1;
            }
            to {
                transform: translateX(100%);
                opacity: 0;
            }
        }
    </style>
</head>

<body>
<nav class="gtco-nav" role="navigation">
    <div class="gtco-container">
        <div class="row" style="display: block">
            <jsp:include page="/WEB-INF/layouts/nav.jsp"/>
        </div>
    </div>
</nav>
<br><br><br><br>
<div class="top_content">
    <div>
        <h2 style="color: #000000; margin-top: 75px; font-family: Kanit; font-weight: bold" align="center">
            ข้อมูลศิษย์เก่า</h2>
        <br>
        <div align="center">
            <input type="text" id="searchInput" style="width: 50%" onkeyup="search()" placeholder="ค้นหาชื่อ รุ่น หรือ รหัสนักศึกษา..."
                   title="Search for names..">
        </div>
        <br><br><br>
        <div class="container">
            <c:forEach var="generation" items="${generations}" varStatus="loop">
                <c:if test="${not empty generation.value}">
                    <h3 style="font-family: Kanit; font-weight: bold">
                        ไอทีรุ่น ${generation.key}
                    </h3>
                    <div class="row">
                        <c:forEach var="alumni" items="${generation.value}">
                            <div class="card mb-4"
                                 onclick="window.location='${pageContext.request.contextPath}/alumni/${alumni.id}/view_alumni_detail'" data-name="${alumni.id} ${alumni.firstname} ${alumni.generation} " style="background-image: url('${pageContext.request.contextPath}/assets/image/alumni/${alumni.image}')">
                                <img src="${pageContext.request.contextPath}/assets/image/alumni/${alumni.image}" class="card-img-top" style="width: 50%; margin: 69px 67px 24px; height: 46%">
                                <div class="card-body" align="center">
                                    <h6 class="card-title">${alumni.prefix}${alumni.firstname} ${alumni.lastname}</h6>
                                    <small class="card-text" style="margin: 5px 0;">ไอทีรุ่น : ${alumni.generation}</small>
                                    <small class="card-text" style="margin: 5px 0;">รหัส: ${alumni.id}</small>
                                    <br>
                                    <p class="card-text" style="margin: 5px 0;">ตำแหน่ง : ${alumni.position}</p>
                                    <p class="card-text" style="margin: 5px 0;">บริษัท : ${alumni.company}</p>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <br>
                </c:if>
            </c:forEach>
        </div>
    </div>
    <div class="pagination mt-3" align="center" style="margin-left: 50px">
        <ul class="pagination justify-content-center">
            <li class="page-item">
                <a href="#" onclick="prevPage()" class="page-link" aria-label="ก่อนหน้า">
                    <span aria-hidden="true">&laquo; ก่อนหน้า</span>
                </a>
            </li>
            <li class="page-item">
                <a href="#" onclick="nextPage()" class="page-link" aria-label="ถัดไป">
                    <span aria-hidden="true">ถัดไป &raquo;</span>
                </a>
            </li>
        </ul>
    </div>
</div>
<br><br>
<div>
    <jsp:include page="/WEB-INF/layouts/footer.jsp"/>
</div>

<script>
    var alumniList = document.querySelectorAll(".card.mb-4");
    var itemsPerPage = 40;
    var currentPage = 1;
    var totalGenerations = ${generations.size()};

    function nextPage() {
        if (currentPage < totalGenerations) {
            currentPage++;
            changePage(currentPage);
        }
    }

    function prevPage() {
        if (currentPage > 1) {
            currentPage--;
            changePage(currentPage);
        }
    }

    function changePage(page) {
        currentPage = page;
        showAlumni();
    }

    function showAlumni() {
        for (var i = 0; i < alumniList.length; i++) {
            var block = alumniList[i];
            var pageNumber = Math.ceil((i + 1) / itemsPerPage);

            if (pageNumber === currentPage) {
                block.style.display = "inline-block";
            } else {
                block.style.display = "none";
            }
        }
    }

    window.addEventListener("load", showAlumni);

    function search() {
        var input = document.getElementById("searchInput").value.toLowerCase();
        var blocks = document.getElementsByClassName("card mb-4");

        for (var i = 0; i < blocks.length; i++) {
            var block = blocks[i];
            var text = block.getAttribute("data-name").toLowerCase();

            if (text.includes(input)) {
                block.style.display = "inline-block";
                block.classList.remove("prevent-hover-transform");
            } else {
                block.style.display = "none";
                block.classList.add("prevent-hover-transform");
            }
        }
    }
</script>
<script>
    var alumniList = document.querySelectorAll(".card.mb-4");

    function isEven(number) {
        return number % 2 === 0;
    }

    for (var i = 0; i < alumniList.length; i++) {
        var alumni = alumniList[i];
        var alumniData = alumni.getAttribute("data-name").split(" ");
        var alumniID = alumniData[0].substring(0, 2);

        if (isEven(parseInt(alumniID))) {
            alumni.style.backgroundImage = "url('${pageContext.request.contextPath}/assets/image/CongetR.png')";
        } else {
            alumni.style.backgroundImage = "url('${pageContext.request.contextPath}/assets/image/CongetG.png')";
        }

        var pageNumber = Math.ceil((i + 1) / itemsPerPage);

        if (pageNumber === currentPage) {
            alumni.style.display = "inline-block";
        } else {qqq
            alumni.style.display = "none";
        }
    }
</script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
