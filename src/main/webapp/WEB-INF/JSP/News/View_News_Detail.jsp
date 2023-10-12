<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${news_detail.newsname}</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/nav-gtco.css">
    <link href="${pageContext.request.contextPath}/assets/css/viewnewsdetaail.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">
    <style>
        *, *::before, *::after {
            box-sizing: border-box;
        }

        #header {
            height: 85px;
            background-color: #cdcdcd;
            margin-top: 20px;
            padding: 0;
            margin-left: 55px;
            width: 90%;
            border: 1px solid #000000;
            border-radius: 10px 10px 0px 0px;
        }

        .content {
            height: 200px;
            background: #ffffff;
            border-top: #FFFFFF 2px solid;
            padding-top: 5px;
            width: 90%;
            margin-left: 55px;
            border: 1px solid #000000;
            border-radius: 0px 0px 10px 10px;
            box-shadow: 0px 5px 10px rgba(0, 0, 0, 0.3);

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
<br><br><br><br><br><br>
<div id="doc3" class="yui-t7">
    <h2 align="center" style="margin-top: 50px">ข่าวสารและกิจกรรม</h2>
    <div id="header">
        <h3 class="card-title"> หัวเรื่อง : ${news_detail.newsname}</h3>
        <p class="card-text">วันที่ : ${news_detail.date} หมวดหมู่ : ${news_detail.category}</p>
    </div>
    <div id="yui-main">
        <div class="yui-b">
            <div class="content" style="height: 250px">
                <p class="card-text">${news_detail.newsdetail}</p>
                <p class="card-text"> แหล่งที่มา : <a href="${news_detail.linkpage}">กดที่นี่</a></p>
            </div>
        </div>
        <br><br>
        <div class="yui-b">
            <div id="secondary"></div>
            <c:forEach var="imageName" items="${imageNames}">
                <img src="${pageContext.request.contextPath}/assets/image/news/${imageName}" alt="Image">
            </c:forEach>

        </div>
    </div>
    <div>
    </div>
</div>
</body>
<jsp:include page="/WEB-INF/layouts/footer.jsp"/>
</html>
