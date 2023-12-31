<%@ page import="it_sci.model.Personnel" %>
<%@ page import="it_sci.model.Admin" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>เพิ่มข้อมูลบุคลากร</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/nav-gtco.css">
    <style>
        #academicRanks {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
            height: 150px;
        }

        #academicRanks option {
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 3px;
            margin: 5px;
        }

        /* เราเพิ่มสไตล์สำหรับปุ่ม "บันทึก" */
        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            transition: background-color 0.2s ease-in-out, transform 0.2s ease-in-out;
            margin-top: 10px; /* ระยะห่างด้านบนของปุ่ม "บันทึก" */
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
            transform: translateY(-2px);
        }

        /* เราเพิ่มสไตล์สำหรับปุ่ม "ยกเลิก" */
        .custom-button {
            background-color: #ccc;
            color: #333;
            padding: 10px 20px;
            border-radius: 3px;
            text-decoration: none;
            transition: background-color 0.2s ease-in-out;
            margin-top: 10px; /* ระยะห่างด้านบนของปุ่ม "ยกเลิก" */
        }

        .custom-button:hover {
            background-color: #999;
        }

        body {
            font-family: Kanit;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
        }

        h2 {
            font-family: 'Kanit', sans-serif;
            color: #aa1919;
            text-align: center;
        }

        .custom-form {
            max-width: 850px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ddd;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .custom-form label {
            font-weight: bold;
        }

        .custom-form input[type="text"],
        .custom-form input[type="email"],
        .custom-form input[type="password"],
        .custom-form select,
        .custom-form textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        .custom-form select {
            height: 35px;
        }

        .custom-form input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            transition: background-color 0.2s ease-in-out, transform 0.2s ease-in-out;
        }

        .custom-form input[type="submit"]:hover {
            background-color: #0056b3;
            transform: translateY(-2px);
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

        /* เพิ่มสไตล์สำหรับการจัดวางแบบแถวและคอลัมน์ */
        .row {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
            margin-bottom: 10px;
        }

        .column {
            flex: 1;
            margin-right: 10px;
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
        <div class="row" style="display: block">
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
<br><br><br><br><br><br>
<c:choose>
    <c:when test=""></c:when>
    <c:otherwise></c:otherwise>
</c:choose>
<c:choose>
    <c:when test="${flag.equals('admin')}">
        <h2 style="font-family: Kanit; font-weight: bold">เพิ่มบุคลาการ</h2>
        <br>
        <form:form method="POST" action="${pageContext.request.contextPath}/personnel/save_personnnel" name="form"
                   id="form"
                   class="custom-form" enctype="multipart/form-data" onsubmit="return validateForm()">
            <!-- Personal Information Section -->
            <div id="profile">
                <h5 style="font-family: Kanit;font-weight: bold">ข้อมูลส่วนตัว</h5>
                <br>
                <div class="row">
                    <div class="column">
                        <label type="text" style="font-family: Kanit">ตำแหน่งวิชาการ</label>
                        <select name="position" id="position" class="position" style=" width: 100%;
    padding: 4px;
    margin: 5px 0;
    border: 1px solid #ccc;
    border-radius: 3px;
    font-family: Kanit;">
                            <option value="ศาสตราจารย์">ศาสตราจารย์</option>
                            <option value="รองศาสตราจารย์ ">รองศาสตราจารย์</option>
                            <option value="ผู้ช่วยศาสตราจารย์">ผู้ช่วยศาสตราจารย์</option>
                            <option value="อาจารย์">อาจารย์</option>
                        </select>
                    </div>
                    <div class="column">
                        <label for="firstname" style="font-family: Kanit">ชื่อ</label>
                        <input type="text" id="firstname" name="firstname">
                    </div>
                    <div class="column">
                        <label for="lastname" style="font-family: Kanit">นามสกุล</label>
                        <input type="text" id="lastname" name="lastname">
                    </div>
                </div>
                <div class="row">
                    <div class="column">
                            <%--@declare id="academicranks"--%><label for="academicRanks" style="font-family: Kanit">ตำแหน่งบริหาร:</label><br>
                        <c:forEach items="${academicRanks}" var="academicRank">
                            <label style="font-family: Kanit">
                                <input type="checkbox" name="selectedAcademicRanks"
                                       value="${academicRank.id}">&nbsp;${academicRank.name}
                            </label><br>
                        </c:forEach>
                    </div>
                </div>
                <div class="row">
                    <div class="column">
                        <label for="phone" style="font-family: Kanit">เบอร์โทร</label>
                        <input type="text" id="phone" name="phone">
                    </div>
                </div>
                <div class="row">
                    <div class="column">
                        <label for="email" style="font-family: Kanit">อีเมล</label>
                        <input type="email" id="email" name="email">
                    </div>
                    <div class="column">
                        <label for="password" style="font-family: Kanit">รหัสผ่าน</label>
                        <input type="password" id="password" name="password">
                    </div>
                </div>
                <div class="row">
                    <div class="column">
                        <small style="font-family: Kanit;color: #aa1818">กรุณาเลือกไฟล์รูปภาพที่มีนามสกุลไฟล์เป็น.png , jpg , jpeg</small><br>
                        <label for="imageFile" style="font-family: Kanit">รูปภาพ:</label>
                        <input type="file" id="imageFile" name="imageFile" accept="image/*" required>
                        <br>
                    </div>
                </div>
            </div>
<br><br>
            <!-- General Information Section -->
<%--            <div id="general">--%>
<%--                <h5 style="font-family: Kanit;font-weight: bold">ข้อมูลอื่นๆ</h5>--%>
<%--                <br>--%>
<%--                <div class="row">--%>
<%--                    <div class="column">--%>
<%--                        <label for="scolarlink">สิ่งพิมพ์</label>--%>
<%--                        <input type="text" id="scolarlink" name="scolarlink">--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="row">--%>
<%--                    <div class="column">--%>
<%--                        <label for="description">คำอธิบาย</label>--%>
<%--                        <textarea id="description" name="description"></textarea>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="row">--%>
<%--                    <div class="column">--%>
<%--                        <label for="experitise">ความชำนาญ</label>--%>
<%--                        <textarea type="text" id="experitise" name="experitise"></textarea>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>

            <!-- Button Group -->
            <div class="button-group">
                <input type="submit" value="บันทึก">
                <a href="${pageContext.request.contextPath}" class="cancel-link custom-button">ยกเลิก</a>
            </div>
        </form:form>

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
<script>
    function validateForm() {
        // image
        var imageFile = document.getElementById("imageFile");
        var allowedTypes = ["image/jpeg", "image/png", "image/gif"];
        var maxFileSize = 5 * 1024 * 1024; // 5MB

        if (imageFile.files.length === 0) {
            alert("กรุณาเลือกไฟล์รูปภาพ");
            return false;
        }

        var file = imageFile.files[0];
        if (!allowedTypes.includes(file.type)) {
            alert("ชนิดของไฟล์รูปภาพไม่ถูกต้อง");
            return false;
        }

        if (file.size > maxFileSize) {
            alert("ขนาดของไฟล์รูปภาพใหญ่เกินไป (สูงสุด 5MB)");
            return false;
        }


        //เช็คชื่อจริง //
        var firstname = document.getElementById("firstname").value;
        if (firstname.trim() === "") {
            alert("กรุณากรอกชื่อจริง");
            return false;
        } else if (!/^[ก-๙]+(\s[ก-๙]+)*$/.test(firstname) || firstname.length < 2 || firstname.length > 50) {
            alert("ชื่อจริงต้องเป็นภาษาไทยเท่านั้นและมีความยาวระหว่าง 2 ถึง 50 ตัวอักษร และมีช่องว่างระหว่างตัวอักษรได้ไม่เกิน 1 ช่อง");
            document.getElementById("firstname").value = "";
            return false;
        }

        //เช็คนามสกุล //
        var lastname = document.getElementById("lastname").value;
        if (lastname.trim() === "") {
            alert("กรุณากรอกนามสกุล");
            return false;
        } else if (!/^[ก-๙]+(\s[ก-๙]+)*$/.test(lastname) || lastname.length < 2 || lastname.length > 50) {
            alert("นามสกุลต้องเป็นภาษาไทยเท่านั้นและมีความยาวระหว่าง 2 ถึง 50 ตัวอักษร และมีช่องว่างระหว่างตัวอักษรได้ไม่เกิน 1 ช่อง");
            document.getElementById("lastname").value = "";
            return false;
        }

        //เช็คตำแหน่ง //
        var position = document.getElementById("position").value;
        var thaiRegex = /^[ก-๏เ-๙\s]+$/;

        if (position === "") {
            alert("กรุณากรอกตำแหน่ง");
            return false;
        } else if (!thaiRegex.test(position) || position.length < 2 || position.length > 50) {
            alert("ตำแหน่งต้องเป็นภาษาไทยและมีขนาดระหว่าง 2 ถึง 50 ตัวอักษร");
            return false;
        }


        //เช็คสิ่งพิมพ์ //
        // var scolarlink = document.getElementById("scolarlink").value;
        // if (scolarlink.trim() === "") {
        //     alert("กรุณากรอก scolarlink");
        //     return false;
        // } else if (/^\s|\s$|\s{1,}/.test(scolarlink)) {
        //     alert("ไม่ควรมีช่องว่างระหว่างตัวอักษรใน scolarlink เนื่องจากเก็บเป็น http");
        //     return false;
        // }

        // เช็คเบอร์โทร //
        var phone = document.getElementById("phone").value;
        var TelTH = /^(06|08|09|8)-?[0-9]{3}-?[0-9]{5}$/; // รองรับขีด (-)
        if (phone.trim() === "") {
            alert("กรุณากรอกเบอร์โทร");
            return false;
        } else if (!TelTH.test(phone)) {
            alert("คุณกรอกเบอร์โทรให้ถูกต้องไม่ถูกต้อง กรุณากรอกใหม่");
            document.getElementById("phone").value = "";
            return false;
        }

        //เช็คคำบรรยาย //
        // var description = document.getElementById("description").value;
        // if (description === "") {
        //     alert("กรุณากรอกคำอธิบาย");
        //     return false;
        // }
        // // เช็คความชำนาญ //
        // var experitise = document.getElementById("experitise").value;
        // if (experitise === "") {
        //     alert("กรุณากรอกความชำนาญ");
        //     return false;
        // }

        //เช็คอีเมล์ //
        var email = document.getElementById("email").value;
        var emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
        if (email.trim() === "") {
            alert("กรุณากรอกอีเมล์");
            return false;
        } else if (!email.match(emailRegex)) {
            alert("กรุณากรอกอีเมล์ให้ถูกต้อง");
            document.getElementById("email").value = "";
            return false;
        }

        //เว้นไว้ก่อน
        var password = document.getElementById("password").value;
        if (password === "") {
            alert("กรุณากรอกรหัสผ่าน");
            return false;
        }

        var selectedAcademicRanks = document.querySelectorAll('input[name="selectedAcademicRanks"]:checked');
        if (selectedAcademicRanks.length === 0) {
            alert("กรุณาเลือกอย่างน้อยหนึ่งตำแหน่งวิชาการ");
            return false;
        }


        return true;
    }
</script>

</html>
