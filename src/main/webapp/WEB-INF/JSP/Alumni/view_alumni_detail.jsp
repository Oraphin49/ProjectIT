
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Information Technology</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
    <link href="img/favicon.ico" rel="icon">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/home/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/home/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/nav-gtco.css" rel="stylesheet">
    <style>
        /* Reset CSS */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Global Styles */
        body {
            font-family: 'Kanit', sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        .container-cn {
            max-width: 900px;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
        }

        .header {
            background-color: #282727;
            color: #fff;
            text-align: center;
            padding: 20px 0;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
        }

        .header h1 {
            font-size: 30px;
            margin: 0;
        }

        /* Profile Picture */
        .profile-picture {
            display: inline-block;
            width: 40%;
            vertical-align: top;
        }

        .profile-picture img {
            width: 260px;
            height: 280px;
            object-fit: cover;
            border-radius: 10%;
            border: 2px solid #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            margin-top: 20px;
            margin-left: 45px;
        }

        /* Content Section */
        .content2 {
            display: inline-block;
            width: 40%;
            vertical-align: top;
            margin-left: 100px;
            margin-top: 10px;
            border: 1px solid #ccc;
            border-radius: 10px;
            padding: 10px;
        }

        .content2 h3 {
            font-size: 22px;
            color: #333;
            margin-top: 0;
        }

        .card-text {
            font-size: 16px;
            margin-top: 10px;
            color: #111111;
        }

        /* Secondary Section */
        #secondary {
            background-color: #f9f9f9;
            border-radius: 10px;
            padding: 20px;
            margin-top: 20px;
            border-top: 2px solid #ccc;
        }

        .p1 {
            background-color: #505050;
            color: white;
            font-family: 'Kanit', sans-serif;
            font-size: 20px;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 10px;
        }

        .p2 {
            font-family: 'Kanit', sans-serif;
            font-size: 18px;
            color: #333;
        }

        .pp {
            background-color: #ffffff;
            border-radius: 10px;
            padding: 15px;
            border: 1px solid #ccc;
            margin-top: 10px;
        }

        /* Clearfix */
        .clearfix::after {
            content: "";
            display: table;
            clear: both;
        }
        .rounded-circle {
            border-radius: 10%!important;
        }
    </style>

</head>
<body>
<nav class="gtco-nav" role="navigation">
    <div class="gtco-container">
        <div class="row"  style="display: block">
            <jsp:include page="/WEB-INF/layouts/nav.jsp"/>
        </div>
    </div>
</nav>
<br><br><br><br><br><br><br>
<div class="container-cn">
    <div class="header bg-dark text-white">
        <h1 style="color: #FFFFFF;font-family: Kanit">${alumni_detail.prefix}${alumni_detail.firstname} ${alumni_detail.lastname}</h1>
    </div>

    <div class="content2 mt-4">
        <h3 class="card-text" style="font-weight: bold"><i class="fas fa-user me-2"></i> ข้อมูลส่วนตัว</h3>
        <p class="card-text"><strong>รหัสนักศึกษา :</strong> ${alumni_detail.id}</p>
        <p class="card-text"><strong>ไอทีรุ่นที่ :</strong> ${alumni_detail.generation}</p>
        <p class="card-text"><strong>ปีที่จบการศึกษา :</strong> ${alumni_detail.graduationyear}</p>
        <p class="card-text"><i class="fas fa-phone-alt me-2"></i> <strong>เบอร์โทร :</strong> ${alumni_detail.phone}</p>
        <p class="card-text"><i class="fas fa-user-tie me-2"></i> <strong>ตำแหน่ง :</strong> ${alumni_detail.position}</p>
        <p class="card-text"><i class="fas fa-building me-2"></i> <strong>บริษัท :</strong> ${alumni_detail.company}</p>
        <p class="card-text"><i class="fas fa-envelope me-2"></i> <strong>อีเมล :</strong> ${alumni_detail.email}</p>

    </div>

    <div class="profile-picture mt-4">
        <img src="${pageContext.request.contextPath}/assets/image/alumni/${alumni_detail.image}" alt="Profile Image" class="img-fluid rounded-circle">
    </div>
    <br>
    <!-- Clearfix -->
    <div class="clearfix"></div>

    <div id="secondary" class="mt-4">
        <div class="p1 bg-dark text-white"><b class="ff">ความชำนาญ</b></div>
        <div class="pp">
            <p class="p2">${alumni_detail.expertise}</p>
        </div>
        <br>
        <div class="p1 bg-dark text-white mt-4"><b class="ff">ผลงาน</b></div>
        <div class="pp">
            <p class="p2">${alumni_detail.award}</p>
        </div>
    </div>
</div>

<!-- เพิ่มลิงก์ JavaScript ของ Bootstrap หลังจาก jQuery -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.5.0/dist/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
<footer style="margin-top: 100px">
    <jsp:include page="/WEB-INF/layouts/footer.jsp"/>
</footer>
</html>