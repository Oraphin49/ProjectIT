<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${alumni_detail.id}</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/nav-gtco.css">
    <!-- เพิ่มลิงก์ CSS ของ Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.5.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">
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

        .container {
            max-width: 900px;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .header {
            background-color:  #ff4b4b;
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
            width: 215px;
            height: 250px;
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
<div class="container">
    <div class="header bg-dark text-white">
        <h1>${alumni_detail.firstname} ${alumni_detail.lastname}</h1>
    </div>

    <div class="content2 mt-4">
        <h3 class="card-text">ข้อมูลส่วนตัว</h3>
        <p class="card-text"><strong>รหัสนักศึกษา :</strong> ${alumni_detail.id}</p>
        <p class="card-text"><strong>ปีที่จบการศึกษา :</strong> ${alumni_detail.graduationyear}</p>
        <p class="card-text"><img src="${pageContext.request.contextPath}/assets/image/telephone-call%20(1).png" width="20px" class="me-2"> <strong>เบอร์โทร :</strong> ${alumni_detail.phone}</p>
        <p class="card-text"><img src="${pageContext.request.contextPath}/assets/image/employee%20(1).png" width="20px" class="me-2"> <strong>ตำแหน่ง :</strong> ${alumni_detail.position}</p>
        <p class="card-text"><img src="${pageContext.request.contextPath}/assets/image/office-building%20(1).png" width="20px" class="me-2"> <strong>บริษัท :</strong> ${alumni_detail.company}</p>
        <p class="card-text"><img src="${pageContext.request.contextPath}/assets/image/email%20(2).png" width="20px" class="me-2"> <strong>อีเมล :</strong> ${alumni_detail.email}</p>
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
</body>
<br>
<footer>
    <jsp:include page="/WEB-INF/layouts/footer.jsp"/>
</footer>
</html>
