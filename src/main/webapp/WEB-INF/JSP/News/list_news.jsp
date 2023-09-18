<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List news</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">
    <style>
        .card {
            width: 250px;
            height: 350px;
            margin: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 15px;

        }
        .prevent-hover-transform {
            transform: scale(1); /* กลับสเกลเป็นปกติ (ไม่มีการเพิ่มขนาด) */
        }

        .card-text {
            color: black;
            font-family: "Kanit";
            font-size: 13px;
            margin-top: -5px;
            display: inline-block;
        }

        .news_img {
            display: inline-block;
        }

        .card-body {
            display: inline-block;
            height: 100px; /* กำหนดความสูงของเนื้อหาข่าว เช่น 100px */
            margin-left: 12px;
        }

        .button1 {
            background-color: #CD3333;
            color: white;
            border: 2px solid #771111;
            border-radius: 5px;
            font-family: Kanit;
            font-size: 16px;
            margin: -9px 2px;
            padding: 5px 10px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            transition-duration: 0.4s;
            cursor: pointer;
        }

        .button1:hover {
            background-color: #771111;
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
            display: inline-block;
            margin: 20px;
        }


        .card:hover {
            transform: scale(1.03);
            box-shadow: 0px 1px 20px 0px rgba(0, 0, 0, 0.19);
        }
    </style>
</head>
<body>
<div class="container">
    <jsp:include page="/WEB-INF/layouts/nav.jsp"/>
    <br>
    <div class="top_content" >
        <div>
            <h2 style="color: #a41212; font-family: Kanit" align="center">ข่าวสารและกิจกรรม</h2>
            <br>
            <div>
                <input type="text" id="searchInput" style="width: 50%" onkeyup="search()" placeholder="Search for names.."
                       title="Type in a name">
            </div>
            <c:forEach var="news" items="${list_news}">
                <div class="block_news" data-name="${news.newsname} ${news.date} ${news.category}">
                    <div class="card">
                        <div class="news_img">
                            <img style="width: 100%; height: 200px;"
                                 src="${pageContext.request.contextPath}/assets/image/news11.jpg">
                        </div>
                        <div class="card-body" >
                            <h5 class="card-title" style="font-family: Kanit; margin-top: 5px; margin-bottom: 10px">${news.newsname}</h5>
                            <p class="card-text" >${news.date}</p>
                            <p class="card-text" >${news.category}</p>
                        </div>
                        <div style="font-family: Kanit; margin-top: -5px" align="center">
                            <a href="${pageContext.request.contextPath}/news/${news.id}/view_news_detail"><button
                                    class="button1">ดูเพิ่มเติม</button></a>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
<br>
<div>
    <jsp:include page="/WEB-INF/layouts/footer.jsp"/>
</div>
</body>
<script>
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