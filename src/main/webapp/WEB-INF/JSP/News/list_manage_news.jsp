<%@ page import="it_sci.model.Personnel" %>
<%@ page import="it_sci.model.Admin" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List-news-manage</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/nav-gtco.css">
    <link href="${pageContext.request.contextPath}/assets/css/list_manage_news.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">
    <style>
        #searchInput {
            background-position: 10px 12px;
            background-repeat: no-repeat;
            width: 40%;
            font-size: 16px;
            padding: 12px 20px 12px 40px;
            border: 1px solid #ddd;
            margin-bottom: 12px;
            font-family: Kanit;
          margin-left: 25%;

        }
        *, *::before, *::after {
            box-sizing: border-box;
        }
        body {
            font-family: Kanit;
        }

        .news-container {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
            background-color: #ffffff;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
            padding: 10px;
        }

        .news-image {
            margin-right: 30px;
            width: 110px;
            margin-left: 50px;
        }

        .news-details {
            width: 60%;
        }

        .news-title {
            font-size: 20px;
            margin: 0;
            margin-bottom: 5px;
            font-family: Kanit;
        }

        .news-category {
            font-weight: bold;
            margin: 0;
            color: #111111;
            font-family: Kanit;
            font-size: 16px;
        }

        .news-date {
            font-family: Kanit;
            margin: 0;
            color: #111111;
            font-family: Kanit;
            font-size: 16px;
        }
        /* CSS สำหรับปุ่มเปลี่ยนหน้า */
        .pagination {
            text-align: center;
            margin-top: 45px;
        }
        /* CSS สำหรับลูกศรในปุ่ม "ก่อนหน้า" และ "ถัดไป" */
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

        .block_manage_news:hover {
            transform: scale(1.03);
            box-shadow: 0px 1px 20px 0px rgba(0, 0, 0, 0.19);
        }
    </style>
</head>
<%
    Personnel personnel = (Personnel) session.getAttribute("personnel");
    Admin admin = (Admin) session.getAttribute("admin");
    String flag = "";
    if (personnel != null) {
        flag = "personnel";
    } else if (admin != null) {
        flag = "admin";
    } else {
        flag = "null";
    }
%>
<c:set var="flag" value="<%=flag%>"/>
<body>
<nav class="gtco-nav" role="navigation">
    <div class="gtco-container">
        <div class="row"  style="display: block">
            <c:choose>
                <c:when test="${flag.equals('admin')}">
                    <jsp:include page="/WEB-INF/JSP/nav_admin.jsp"/>
                </c:when>
                <c:otherwise>
                    <jsp:include page="/WEB-INF/layouts/nav.jsp"/>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
</nav>
<br><br><br><br><br><br>
<c:choose>
    <c:when test=""></c:when>
    <c:otherwise></c:otherwise>
</c:choose>
<c:choose>
    <c:when test="${flag.equals('admin')}">
<h2 align="center" style="color: #aa1818;font-weight: bold;font-family: Kanit">รายการข่าว</h2>
<br>
<div>
    <input type="text" id="searchInput" style="width: 50%" onkeyup="search()" placeholder="Search for names.." title="Type in a name">
</div>
<br>
<a href="${pageContext.request.contextPath}/news/create_news"><button style="width: 80px; margin-left: 75%; background-color: #FFFFFF;margin-top: 15px">
    <img src="${pageContext.request.contextPath}/assets/image/bookmark-plus.png" style="width: 30px; "></button></a>
<br><br><br>
<c:forEach var="news" items="${list_manage_news}">
    <div class="block_manage_news" data-name="${news.newsname} ${news.category} ${news.date}" style="display: block">
        <div class="news-container" >
            <img class="news-image" src="${pageContext.request.contextPath}/assets/image/news/${news.id}/${news.newsImage[0]}">
            <div class="news-details" >
                <h2 class="news-title">${news.newsname}</h2>
                <p class="news-category">หมวดหมู่: ${news.category}</p>
                <p class="news-date">วันที่: ${news.date}</p>
            </div>
            <a href="${pageContext.request.contextPath}/news/${news.id}/update"><img src="${pageContext.request.contextPath}/assets/image/edit.png" style="width: 20px; margin-right: 50px"></a>
            <a href="javascript:void(0);" onclick="confirmDelete('${pageContext.request.contextPath}/news/${news.id}/delete')">
                <img src="${pageContext.request.contextPath}/assets/image/dustbin.png" style="width: 20px">
            </a>
        </div>
    </div>
</c:forEach>
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
    </c:when>
    <c:otherwise>
        <br>
        <br>
        <br>
        <br>
        <h3 align="center" style="font-family: Kanit">คุณไม่มีสิทธิ์ในหน้านี้</h3>
    </c:otherwise>
</c:choose>
</body>
<footer>
    <jsp:include page="/WEB-INF/layouts/footer.jsp"/>
</footer>
<script>
    ///////////////////////////เช็คก่อนหน้าและถัดไป///////////////////////////////////////////
    var newsListmanage = document.querySelectorAll(".block_manage_news");
    var itemsPerPage = 100; // จำนวนข่าวที่แสดงในแต่ละหน้า
    var currentPage = 1; // หน้าปัจจุบัน

    // ฟังก์ชันเพื่อไปหน้าถัดไป
    function nextPage() {
        if (currentPage < 100) { // 10 คือจำนวนหน้าทั้งหมด
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
        for (var i = 0; i < newsListmanage.length; i++) {
            var block = newsListmanage[i];
            var pageNumber = Math.ceil((i + 1) / itemsPerPage);

            if (pageNumber === currentPage) {
                block.style.display = "block";
            } else {
                block.style.display = "none";
            }
        }
    }

    ///////////////////////////เช็คการค้นหา///////////////////////////////////////////
    function search() {
        var input = document.getElementById("searchInput").value.toLowerCase();
        var blocks = document.getElementsByClassName("block_manage_news");

        for (var i = 0; i < blocks.length; i++) {
            var block = blocks[i];
            var text = block.getAttribute("data-name").toLowerCase();

            if (text.includes(input)) {
                block.style.display = "block";
            } else {
                block.style.display = "none";
            }
        }
    }
</script>


<script>
    ///////////////////////////เช็คการลบข่าว///////////////////////////////////////////
    function confirmDelete(deleteUrl) {
        if (confirm("คุณแน่ใจหรือว่าต้องการลบ?")) {
            window.location.href = deleteUrl;
        }
    }
</script>
</html>
