<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Information Technology</title>
    <link href="${pageContext.request.contextPath}/assets/css/add-alumni.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap/dist/css/bootstrap.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">
    <style>
        /* สไตล์ CSS สำหรับฟอร์ม */
        .container {
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
<body>
<nav>
    <jsp:include page="/WEB-INF/JSP/Nav_Admin.jsp"/>
</nav>
<br><br>
<h3>เพิ่มข้อมูลศิษย์เก่า</h3>
<br><br>
<div class="container">
    <form action="${pageContext.request.contextPath}/alumni/save" method="POST">
        <div class="form-group row">
            <div class="col-md-6">
                <label for="alumni_id">รหัสนักศึกษา:</label>
                <input type="text" id="alumni_id" name="alumni_id" class="form-control">
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="year">ปีที่จบการศึกษา:</label>
                    <input type="text" id="year" name="year" class="form-control">
                </div>
            </div>
        </div>
        <div class="form-group row">
            <div class="col-md-6">
                <label for="firstname">ชื่อจริง:</label>
                <input type="text" id="firstname" name="firstname" class="form-control">
            </div>
            <div class="col-md-6">
                <label for="lastname">นามสกุล:</label>
                <input type="text" id="lastname" name="lastname" class="form-control">
            </div>
        </div>
        <div class="form-group">
            <label for="position">ตำแหน่ง:</label>
            <select name="position" id="position" class="form-control">
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
                <input type="email" id="email" name="email" class="form-control">
            </div>
        </div>
        <!-- เพิ่มสไตล์ CSS สำหรับรูปภาพ -->
        <div class="form-group">
            <label for="image">รูปภาพ:</label>
            <input type="text" id="image" name="image" class="form-control">
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
</html>
