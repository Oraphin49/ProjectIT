<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>แจ้งเตือน</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: Kanit;
            background-color: #f0f0f0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .alert {
            background-color: #fff;
            border: 1px solid #ddd;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 2px 6px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .error-message {
            color: #e74c3c;
            font-weight: bold;
            font-family: Kanit;
        }
    </style>
</head>
<body>
<div class="alert">
    <h2>ไม่สามารถเข้าสู่ระบบได้</h2>
    <p class="error-message">กรุณาตรวจสอบชื่อผู้ใช้และรหัสผ่านของคุณ</p>
    <a href="${pageContext.request.contextPath}">กลับสู่หน้าหลัก</a>
</div>
</body>
</html>
