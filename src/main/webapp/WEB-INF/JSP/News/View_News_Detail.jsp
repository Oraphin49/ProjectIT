<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${news_detail.newsname}</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="${pageContext.request.contextPath}/assets/css/viewnewsdetaail.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/nav-gtco.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">
    <style>
        .square-image {
            width: 100%;
            height: auto;
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
<div class="container my-5">
    <h2 class="text-center" style="font-family: Kanit; margin-top: 180px">ข่าวสารและกิจกรรม</h2>
    <div class="card">
        <div class="card-header">
            <h3 class="card-title">หัวเรื่อง : ${news_detail.newsname}</h3>
            <p class="card-text">วันที่ : ${news_detail.date} หมวดหมู่ : ${news_detail.category}</p>
        </div>
        <div class="card-body">
            <p class="card-text">${news_detail.newsdetail}</p>
            <p class="card-text">แหล่งที่มา : <a href="${news_detail.linkpage}">กดที่นี่</a></p>
        </div>
    </div>
    <div class="row mt-5">
        <c:if test="${not empty newsImage}">
            <c:forEach items="${newsImage}" var="imageFile">
                <div class="col-md-3 mb-3">
                    <img class="img-fluid square-image"
                         src="${pageContext.request.contextPath}/assets/image/news/${news_detail.id}/${imageFile}"
                         alt="${imageFile}">
                </div>
            </c:forEach>
        </c:if>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
<jsp:include page="/WEB-INF/layouts/footer.jsp"/>
</html>
