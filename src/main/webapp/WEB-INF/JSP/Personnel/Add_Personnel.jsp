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

        h1 {
            color: #333;
            text-align: center;
            padding: 20px;
        }

        form {
            max-width: 1000px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ddd;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        input[type="text"], input[type="email"], input[type="password"], select {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        textarea {
            width: 100%;
            height: 100px;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        label {
            font-weight: bold;
            margin-top: 10px;
            display: block;
        }

        select {
            height: 35px;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
            transform: translateY(-2px);
            transition: transform 0.2s ease-in-out;
        }
    </style>
</head>
<body>
<nav><jsp:include page="/WEB-INF/JSP/Nav_Admin.jsp"/></nav>
<br><br>
<h2 style="font-family: Kanit; color: #aa1919" align="center">Add Personnel</h2>
<form:form method="POST" action="${pageContext.request.contextPath}/personnel/save_personnnel" name="form" id="form" >
    <div id="profile">
        <p><strong>รูป</strong><input type="text" name="image" id="image"></p>
        <p><strong>รหัส</strong><input type="text" id="id" name="id"></p>
        <p><strong>ชื่อ</strong><input type="text" id="firstname" name="firstname"></p>
        <p><strong>นามสกุล</strong><input type="text" id="lastname" name="lastname" ></p>
        <p><strong>ตำแหน่ง</strong><input type="text" id="position" name="position"></p>
        <p><strong>สิ่งพิมพ์</strong><input type="text" id="scolarlink" name="scolarlink" ></p>
        <p><strong>เบอร์โทร</strong><br><input type="text" id="phone" name="phone"></p>
        <p><strong>คำอธิบาย</strong><br><textarea id="description" name="description"></textarea>
        <p><strong>การทำงาน</strong><br><textarea type="text" id="workexperience" name="workexperience"></textarea>
        <p><strong>ความชำนาญ</strong><br><textarea type="text" id="experitise" name="experitise"></textarea>
        <p><strong>อีเมล</strong><input type="email" id="email" name="email"><br></p>
        <p><strong>รหัสผ่าน</strong><input type="password" id="password" name="password"><br></p>
        <label>ตำแหน่งทางวิชาการ</label>
        <select name="ar_id" id="ar_id">
            <c:forEach items="${ar_detail}" var="ar">
                <option value="${ar.id}">${ar.name}</option>
            </c:forEach>
        </select>
        <input type="submit" value="save">
        <a href="${pageContext.request.contextPath}"><input type="cancel" value="ยกเลิก" class="btn btn-primary"></a>
    </div>
</form:form>
</body>
<script>
    function checkdata(form) {

        //check ชื่อ
        /*chack type text name */
        var firstname = /^[ก-์]{2,}\s[ก-์]{2,}$/;
        if (!form.firstname.value.match(firstname)) {
            alert("กรุณากรอกชื่อเป็นภาษาไทยลองใหม่ๆ");
            frm.firstname.value = "";
            return false;
        }

        //<-------------Check Tel--------------------->
        var phone = /^[0]{1}([2]|[5-9]){1}[-?0-9]{7,}$/;
        if (!frm.phone.value.match(phone)) {
            alert("คุณกรอกเบอร์โทรให้ถูกต้องไม่ถูกต้อง กรุณากรอกใหม่");
            form.phone.value = "";
            return false;
        }

        //<-------------------LableEmail------------------------>

        var email = /^[A-Za-z0-9]{2,}['@'](gmail|hotmail|outlook|Gmail|Hotmail|Outlook|ac.th)(.com)$/;//email
        if (!form.email.value.match(email)) {
            alert("กรุณากรอกอีเมลให้ถูกต้อง");
            form.email.value = "";
            return false;
        }

        // //check file
        // var extall = "jpg,pdf,gif,jpeg";
        // file = form.img.value;
        // ext = file.split('.').pop().toLowerCase();
        //
        // if (parseInt(extall.indexOf(ext)) < 0) {
        //     alert('แนบไฟล์ :' + extall + 'เท่านั้น');
        //     form.img.value = "";
        //     return false;
        // } else if (frm.img.value == "") {
        //     alert("กรุณาแนบรูปโปรไฟล์");
        //     return false
        // }
        //check password
        var password = /^[A-Z|a-z|0-9|@]{8}$/;
        if (!form.password.value.match(password)) {
            alert("รหัสผ่านจะต้องเป็นตัวอักษรภาษาอังกฤษ ตัวเลข และ @ เท่านั้น จำนวน 8 ตัว");
            form.password.value = "";
            form.password.focus();
            return false;
        }

    }
</script>
</html>