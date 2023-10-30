<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <title>รายชื่อศิษย์เก่า</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">

    <!-- Add Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/nav-gtco.css">

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
            /*float: right;*/
            /*margin-right: 70px;*/
        }

        .card {
            border-radius: 10px;
            height: 100%;
            background-image: url('${pageContext.request.contextPath}/assets/image/Poster.png');
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
            width: 300px;
            height: 400px;
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
        <h2 style="color: #000000 ;margin-top: 75px; font-family: Kanit; font-weight: bold" align="center">ข้อมูลศิษย์เก่า</h2>
        <br>
        <div align="center">
            <input type="text" id="searchInput" style="width: 50%" onkeyup="search()" placeholder="ค้นหา.." title="Search for names..">
        </div>
        <br><br><br>
        <div class="container">
            <div class="row">
                <c:forEach var="alumni" items="${list_alumni}">
                        <div class="card mb-4" onclick="window.location='${pageContext.request.contextPath}/alumni/${alumni.id}/view_alumni_detail'" data-name="${alumni.id} ${alumni.firstname} ${alumni.position} ${alumni.company}">
                            <img src="${pageContext.request.contextPath}/assets/image/alumni/${alumni.image}" class="card-img-top" style="width: 50%; margin: 30px 80px 0; height: 50%">
                            <div class="card-body" align="center">
                                <h6 class="card-title">${alumni.prefix}${alumni.firstname} ${alumni.lastname}</h6>
                                <small class="card-text" style="margin: 5px 0;">ไอทีรุ่น : ${alumni.generation}</small>
                                <small class="card-text" style="margin: 5px 0;">รหัสนักศึกษา: ${alumni.id}</small>
                                <br>
                                <p class="card-text" style="margin: 5px 0;">ตำแหน่ง : ${alumni.position}</p>
                                <p class="card-text" style="margin: 5px 0;">บริษัท : ${alumni.company}</p>
                            </div>
                        </div>
                </c:forEach>
            </div>
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
    <jsp:include page="/WEB-INF/layouts/footer.jsp" />
</div>
<script>
    var alumniList = document.querySelectorAll(".card.mb-4");
    var itemsPerPage = 30;
    var currentPage = 1;

    function nextPage() {
        if (currentPage < 10) {
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
                block.style.display = "inline-block"; // แสดงองค์ประกอบเมื่อตรง
                block.classList.remove("prevent-hover-transform"); // ลบคลาสเพื่อให้เคลื่อนที่ธรรมดา
            } else {
                block.style.display = "none"; // ซ่อนองค์ประกอบเมื่อไม่ตรง
                block.classList.add("prevent-hover-transform"); // เพิ่มคลาสเพื่อป้องกันการเคลื่อนที่
            }
        }
    }

</script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
