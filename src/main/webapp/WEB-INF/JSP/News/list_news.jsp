<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>List news</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .card {
            background-color: #EFECEC;
            border-radius: 10px;
            margin-bottom: 20px;
            padding: 10px;
        }

        .card-title {
            font-family: "Kanit";
            margin: 0;
        }

        .card-text {
            color: black;
            font-family: "Kanit";
        }

        .button1 {
            border: none;
            color: white;
            text-align: center;
            text-decoration: none;
            display: block;
            margin-top: 10px;
            padding: 5px 10px;
            transition-duration: 0.4s;
            cursor: pointer;
            background-color: #771111;
            border-radius: 5px;
            font-family: Kanit;
        }

        .button1:hover {
            background-color: #CD3333;
        }

        .top_content {
            margin-top: 30px;
            text-align: center;
        }

        #searchInput {
            background-position: 10px 12px;
            background-repeat: no-repeat;
            width: 100%;
            font-size: 16px;
            padding: 12px 20px 12px 40px;
            border: 1px solid #ddd;
            margin-bottom: 12px;
            font-family: Kanit;
        }

        .block_alumni {
            margin: 0 auto;
            max-width: 300px;
        }

        .row {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }
    </style>
</head>

<body>
<div >
    <jsp:include page="/WEB-INF/layouts/nav.jsp" />
    <br>
    <div class="top_content" align="center">
        <div>
            <h2 style="color: #a41212; font-family: Kanit">ข่าวสารและกิจกรรม</h2>
            <br>
            <div>
                <input type="text" id="searchInput" style="width: 50%" onkeyup="search()" placeholder="Search for names.." title="Type in a name">
            </div>
            <div class="row">
                <c:forEach var="news" items="${list_news}">
                    <div class="col-md-4">
                        <div class="block_alumni" data-name="${news.newsname} ${news.date} ${news.category}">
                            <div class="card">
                                <div class="alum_img">
                                    <img style="width: 200px;" src="${pageContext.request.contextPath}/assets/image/news11.jpg">
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title" style="font-family: Kanit; margin-bottom: 5px; margin-top: 5px;">${news.newsname}</h5>
                                    <p class="card-text" style="margin-top: 5px">${news.date}</p>
                                </div>
                                <div style="font-family: Kanit; margin-top: -10px" align="center">
                                    <a href="${pageContext.request.contextPath}/news/${news.id}/view_news_detail"><button class="button1">ดูเพิ่มเติม</button></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>
<br>
<div>
    <jsp:include page="/WEB-INF/layouts/footer.jsp" />
</div>
</body>

<script>
    function search() {
        var input = document.getElementById("searchInput").value.toLowerCase();
        var blocks = document.getElementsByClassName("block_alumni");

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

</html>
