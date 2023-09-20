<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Information Technology</title>
    <link href="${pageContext.request.contextPath}/assets/css/add_news.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">
<style>
    .news-form input[type="cancel"] {
        background-color: #007bff;
        color: #fff;
        padding: 10px 20px;
        border: none;
        border-radius: 3px;
        cursor: pointer;
        font-family: Kanit;
        width: 90px;
    }

    .news-form input[type="cencel"]:hover {
        background-color: #0056b3;
        transform: translateY(-2px);
        transition: transform 0.2s ease-in-out;
        font-family: Kanit;
        width: 90px;
    }
</style>
</head>
<body>
<div id="container">
    <jsp:include page="/WEB-INF/JSP/Nav_Admin.jsp"/>
    <br><br>
    <div align="center">
        <b style="font-size: 28px; font-family: Kanit; color: #a41212">ข้อมูลข่าว</b>
    </div>
    <br><br>
        <form action="${pageContext.request.contextPath}/news/save" method="POST" onsubmit="return validateForm()" enctype="multipart/form-data">
    <div class="news-form">
        <label type="text">ชื่อข่าว:</label>
        <input type="text" name="news_name" id="news_name">
        <select name="news_category" id="news_category" class="news_category" style=" width: 100%;
    padding: 10px;
    margin: 5px 0;
    border: 1px solid #ccc;
    border-radius: 3px;
    font-family: Kanit;">
            <option value="ข่าวสาร">ข่าวสาร</option>
            <option value="กิจกรรม">กิจกรรม</option>
        </select>
        <label >รายละเอียดข่าว:</label>
        <textarea name="news_detail" id="news_detail"></textarea>
        <label type="text">แหล่งที่มา:</label>
        <input type="text" name="linkpage" id="linkpage">
        <input type="file" name="imageFile" accept="image/*" multiple><br><br><br> <!-- ใช้ 'files' แทน 'file' และเพิ่ม 'multiple' เพื่ออัปโหลดหลายไฟล์ -->
        <input type="submit" value="บันทึกข่าว" >
        <a href="${pageContext.request.contextPath}/news/list_news_manage"><input type="cancel" value="ยกเลิก"></a>

    </div>
</form>
</body>
<div class="f" >
    <jsp:include page="/WEB-INF/layouts/footer.jsp"/>
</div>
<%--<script>--%>
<%--    function validateForm() {--%>
<%--        var newsName = document.getElementById("news_name").value;--%>

<%--        if (newsName.trim() === "") {--%>
<%--            alert("กรุณากรอกชื่อข่าว");--%>
<%--            return false;--%>
<%--        }--%>
<%--        var newsDetail = document.getElementById("news_detail").value;--%>
<%--        if (newsDetail.trim() === "") {--%>
<%--            alert("กรุณากรอกรายละเอียดข่าว");--%>
<%--            return false;--%>
<%--        }--%>
<%--        var linkpage = document.getElementById("linkpage").value;--%>
<%--        if (linkpage.trim() === "") {--%>
<%--            alert("กรุณากรอกแหล่งที่มา");--%>
<%--            return false;--%>
<%--        }--%>

<%--        return true; // ข้อมูลถูกต้องทั้งหมด--%>
<%--    }--%>
<%--</script>--%>

</html>
