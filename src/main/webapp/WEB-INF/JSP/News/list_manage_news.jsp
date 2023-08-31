<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Information  Technology</title>
    <link href="${pageContext.request.contextPath}/assets/css/list_manage_news.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">

</head>
<body>
<div class="container">
    <jsp:include page="/WEB-INF/JSP/Nav_Admin.jsp"/>
</div>
<br>
<h2 align="center" style="color: #aa1818">รายการข่าว</h2>
<br>
<div >
    <input type="text" id="searchInput" style="width: 50%" onkeyup="search()" placeholder="Search for names.." title="Type in a name">
</div>
<br>
<a href="${pageContext.request.contextPath}/news/create_news"><button style="width: 80px; float: right; margin-right: 230px; background-color: #FFFFFF">
    <img src="${pageContext.request.contextPath}/assets/image/bookmark-plus.png" style="width: 30px; "></button></a>
<br><br><br>
<c:forEach var="news" items="${list_manage_news}">
    <div class="block_manage_news" data-name="${news.newsname}">
        <div class="news-container" >
            <img class="news-image" src="${pageContext.request.contextPath}/assets/image/news1.jpg">
            <div class="news-details" >
                <h2 class="news-title">${news.newsname}</h2>
                <p class="news-category">หมวดหมู่: ${news.category}</p>
                <p class="news-date">วันที่: ${news.date}</p>
            </div>
            <a href="${pageContext.request.contextPath}/news/${news.id}/update"><img src="${pageContext.request.contextPath}/assets/image/edit.png" style="width: 20px; margin-right: 50px"></a>
            <a href="${pageContext.request.contextPath}/news/${news.id}/delete"><img src="${pageContext.request.contextPath}/assets/image/dustbin.png" style="width: 20px"></a>
        </div>
    </div>


</c:forEach>
</body>
<footer>
    <jsp:include page="/WEB-INF/layouts/footer.jsp"/>
</footer>
<script>
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
</html>
