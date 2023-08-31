<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List news</title>
    <link href="${pageContext.request.contextPath}/assets/css/listnews.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">
</head>
<body>
<div class="container">
    <jsp:include page="/WEB-INF/layouts/nav.jsp"/>
    <br>
    <div class="top_content" align="center">
        <div>
            <h2 style="color: #a41212; font-family: Kanit">ข่าวสารและกิจกรรม</h2>
            <br>
            <div >

                <input type="text" id="searchInput" style="width: 50%" onkeyup="search()" placeholder="Search for names.." title="Type in a name">
            </div>
            <c:forEach var="news" items="${list_news}" >
                <div class="block_alumni" data-name="${news.newsname} ${news.date} ${news.category}">

                        <div class="card">
                            <div class="alum_img">
                                <img style="width: 200px;" src="${pageContext.request.contextPath}/assets/image/news11.jpg">
                            </div>
                            <div class="card-body">
                                <h5 class="card-title" style="font-family: Kanit; margin-bottom: 5px;margin-top: 5px;">${news.newsname}</h5>
                                <p class="card-text" style="margin-top: 5px">${news.date}</p>
                            </div>
                            <div style="font-family: Kanit; margin-top: -10px">
                                            <a href="#" class="btn btn-primary"></a>
                                <a href="${pageContext.request.contextPath}/news/${news.id}/view_news_detail"><button class="button1">ดูเพิ่มเติม</button></a>
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
