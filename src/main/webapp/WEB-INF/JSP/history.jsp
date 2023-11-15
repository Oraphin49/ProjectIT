<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>ประวัติความเป็นมา</title>
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

    <!-- The compiled CSS file -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/history/css/production.css">

    <!-- Additional styles for a more elegant look -->
    <style>
        body {
            font-family: 'Kanit', sans-serif;
            background-color: #f8f9fa; /* Light gray background color */
        }


        section {
            background-color: #fff; /* White background color for sections */
            padding: 30px;
            margin-top: 20px;
            border-radius: 10px; /* Rounded corners for sections */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Box shadow for sections */
        }

    </style>
</head>
<body class="has-animations">
<nav class="gtco-nav" role="navigation">
    <div class="gtco-container">
        <div class="row">
            <jsp:include page="/WEB-INF/JSP/check.jsp"/>
        </div>
    </div>
</nav>
<br><br><br>
<!-- Header -->
<header class="pt2 pb1 align--center">
    <div class="container">
        <p style="font-family: Kanit;color: #aa1919;font-size: 25px">Welcome to...</p>
        <br>
        <h1 style="font-family: Kanit; color: #aa1919">Information Technology</h1>
    </div>
</header>
<div class="container">

    <!-- Info -->
    <section class="grid-row grid-row--center">
        <!-- Cabin -->
        <div class="grid-column span-half pt3 pb3 mobile-m order-1 reveal-on-scroll is-revealing">
            <div class="relative">
                <img class="info-image relative z2" src="${pageContext.request.contextPath}/assets/image/tk.jpg" alt="Cabin">
                <div class="pattern pattern--left-down absolute z1"></div>
            </div>
        </div>
        <div class="grid-column span-half pt3 pb3 mobile-m order-2">
            <h3 style="font-family: Kanit">เกี่ยวกับสาขา</h3>
            <p style="font-size:14px;font-family: Kanit;color: #111111"> สาขาวิชาฯ เริ่มเปิดดำเนินการมาตั้งแต่ปี 2545 โดยระบบการเรียนการสอนของสาขาวิชาฯ เน้นด้านการพัฒนาโปรแกรมเป็นหลักดังนั้นจึงจำเป็นต้องใช้ทักษะ
                ทางด้านคณิตศาสตร์และแนวคิดในการวางแผนอย่างเป็นระบบ นอกจากนั้นสาขาวิชาฯ ยังให้ความสำคัญกับเทคโนโลยีใหม่ๆที่ใช้ในกระบวนการพัฒนาระบบอาทิ
                การโปรแกรมเชิงวัตถุ การพัฒนาโปรแกรมบนอุปกรณ์เคลื่อนที่ การวิเคราะห์และการออกแบระบบเชิงวัตถ ตลอดจนการทดสอบระบบด้วยเครื่องมืออันที่ทันสมัย
                โดยมีเป้าหมายในการผลิตบัณฑิต เพื่อตอบสนองต่อความต้องการของตลาดเป็นอันดับแรก ดังนั้นบัณฑิตของสาขาวิชาฯต้องมีทักษะด้านปฏิบัติเป็นสำคัญส่งผลให้สาขาวิชาฯ
                เป็นหนึ่งในจำนวนสาขาที่ประสบความสำเร็จสูงสุด ในแง่การผลิตบัณฑิตที่มีจำนวนผู้ได้งานและรายได้ต่อหัวสูงสุดของมหาวิทยาลัยแม่โจ้ นับตั้งแต่รุ่นแรกจนถึงปัจจุบัน
                *การเรียนการสอนของสาขาวิชาเทคโนโลยีสารสนเทศ ไม่เน้นที่การออกแบบ Graphic
                การสร้างภาพเคลื่อนไหวและมัลติมีเดียเช่นเดียวกับสาขาเทคโนโลยีสารสนเทศของสถาบันอื่นๆ *</p>
        </div>
        <!-- Teepees -->
        <div class="grid-column span-half pt3 pb3 mobile-m order-4" >
            <h3 style="font-family: Kanit">ปรัชญาการศึกษาของหลักสูตร</h3>
            <p style="font-size: 16px;font-family: Kanit;color: #111111">ผลิตบัณฑิตที่มีความรู้ ความสามารถ และทักษะการเรียนรู้ตลอดชีวิตในการปฏิบัติงานทางด้านเทคโนโลยีให้สามารถออกแบบ พัฒนา และ ทดสอบซอฟต์แวร์ ที่สนับสนุนการใช้งานในองค์กร
                และสามารถนำความรู้ ไปประยุกต์ใช้ได้อย่างเหมาะสมอีกทั้งยังมีความสามารถในการสื่อสารและทำงานเป็นทีมโดยมีจรรยาบรรณในวิชาชีพด้านเทคโนโลยีสารสนเทศ”</p>
        </div>
        <div class="grid-column span-half pt3 pb3 mobile-m order-3 reveal-on-scroll is-revealing">
            <div class="relative">
                <img class="info-image relative z2" src="${pageContext.request.contextPath}/assets/image/news1.jpg" alt="Teepee">
                <div class="pattern pattern--right-middle absolute z1"></div>
            </div>
        </div>
        <!-- Fishing -->
        <div class="grid-column span-half pt3 pb3 mobile-m order-5 reveal-on-scroll is-revealing">
            <div class="relative">
                <img class="info-image relative z2" src="${pageContext.request.contextPath}/assets/image/IMGNP.JPG" alt="Fishing">
                <div class="pattern pattern--left-up absolute z1"></div>
            </div>
        </div>
        <div class="grid-column span-half pt3 pb3 mobile-m order-6">
            <h3 style="font-family: Kanit">วัตถุประสงค์ของหลักสูตร</h3>
            <p style="font-family: Kanit;font-size: 16px;color: #111111">1. เพื่อผลิตบัณฑิตให้มีความรู้ความสามารถในการปฏิบัติงานทางด้านเทคโนโลยี ให้สามารถออกแบบพัฒนา
                และทดสอบซอฟต์แวร์ ที่สนับสนุนการใช้งานในองค์กร และสามารถนำความรู้ไปประยุกต์ใช้ได้อย่างเหมาะสม<br>
                2. เพื่อผลิตบัณฑิตให้มีความเข้าใจและประยุกต์ใช้ในกระบวนการพัฒนาระบบสารสนเทศและมีความสามารถในการสื่อสาร
                ทำงานเป็นทีมได้ เป็นผู้ที่มีความเข้าใจด้านสังคม องค์กรและคุณธรรมจริยธรรมในวิชาชีพด้านเทคโนโลยีสารสนเทศ<br>
                3. เพื่อผลิตบัณฑิตให้มีความสามารถในการจัดการปัญหาและการเรียนรู้ศาสตร์ใหม่ได้ด้วยตนเองโดยใช้เทคโนโลยี
                สารสนเทศสำหรับการเรียนรู้</p>
        </div>
    </section>

</div>

<!-- Scroll reveal -->
<script src="https://unpkg.com/scrollreveal@4.0.0/dist/scrollreveal.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://unpkg.com/scrollreveal@4.0.0/dist/scrollreveal.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/css/history/js/production.js"></script>
</body>
<footer>
    <jsp:include page="/WEB-INF/layouts/footer.jsp"/>
</footer>
</html>
