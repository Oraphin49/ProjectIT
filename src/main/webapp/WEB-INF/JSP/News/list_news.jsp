<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
            min-height: 405px;
        }

        .btn-primary {
            border: 1px solid #ab1212;
            background-color: #aa1818;
        }
        .bg-primary {
            background-color: #dc3545 !important;
        }
        .col-md-3 {
            transition: transform 0.3s;
            min-height: 250px;
        }

        .col-md-3:hover {
            transform: scale(1.02);
        }
        .card-img-top{
            width: 100%;
            height: 250px;
            object-fit: cover;
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
<br>
<div class="container" style="margin-top: 155px">
    <h2 class="text-center mt-3" style="color: #000000; font-family: Kanit; font-weight: bold">ข่าวสารและกิจกรรม</h2>
    <br>
    <div align="center">
        <input type="text" id="searchInput" class="form-control mb-4" onkeyup="search()"
               placeholder="สามารถค้นหา ชื่อข่าว หมวดหมู่ หรือ วันที่ ..." title="Type in a name">
    </div>
    <br><br>
    <div class="row">
        <c:forEach var="news" items="${list_news}">
            <div class="col-md-3" data-name="${news.date} ${news.category} ${news.newsname}">
                <div class="card mb-4">
                    <img  class="card-img-top" src="${pageContext.request.contextPath}/assets/image/news/${news.id}/${news.newsImage[0]}"
                         alt="News Image">
                    <div class="card-body">
                        <span class="bg-primary text-white p-1" style="font-family: Kanit;">${news.category}</span>
                        <h6 class="card-title mt-3" style="font-family: Kanit;">${news.newsname}</h6>
                        <small class="card-text"> <fmt:formatDate value="${news.date}" pattern="dd MMM yyyy" /></small>
                        <small><a href="${pageContext.request.contextPath}/news/${news.id}/view_news_detail">กดเพื่อดูเพิ่มเติม</a></small>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
    <!-- ปุ่ม "ก่อนหน้า" และ "ถัดไป" -->
    <div class="pagination mt-3">
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
<!-- Bootstrap JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script>
    var newsList = document.querySelectorAll(".col-md-3");
    var itemsPerPage = 40; // จำนวนข่าวที่แสดงในแต่ละหน้า
    var currentPage = 1; // หน้าปัจจุบัน

    // ฟังก์ชันเพื่อไปหน้าถัดไป
    function nextPage() {
        if (currentPage < 10) { // 10 คือจำนวนหน้าทั้งหมด
            currentPage++;
            changePage(currentPage);
        }
    }

    // ฟังก์ชันเพื่อกลับหน้าก่อนหน้า
    function prevPage() {
        if (currentPage > 1) {
            currentPage--;
            changePage(currentPage);
        }
    }

    // ฟังก์ชันเปลี่ยนหน้า
    function changePage(page) {
        currentPage = page;
        showNews();
    }

    // ฟังก์ชันแสดงข่าวในหน้าปัจจุบัน
    function showNews() {
        for (var i = 0; i < newsList.length; i++) {
            var block = newsList[i];
            var pageNumber = Math.ceil((i + 1) / itemsPerPage);

            if (pageNumber === currentPage) {
                block.style.display = "inline-block";
            } else {
                block.style.display = "none";
            }
        }
    }

    // เรียกใช้ฟังก์ชันแสดงข่าวในหน้าปัจจุบันเมื่อโหลดหน้าเว็บ
    window.addEventListener("load", showNews);

    function search() {
        var input = document.getElementById("searchInput").value.toLowerCase();
        var blocks = document.getElementsByClassName("col-md-3");

        for (var i = 0; i < blocks.length; i++) {
            var block = blocks[i];
            var text = block.getAttribute("data-name").toLowerCase();

            if (text.includes(input)) {
                block.style.display = "inline-block"; // แสดงองค์ประกอบเมื่อตรง
            } else {
                block.style.display = "none"; // ซ่อนองค์ประกอบเมื่อไม่ตรง
            }
        }
    }
</script>
<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/css/home/js/main.js"></script>
<jsp:include page="/WEB-INF/layouts/footer.jsp"/>
</body>
</html>