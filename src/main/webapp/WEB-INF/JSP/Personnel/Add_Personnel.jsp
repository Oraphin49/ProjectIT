<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/nav-gtco.css">
    <style>
        /* เราเพิ่มสไตล์สำหรับเลือกตำแหน่งวิชาการที่ต้องการปรับแต่ง */
        #academicRanks {
            width: 100%; /* ทำให้เลือกตำแหน่งเต็มขนาดคอลัมน์ */
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
            height: 150px; /* ระบุความสูงของกล่องเลือกตำแหน่ง */
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
            max-width: 600px;
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
<body>
<nav class="gtco-nav" role="navigation">
    <div class="gtco-container">
        <div class="row" style="display: block">
            <jsp:include page="/WEB-INF/JSP/Nav_Admin.jsp"/>
        </div>
    </div>
</nav>
<br><br><br><br><br><br><br>
<h2>เพิ่มบุคลการ</h2>
<form:form method="POST" action="${pageContext.request.contextPath}/personnel/save_personnnel" name="form" id="form"
           class="custom-form" enctype="multipart/form-data" onsubmit="return validateForm()">
    <div id="profile">
        <div class="row">
            <div class="column">
                <label for="imageFile">รูปภาพ:</label>
                <input type="file" id="imageFile" name="imageFile" accept="image/*" class="form-control" required>
            </div>
        </div>
        <div class="row">
            <div class="column">
                <label for="firstname">ชื่อ</label>
                <input type="text" id="firstname" name="firstname">
            </div>
            <div class="column">
                <label for="lastname">นามสกุล</label>
                <input type="text" id="lastname" name="lastname">
            </div>
        </div>
        <div class="row">
            <div class="column">
                <label for="position">ตำแหน่ง</label>
                <input type="text" id="position" name="position">
            </div>
            <div class="column">
                <label for="scolarlink">สิ่งพิมพ์</label>
                <input type="text" id="scolarlink" name="scolarlink">
            </div>
        </div>
        <div class="row">
            <div class="column">
                <label for="phone">เบอร์โทร</label>
                <input type="text" id="phone" name="phone">
            </div>
            <div class="column">
                <label for="description">คำอธิบาย</label>
                <textarea id="description" name="description"></textarea>
            </div>
        </div>
        <div class="row">
            <div class="column">
                <label for="experitise">ความชำนาญ</label>
                <textarea type="text" id="experitise" name="experitise"></textarea>
            </div>
        </div>
        <div class="row">
            <div class="column">
                <label for="email">อีเมล</label>
                <input type="email" id="email" name="email">
            </div>
            <div class="column">
                <label for="password">รหัสผ่าน</label>
                <input type="password" id="password" name="password">
            </div>
        </div>
        <div class="row">
            <div class="row">
                <div class="column">
                    <label for="academicRanks">ตำแหน่งวิชาการ:</label>
                    <select multiple="multiple" id="academicRanks" name="selectedAcademicRanks">
                        <c:forEach items="${academicRanks}" var="academicRank">
                            <option value="${academicRank.id}">${academicRank.name}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
        </div>
        <div class="button-group">
            <input type="submit" value="บันทึก">
            <a href="${pageContext.request.contextPath}" class="cancel-link custom-button">ยกเลิก</a>
        </div>
    </div>
</form:form>
</body>
<script>
    function validateForm() {
        // เว้นไว้ก่อน
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
        var scolarlink = document.getElementById("scolarlink").value;
        if (scolarlink.trim() === "") {
            alert("กรุณากรอก scolarlink");
            return false;
        } else if (/^\s|\s$|\s{1,}/.test(scolarlink)) {
            alert("ไม่ควรมีช่องว่างระหว่างตัวอักษรใน scolarlink เนื่องจากเก็บเป็น http");
            return false;
        }

        //เช็คเบอร์โทร //
        var phone = document.getElementById("phone").value;
        var TelTH = /^(06|08|09|8)[0-9]{1}-?[0-9]{3}-?[0-9]{5}$/; // รองรับขีด (-) หรือไม่ก็ได้
        if (phone.trim() === "") {
            alert("กรุณากรอกเบอร์โทร");
            return false;
        } else if (!phone.match(TelTH)) {
            alert("คุณกรอกเบอร์โทรให้ถูกต้องไม่ถูกต้อง กรุณากรอกใหม่");
            document.getElementById("phone").value = "";
            return false;
        }

        //เช็คคำบรรยาย //
        var description = document.getElementById("description").value;
        if (description === "") {
            alert("กรุณากรอกคำอธิบาย");
            return false;
        }
        // เช็คความชำนาญ //
        var experitise = document.getElementById("experitise").value;
        if (experitise === "") {
            alert("กรุณากรอกความชำนาญ");
            return false;
        }

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


        return true;
    }
</script>

</html>
