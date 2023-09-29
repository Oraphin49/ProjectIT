<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Personnel</title>
    <style>
        body {
            font-family: Arial, sans-serif;
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

        .custom-form input[type="submit"]{
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            transition: background-color 0.2s ease-in-out, transform 0.2s ease-in-out;
        }

        .custom-form input[type="submit"]:hover{
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
<nav><jsp:include page="/WEB-INF/JSP/Nav_Admin.jsp"/></nav>
<br><br>
<h2>Add Personnel</h2>
<form:form method="POST" action="${pageContext.request.contextPath}/personnel/save_personnnel" name="form" id="form" class="custom-form">
    <div id="profile">
        <div class="row">
            <div class="column">
                <label for="image">รูป</label>
                <input type="text" name="image" id="image">
            </div>
            <div class="column">
                <label for="id">รหัส</label>
                <input type="text" id="id" name="id">
            </div>
        </div>
        <div class="row">
            <div class="column">
                <label for="firstname">ชื่อ</label>
                <input type="text" id="firstname" name="firstname">
            </div>
            <div class="column">
                <label for="lastname">นามสกุล</label>
                <input type="text" id="lastname" name="lastname" >
            </div>
        </div>
        <div class="row">
            <div class="column">
                <label for="position">ตำแหน่ง</label>
                <input type="text" id="position" name="position">
            </div>
            <div class="column">
                <label for="scolarlink">สิ่งพิมพ์</label>
                <input type="text" id="scolarlink" name="scolarlink" >
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
                <label for="workexperience">การทำงาน</label>
                <textarea type="text" id="workexperience" name="workexperience"></textarea>
            </div>
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
            <div class="column">
                <label for="ar_id">ตำแหน่งทางวิชาการ</label>
                <select name="ar_id" id="ar_id">
                    <c:forEach items="${ar_detail}" var="ar">
                        <option value="${ar.id}">${ar.name}</option>
                    </c:forEach>
                </select>
            </div>
        </div>
        <div class="button-group">
            <input type="submit" value="บันทึก">
            <a href="${pageContext.request.contextPath}" class="cancel-link custom-button">ยกเลิก</a>
        </div>
    </div>
</form:form>
</body>
</html>
