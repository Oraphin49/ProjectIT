<%@ page import="it_sci.model.Admin" %>
<%@ page import="it_sci.model.Personnel" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>เพิ่มข้อมูลศิษย์เก่า</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/nav-gtco.css">
    <link href="${pageContext.request.contextPath}/assets/css/add-alumni.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap/dist/css/bootstrap.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css">
    <style>
        /* สไตล์ CSS สำหรับฟอร์ม */
        .container-cn {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc; /* เพิ่มขอบ */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* เพิ่มเงา */
            border-radius: 10px; /* เพิ่มขอบมนเข้าไปในฟอร์ม */
            background-color: #f8f9fa; /* เปลี่ยนสีพื้นหลัง */
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-control {
            font-family: 'Kanit', sans-serif;
        }

        label {
            font-family: 'Kanit', sans-serif;
            font-weight: bold;
        }

        /* สไตล์ CSS สำหรับปุ่ม */
        .form-actions {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .form-group input[type="submit"],
        .form-group input[type="cancel"] {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            font-family: 'Kanit', sans-serif;
        }

        .form-group input[type="submit"]:hover,
        .form-group input[type="cancel"]:hover {
            background-color: #0056b3;
            transform: translateY(-2px);
            transition: transform 0.2s ease-in-out;
        }

        /* สไตล์ CSS สำหรับหัวข้อ */
        h3 {
            color: #d51f1f;
            font-family: 'Kanit', sans-serif;
            text-align: center;
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
                    <jsp:include page="/WEB-INF/JSP/Nav_Admin.jsp"/>
                </c:when>
                <c:otherwise>
                    <jsp:include page="/WEB-INF/layouts/nav.jsp"/>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
</nav>
<br><br><br><br><br><br><br><br>
<c:choose>
    <c:when test=""></c:when>
    <c:otherwise></c:otherwise>
</c:choose>
<c:choose>
    <c:when test="${flag.equals('admin')}">
        <h3 style="font-weight: bold">เพิ่มข้อมูลศิษย์เก่า</h3>
        <br><br>
        <div class="container-cn">
            <form action="${pageContext.request.contextPath}/alumni/save" method="POST"
                  onsubmit="return validateForm();"
                  enctype="multipart/form-data">
                <div class="form-group">
                    <label for="alumni_id">รหัสนักศึกษา:</label>
                    <input type="text" id="alumni_id" name="alumni_id" class="form-control">
                </div>
                <div class="form-group row">
                    <div class="col-md-6">
                        <label for="year">ปีที่จบการศึกษา:</label>
                        <input type="text" id="year" name="year" class="form-control">
                    </div>
                    <div class="col-md-6">
                        <label for="generation">ไอทีรุ่นที่:(ตัวอย่าง 19)</label>
                        <input type="text" id="generation" name="generation" class="form-control">
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-md-3">
                        <select name="prefix" id="prefix"
                                style="font-family: 'Kanit'; margin-top: 25px;height: 35px;width: 100%">
                            <option value="นาย">นาย</option>
                            <option value="นาง">นาง</option>
                            <option value="นางสาว">นางสาว</option>
                        </select>
                    </div>
                    <div class="col-md-3" style="width: 37.5%">
                        <label for="firstname">ชื่อ:</label>
                        <input type="text" id="firstname" name="firstname" class="form-control">
                    </div>
                    <div class="col-md-3" style="width: 37.5%">
                        <label for="lastname">นามสกุล:</label>
                        <input type="text" id="lastname" name="lastname" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label for="position">ตำแหน่ง:</label>
                    <select name="position" id="position" style="width: 90%;height: 40px; font-family: Kanit">
                        <option value="Programmer">Programmer</option>
                        <option value="SA">SA</option>
                        <option value="Software Tester">Software Tester</option>
                        <option value="Developer">Developer</option>
                        <option value="Software Engineer">Software Engineer</option>
                        <option value="Data Scientist">Data Scientist</option>
                        <option value="Data Engineer">Data Engineer</option>
                        <option value="UX,UI">UX,UI</option>
                        <option value="full stack developer">Full Stack Developer</option>
                        <option value="อื่นๆ">อื่นๆ</option>
                    </select>
                </div>
                <div id="otherPositionDiv" style="display: none;">
                    <label for="otherPosition">กรอกตำแหน่ง:</label>
                    <input type="text" id="otherPosition" name="otherPosition" class="form-control">
                </div>
                <div class="form-group">
                    <label for="company">บริษัท:</label>
                    <input type="text" id="company" name="company" class="form-control">
                </div>
                <div class="form-group row">
                    <div class="col-md-6">
                        <label for="phone">เบอร์โทร:</label>
                        <input type="text" id="phone" name="phone" class="form-control">
                    </div>
                    <div class="col-md-6">
                        <label for="email">อีเมล์:</label>
                        <input type="text" id="email" name="email" class="form-control">
                    </div>
                </div>
                <!-- เพิ่มสไตล์ CSS สำหรับรูปภาพ -->
                <div class="form-group">
                    <label for="imageFile">รูปภาพ:</label>
                    <input type="file" id="imageFile" name="imageFile" accept="image/*" class="form-control" required>
                    <small style="font-family: Kanit">กรุณาเลือกไฟล์รูปภาพที่มีนามสกุลไฟล์เป็น.png , jpg , jpeg</small>
                </div>
                <div class="form-group">
                    <label for="expertise">ความเชี่ยวชาญ:</label>
                    <textarea id="expertise" name="expertise" class="form-control"></textarea>
                </div>
                <div class="form-group">
                    <label for="award">ผลงาน:</label>
                    <textarea id="award" name="award" class="form-control"></textarea>
                </div>
                <div class="form-actions">
                    <div class="row">
                        <div class="col-md-6">
                            <input type="submit" value="บันทึก" class="btn btn-primary btn-block">
                        </div>
                        <div class="col-md-6">
                            <a href="${pageContext.request.contextPath}/alumni/list_alumni_manage"
                               class="btn btn-secondary btn-block">ยกเลิก</a>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <div class="f">
            <jsp:include page="/WEB-INF/layouts/footer.jsp"/>
        </div>
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
    document.getElementById("position").addEventListener("change", function () {
        var positionSelect = document.getElementById("position");
        var otherPositionDiv = document.getElementById("otherPositionDiv");

        if (positionSelect.value === "อื่นๆ") {
            otherPositionDiv.style.display = "block";
        } else {
            otherPositionDiv.style.display = "none";
        }
    });
</script>

<script>
    function validateForm() {
        //เช็ครหัสนักศึกษา
        var alumni_id = document.getElementById("alumni_id").value;
        if (alumni_id.trim() === "") {
            alert("กรุณากรอกรหัสนักศึกษา");
            return false;
        } else if (alumni_id.length !== 10 || !/^\d+$/.test(alumni_id) || /\s/.test(alumni_id)) {
            alert("รหัสนักศึกษาต้องประกอบด้วยตัวเลข 10 ตัวและไม่ควรมีช่องว่างระหว่างตัวเลข");
            document.getElementById("alumni_id").value = "";
            return false;
        }

        // เว้นไว้ก่อน
        var year = document.getElementById("year").value;
        if (year.trim() === "") {
            alert("กรุณากรอกปีที่จบการศึกษา");
            return false;
        } else if (!/^\d{4}$/.test(year)) {
            alert("ปีการศึกษาที่จบต้องประกอบด้วยตัวเลข 4 ตัวเท่านั้น");
            return false;
        } else if (parseInt(year) < 1943) {
            alert("ปีการศึกษาที่จบต้องเป็นรูปแบบพุทธศักราช ตั้งแต่ 1943 เป็นต้นไป");
            return false;
        }

        // เช็ครุ่นที่ //
        var generation = document.getElementById("generation").value;
        if (generation.trim() === "") {
            alert("กรุณากรอกรุ่น");
            return false;
        } else if (!/^\d{1,3}$/.test(generation)) {
            alert("รุ่นต้องประกอบด้วยตัวเลขไม่เกิน 3 หลักเท่านั้น");
            return false;
        }

        // เช็คชื่อ //
        var firstname = document.getElementById("firstname").value;
        if (firstname.trim() === "") {
            alert("กรุณากรอกชื่อจริง");
            return false;
        } else if (!/^[ก-๙]+(\s[ก-๙]+)*$/.test(firstname) || firstname.length < 2 || firstname.length > 50) {
            alert("ชื่อจริงต้องเป็นภาษาไทยเท่านั้นและมีความยาวระหว่าง 2 ถึง 50 ตัวอักษร และมีช่องว่างระหว่างตัวอักษรได้ไม่เกิน 1 ช่อง");
            document.getElementById("firstname").value = "";
            return false;
        }
        // เช็คนามสกุล //
        var lastname = document.getElementById("lastname").value;
        if (lastname.trim() === "") {
            alert("กรุณากรอกนามสกุล");
            return false;
        } else if (!/^[ก-๙]+(\s[ก-๙]+)*$/.test(lastname) || lastname.length < 2 || lastname.length > 50) {
            alert("นามสกุลต้องเป็นภาษาไทยเท่านั้นและมีความยาวระหว่าง 2 ถึง 50 ตัวอักษร และมีช่องว่างระหว่างตัวอักษรได้ไม่เกิน 1 ช่อง");
            document.getElementById("lastname").value = "";
            return false;
        }


        //เช็คบริษัท //
        var company = document.getElementById("company").value;
        if (company.trim() === "") {
            alert("กรุณากรอกชื่อบริษัท");
            return false;
        } else if (company.length > 50 || !/^[A-Za-zก-์\s,.()\-\']+$/u.test(company)) {
            alert("ชื่อบริษัทต้องมีความยาวไม่เกิน 50 ตัวอักษร และใช้ได้เฉพาะภาษาไทย, ภาษาอังกฤษ, รวมถึงอักขระพิเศษ . , () และ - เท่านั้น");
            document.getElementById("company").value = "";
            return false;
        }


        // เช็คเบอร์โทร
        var phone = document.getElementById("phone").value;
        var TelTH = /^(06|08|09|8)[0-9]{1}-?[0-9]{3}-?[0-9]{4}$/; // รองรับขีด (-) หรือไม่ก็ได้
        if (phone.trim() === "") {
            alert("กรุณากรอกเบอร์โทรหรือใส่ '-' แทน");
            return false;
        } else if (phone.trim() !== "-" && !TelTH.test(phone)) {
            alert("คุณกรอกเบอร์โทรให้ถูกต้องไม่ถูกต้อง กรุณากรอกใหม่");
            document.getElementById("phone").value = "";
            return false;
        }

        // เช็คอีเมล์ //
        var email = document.getElementById("email").value;
        var emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
        if (email.trim() === "") {
            alert("กรุณากรอกอีเมล์หรือใส่ '-' แทน");
            return false;
        } else if (email.trim() !== "-" && !emailRegex.test(email)) {
            alert("กรุณากรอกอีเมล์ให้อยู่ในรูปแบบที่ถูกต้อง (เช่น example@gmail.com)");
            document.getElementById("email").value = ""; // ถ้าต้องการล้างค่า
            return false;
        }

        //เว้นไว้ก่อน
        var imageFile = document.getElementById("imageFile");
        var file = imageFile.files[0]; // รับไฟล์ที่เลือกจาก input
        if (!file) {
            alert("กรุณาเลือกไฟล์รูปภาพ");
            return false;
        }
        if (!file.type.match(/image\/(png|jpeg|jpg)/)) {
            alert("โปรดเลือกไฟล์รูปภาพเฉพาะ .png, .jpg หรือ .jpeg");
            return false;
        }
        var maxSizeInBytes = 5 * 1024 * 1024; // 5 MB
        if (file.size > maxSizeInBytes) {
            alert("ขนาดของไฟล์รูปภาพต้องไม่เกิน 5 MB");
            return false;
        }
        //เช็คความชำนาญ //
        var expertise = document.getElementById("expertise").value;
        if (expertise.trim() === "") {
            alert("กรุณากรอกความเชี่ยวชาญ");
            document.getElementById("expertise").value = ""; // ล้างค่า
            return false;
        }
        // เช็คผลงาน
        var award = document.getElementById("award").value;
        if (award.trim() === "") {
            alert("กรุณากรอกผลงาน");
            document.getElementById("award").value = ""; // ล้างค่า
            return false;
        }

        return true; // ข้อมูลถูกต้องทั้งหมด
    }
</script>
<script>
    function updateGenerationField() {
        var alumniIdField = document.getElementById("alumni_id");
        var generationField = document.getElementById("generation");

        if (alumniIdField.value.length >= 2) {
            // ดึงรหัส 2 ตัวแรก
            var firstTwoDigits = alumniIdField.value.substring(0, 2);
            // แปลงเป็นตัวเลขและลบด้วย 44
            var generationValue = parseInt(firstTwoDigits) - 44;
            // ตรวจสอบว่าค่าที่ได้เป็นจำนวนเต็ม
            if (!isNaN(generationValue)) {
                // นำค่ารุ่นมาใส่ในช่องรุ่น
                generationField.value = generationValue;
            } else {
                // ถ้าไม่ใช่จำนวนเต็มให้เคลียรุ่น
                generationField.value = "";
            }
        } else {
            // กรณีรหัสนักศึกษาไม่ครบ 2 ตัว ให้เคลียรุ่น
            generationField.value = "";
        }
    }

    // เรียกใช้ฟังก์ชั่นเมื่อมีการเปลี่ยนแปลงในรหัสนักศึกษา
    document.getElementById("alumni_id").addEventListener("input", updateGenerationField);
</script>


</html>
