<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List news</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/nav-gtco.css">
    <style>
        .card {
            width: 250px;
            height: 350px;
            margin: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 15px;
            background-color: #fbe9e7;
        }

        .card-text {
            color: black;
            font-family: "Kanit";
            font-size: 14px;
            margin-top: -5px;
            display: inline-block;
        }

        .card img {
            transition: .5s;
        }

        .card:hover img {
            transform: scale(1.02);
        }

        .card-body {
            display: inline-block;
            height: 100px; /* กำหนดความสูงของเนื้อหาข่าว เช่น 100px */
            margin-left: 12px;
        }
        .read-more-link {
            position: relative;
            display: inline-block;
            text-decoration: none;
            color: #000; /* สีของข้อความ */
            font-weight: 500; /* ความหนาของข้อความ */
        }

        .read-more-link i.fa-arrow-right {
            margin-left: 5px; /* ระยะห่างระหว่างข้อความ "Read More" กับลูกศร */
            transition: margin-left 0.3s ease-in-out;
            opacity: 0; /* เริ่มต้นซ่อนลูกศร */
        }
        .read-more-link i.fa-arrow-left {
            margin-left: 5px; /* ระยะห่างระหว่างข้อความ "Read More" กับลูกศร */
            transition: margin-left 0.3s ease-in-out;
            opacity: 0; /* เริ่มต้นซ่อนลูกศร */
        }

        .read-more-link:hover i.fa-arrow-right {
            margin-left: 10px; /* ระยะห่างระหว่างข้อความ "Read More" กับลูกศรเมื่อ hover */
            opacity: 1; /* แสดงลูกศรเมื่อ hover */
        }
        .read-more-link:hover i.fa-arrow-left {
            margin-left: 10px; /* ระยะห่างระหว่างข้อความ "Read More" กับลูกศรเมื่อ hover */
            opacity: 1; /* แสดงลูกศรเมื่อ hover */
        }

        .top_content {
            margin-top: 30px;
        }

        #searchInput {
            background-position: 10px 12px;
            background-repeat: no-repeat;
            width: 60%;
            font-size: 16px;
            padding: 12px 20px 12px 40px;
            border: 1px solid #ddd;
            margin-bottom: 12px;
            font-family: Kanit;
            float: left;
            margin-left: 500px;
        }

        .block_news {
            width: 250px;
            height: 400px;
            display: none; /* เริ่มต้นซ่อนทุกข่าว */
            margin: 20px;
        }

        /* CSS สำหรับปุ่มเปลี่ยนหน้า */
        .pagination {
            text-align: center;
            margin-top: 45px;
        }

        a i.fa-arrow-left,
        a i.fa-arrow-right {
            font-size: 18px;
            vertical-align: middle;
            margin-right: 15px;
            margin-left: 15px;
            color: #AA1818;
        }

        /* CSS เมื่อโฮเวอร์ลูกศร */
        a:hover i.fa-arrow-left,
        a:hover i.fa-arrow-right {
            color: #771111; /* เปลี่ยนสีของลูกศรเมื่อโฮเวอร์ */
        }

        .card:hover {
            transform: scale(1.03);
            box-shadow: 0px 1px 20px 0px rgba(0, 0, 0, 0.19);
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
    <div class="top_content">
        <div>
            <h2 style="color: #a41212; font-family: Kanit;margin-top: 105px;" align="center">ข่าวสารและกิจกรรม</h2>
            <br>
            <div>
                <input type="text" id="searchInput" style="width: 50%" onkeyup="search()" placeholder="Search for names.."
                       title="Type in a name">
            </div>

            <c:forEach var="news" items="${list_news}">
                <div class="block_news" data-name="${news.newsname} ${news.date} ${news.category}">
                    <div class="card">
                        <h3 class="card2" align="center" style="font-family: Kanit; color: #ff5e5e">${news.category}</h3>
                        <div class="overflow-hidden" align="center">
                            <img class="img-fluid" style="width: 85%; height: auto;" src="${pageContext.request.contextPath}/assets/image/news11.jpg">
                        </div>
                        <div class="card-body">
                            <h5 class="card-title" style="font-family: Kanit; margin-top: 5px; margin-bottom: 10px">${news.newsname}</h5>
                            <p class="card-text">${news.date}</p>
                        </div>
                        <div style="font-family: Kanit;"align="center">
                            <a class="fw-medium read-more-link" href="${pageContext.request.contextPath}/news/${news.id}/view_news_detail" style="color: #AA1818;font-weight: bold;">
                                ดูเพิ่มเติม
                                <i class="fa fa-arrow-right ms-2"></i>
                            </a>
                            </a>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
<br>
<!-- ปุ่มเปลี่ยนหน้า -->
<div class="pagination">
    <!-- ปุ่ม "ก่อนหน้า" -->
    <a href="#" onclick="prevPage()" style="text-decoration: none;font-family: Kanit;color: #000" class="fw-medium read-more-link">
        <i class="fa fa-arrow-left"></i> ก่อนหน้า
    </a>

    <!-- ปุ่ม "ถัดไป" -->
    <a href="#" onclick="nextPage()" style="text-decoration: none;font-family: Kanit;color: #000" class="fw-medium read-more-link">
        ถัดไป <i class="fa fa-arrow-right"></i>
    </a>
</div>
<br><br>
<div>
    <jsp:include page="/WEB-INF/layouts/footer.jsp"/>
</div>
</body>
<script>
    var newsList = document.querySelectorAll(".block_news");
    var itemsPerPage = 24; // จำนวนข่าวที่แสดงในแต่ละหน้า
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
        var blocks = document.getElementsByClassName("block_news");

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
</html>