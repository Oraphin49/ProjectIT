<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="it_sci.model.Personnel" %>
<%@ page import="it_sci.model.Admin" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>แก้ไขข้อมูลข่าวสาร</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/nav-gtco.css">
    <link href="${pageContext.request.contextPath}/assets/css/add_news.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap/dist/css/bootstrap.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">
    <style>
        *, *::before, *::after {
            box-sizing: border-box;
        }

        .news-form {
            background-color: #fff;
            border: 1px solid #ddd;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
            width: 70%;
            background-color: #fce7e7;
        }

        /* เพิ่มสไตล์ CSS สำหรับปุ่ม "ยกเลิก" */
        .custom-button {
            background-color: #ccc;
            color: #333;
            padding: 10px 20px;
            border-radius: 3px;
            text-decoration: none;
            transition: background-color 0.2s ease-in-out;
        }

        .custom-button:hover {
            background-color: #999;
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
<br><br><br><br><br><br><br>
<c:choose>
    <c:when test=""></c:when>
    <c:otherwise></c:otherwise>
</c:choose>
<c:choose>
    <c:when test="${flag.equals('admin')}">
    <div align="center">
        <b style="font-size: 28px; font-family: Kanit; color: #a41212">แก้ไขข้อมูลข่าว</b>
    </div>
    <br><br>
    <form action="${pageContext.request.contextPath}/news/${news.id}/edit/save" method="POST" onsubmit="return validateForm()"  enctype="multipart/form-data">
        <div class="news-form" style="width: 50%; margin-left: 25%">
            <label type="text">ชื่อข่าว:</label>
            <input type="text" name="news_name" id="news_name" value="${news.newsname}">
            <label>หมวดหมู่: </label>
            <select name="news_category" id="news_category" class="news_category" style=" width: 100%; padding: 10px; margin: 5px 0; border: 1px solid #ccc; border-radius: 3px; font-family: Kanit;">
                <option value="ข่าวสาร " ${news.category == 'ข่าวสาร' ?  'selected' : ''}>ข่าวสาร</option>
                <option value="กิจกรรม" ${news.category == 'กิจกรรม' ?  'selected' : ''}>กิจกรรม</option>
                <option value="ประชาสัมพันธ์" ${news.category == 'ประชาสัมพันธ์' ?  'selected' : ''}>ประชาสัมพันธ์</option>
            </select>
            <label>รายละเอียดข่าว:</label>
            <textarea name="news_detail" id="news_detail">${news.newsdetail}</textarea>
            <label type="text">แหล่งที่มา:</label>
            <input type="text" name="linkpage" id="linkpage" value="${news.linkpage}"><br><br>
            <input type="file" name="imageFile" accept="image/*" multiple><br>
            <small style="font-family: Kanit;color: #595959">กรุณาเลือกไฟล์รูปภาพที่มีนามสกุลไฟล์เป็น.png , jpg , jpeg และสามารถเลือกรูปได้ไม่เกิน8รูป</small>
            <br><br>
            <div class="button-group">
                <input type="submit" value="บันทึก">
                <a href="${pageContext.request.contextPath}/news/list_news_manage" class="cancel-link custom-button">ยกเลิก</a>
            </div>
        </div>
    </form>
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
<div class="f">
    <jsp:include page="/WEB-INF/layouts/footer.jsp"/>
</div>
<script>
    function validateForm() {
        // เช็คชื่อข่าว
        var newsName = document.getElementById("news_name").value;
        if (newsName.trim() === "") {
            alert("กรุณากรอกชื่อข่าว");
            return false;
        } else if (newsName.length < 2 || newsName.length > 200 || !/^[A-Za-zก-์\d\s.,!?/'"()]+$/u.test(newsName)) {
            alert("ชื่อข่าวต้องมีความยาวระหว่าง 2 และ 200 ตัวอักษร และใช้ได้เฉพาะภาษาไทยและภาษาอังกฤษเท่านั้น และอนุญาตให้ใช้ตัวเลขและอักขระพิเศษได้ .,!?/'");
            document.getElementById("news_name").value = "";
            return false;
        }

        //เช็คระละเอียด
        var newsDetail = document.getElementById("news_detail").value;
        if (newsDetail.trim() === "") {
            alert("กรุณากรอกรายละเอียดข่าว");
            document.getElementById("news_detail").value = "";
            return false;
        }

        //เช็ค แหล่งที่มา
        //เช็ค แหล่งที่มา
        var url = document.getElementById("linkpage").value;
        var urlPattern = /^(https?:\/\/)?([\w\d]+\.)?[\w\d]+\.\w{2,}(\/.*)?$/;
        if (url.trim() === "") {
            alert("กรุณากรอกแหล่งที่มา");
            return false;
        } else if (!urlPattern.test(url)) {
            alert("รูปแบบของ URL ไม่ถูกต้อง");
            document.getElementById("linkpage").value = "";
            return false;
        }
        // เช็ครูปภาพ
        // ตรวจสอบว่ามีไฟล์รูปภาพถูกเลือกหรือไม่
        var imageFiles = document.getElementsByName("imageFile")[0].files;
        // ตรวจสอบว่ามีไฟล์รูปภาพถูกเลือกหรือไม่
        if (imageFiles.length === 0) {
            alert("กรุณาเลือกไฟล์รูปภาพ");
            return false;
        }


        // ตรวจสอบจำนวนไฟล์รูปภาพที่อัปโหลด
        if (imageFiles.length > 8) {
            alert("คุณสามารถอัปโหลดได้เพียง 8 รูปเท่านั้น");
            return false;
        }

        // ตรวจสอบขนาดของไฟล์รูปภาพ
        for (var i = 0; i < imageFiles.length; i++) {
            var imageSize = imageFiles[i].size; // ขนาดไฟล์ในไบต์
            var maxSizeInBytes = 5 * 1024 * 1024; // 1 MB (แก้ไขตามที่คุณต้องการ)

            if (imageSize > maxSizeInBytes) {
                alert("ไฟล์รูปภาพที่ " + (i + 1) + " มีขนาดใหญ่เกินไป");
                return false;
            }
        }

        return true; // ข้อมูลถูกต้องทั้งหมด
    }
</script>
</html>
