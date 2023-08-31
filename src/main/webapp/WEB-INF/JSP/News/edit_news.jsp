
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Information Technology</title>
    <link href="${pageContext.request.contextPath}/assets/css/add_news.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">

</head>
<body>
<div id="container">
    <jsp:include page="/WEB-INF/JSP/Nav_Admin.jsp"/>
    <br><br>
    <div align="center">
        <b style="font-size: 28px; font-family: Kanit; color: #a41212">ข้อมูลข่าว</b>
    </div>
    <br><br>
    <form action="${pageContext.request.contextPath}/news/${news.id}/edit/save" method="POST">
        <div class="news-form">
            <label type="text">ชื่อข่าว:</label>
            <input type="text" name="news_name" id="news_name" value="${news.newsname}" >
            <select name="news_category" id="news_category" class="news_category" style=" width: 100%;
    padding: 10px;
    margin: 5px 0;
    border: 1px solid #ccc;
    border-radius: 3px;
    font-family: Kanit;">
                <option value="ข่าวสาร " ${news.category == 'ข่าวสาร' ?  'selected' : ''}>ข่าวสาร</option>
                <option value="กิจกรรม" ${news.category == 'กิจกรรม' ?  'selected' : ''}>กิจกรรม</option>
            </select>
            <label >รายละเอียดข่าว:</label>
            <textarea name="news_detail" id="news_detail" >${news.newsdetail}</textarea>
            <label type="text">แหล่งที่มา:</label>
            <input type="text" name="linkpage" id="linkpage" value="${news.linkpage}">
            <input type="submit" value="บันทึกข่าว">
            <a href="${pageContext.request.contextPath}/alumni/list_alumni_manage"><input type="cancel" value="ยกเลิก" class="btn btn-primary"></a>
        </div>
    </form>
</body>
<div class="f" >
    <jsp:include page="/WEB-INF/layouts/footer.jsp"/>
</div>
</html>