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
    <link href="${pageContext.request.contextPath}/assets/css/viewnewsdetaail.css" rel="stylesheet">
    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/nav-gtco.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.3/css/lightbox.min.css">
    <link href="${pageContext.request.contextPath}/assets/css/home/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/home/css/style.css" rel="stylesheet">

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
    <h3 class="text-center" style="font-family: Kanit; margin-top: 150px;font-weight: bold">ข่าวสารและกิจกรรม</h3>
    <br><br>
    <div class="card">
        <div class="card-header">
            <h5 style="font-weight: bold;font-family: Kanit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;หัวเรื่อง : ${news_detail.newsname}</h5>
            <p class="card-text">วันที่ :
                <fmt:formatDate value="${news_detail.date}" pattern="dd MMM yyyy" />
                หมวดหมู่ : ${news_detail.category}
            </p>
        </div>
        <div class="card-body">
            <p class="card-text">${news_detail.newsdetail}</p>
            <p class="card-text">แหล่งที่มา : <a href="${news_detail.linkpage}" target="_blank">กดที่นี่</a></p>
        </div>
    </div>
    <div class="row mt-5">
        <c:if test="${not empty newsImage}">
            <c:forEach items="${newsImage}" var="imageFile" varStatus="loop">
                <div class="col-md-3 mb-3">
                    <a href="${pageContext.request.contextPath}/assets/image/news/${news_detail.id}/${imageFile}" data-lightbox="news-images" data-title="รูปที่ ${loop.index}">
                        <img class="img-fluid square-image" style="width: 100%;height: 250px;object-fit: cover;"
                             src="${pageContext.request.contextPath}/assets/image/news/${news_detail.id}/${imageFile}">
                    </a>
                </div>
            </c:forEach>
        </c:if>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<!-- Lightbox JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.3/js/lightbox.min.js"></script>
<!-- Template Javascript -->
<script src="${pageContext.request.contextPath}/assets/css/home/js/main.js"></script>
</body>
<jsp:include page="/WEB-INF/layouts/footer.jsp"/>
</html>
