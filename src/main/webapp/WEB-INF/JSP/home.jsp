<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="${pageContext.request.contextPath}/assets/css/home/lib/animate/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/home/lib/owlcarousel/assets/owl.carousel.min.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/home/lib/lightbox/css/lightbox.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="${pageContext.request.contextPath}/assets/css/home/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="${pageContext.request.contextPath}/assets/css/home/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/nav-gtco.css" rel="stylesheet">

    <style>

        .g-5, .gx-5 {
            --bs-gutter-x: 5rem;
        }

        .equal-height-card .gtco-text {
            padding: 10px;
        }

        #visitorCount {
            font-size: 24px;
            color: #007BFF;
            font-weight: bold;
            padding: 10px 20px; /* เพิ่มกรอบด้วยการกำหนด padding */
            border: 2px solid #007BFF; /* เพิ่มกรอบด้วยการกำหนด border */
            border-radius: 10px; /* เพิ่มขอบมนวังกลม */
        }

        .equal-height-card {
            display: flex;
            flex-direction: column;
            height: 100%;
            border: 1px solid #ccc;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .equal-height-card img {
            max-width: 100%;
            height: auto;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
        }

        .equal-height-card .gtco-text {
            padding: 20px; /* เพิ่มขอบเขตในกรอบ */
        }

        .equal-height-card:hover {
            transform: scale(1.05);
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
        }

        .btn.btn-primary,
        .btn.btn-secondary {
            color: #FFFFFF;
            background-color: rgb(170, 24, 24);
            border-color: #aa1818;
            transition: background-color 0.3s ease;
        }

        .btn.btn-primary:hover,
        .btn.btn-secondary:hover {
            color: #ffffff;
            background-color: #670c0c;
        }

        .bg-primary {
            background-color: #17a2b8 !important;
        }

        a {
            text-decoration: none;
        }
        .card-text{
            color: #111111;
            font-family: Kanit;
            font-size: 20px;
            margin-left: 15%;
        }
    </style>
</head>

<body>
<!-- Spinner Start -->
<div id="spinner"
     class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
    <div class="spinner-grow text-primary" style="width: 3rem; height: 3rem;" role="status">
        <span class="sr-only">Loading...</span>
    </div>
</div>
<!-- Navbar Start -->
<nav class="gtco-nav" role="navigation">
    <div class="gtco-container">
        <div class="row">
            <jsp:include page="/WEB-INF/JSP/check.jsp"/>
        </div>
    </div>
</nav>
<!-- Carousel Start -->
<div class="container-fluid p-0 pb-5" style="margin-top: 46px;">
    <div class="owl-carousel header-carousel position-relative">
        <div class="owl-carousel-item position-relative" style="margin-top: 68px">
            <img class="img-fluid" src="${pageContext.request.contextPath}/assets/image/banners.png">
        </div>
        <div class="owl-carousel-item position-relative" style="margin-top: 68px">
          <a href="https://admissions.mju.ac.th/www/"><img class="img-fluid" src="${pageContext.request.contextPath}/assets/image/Ban1.png" target="_blank"></a>
        </div>
        <%--        <div class="owl-carousel-item position-relative" style="margin-top: 68px">--%>
        <%--            <img class="img-fluid" src="${pageContext.request.contextPath}/assets/image/BannerITSCI.png">--%>
        <%--        </div>--%>
    </div>
</div>
<!-- Carousel End -->

<!--start -->
<div class="container-xxl py-5" style="width: 100%">
    <div class="container">
        <div class="row g-5">
            <div class="col-md-6 col-lg-3 wow fadeIn" data-wow-delay="0.5s" style="background-color: #6cccde;">
                <a href="${pageContext.request.contextPath}/course" style=" text-decoration: none;">
                    <div class="d-flex align-items-center justify-content-between mb-2" style="margin-top: 10px;">
                        <div class="d-flex align-items-center justify-content-center"
                             style="width: 60px; height: 60px; background-color: transparent;">
                            <i class="fa fa-book fa-2x" style="color: #000;"></i> <!-- เปลี่ยนสีไอคอนเป็นสีดำ -->
                        </div>
                        <h6 style="font-family: Kanit; font-weight: bold">หลักสูตร 4 ปี 120 หน่วยกิต</h6>
                    </div>
                    <h5 style="font-family: Kanit">ข้อมูลหลักสูตร วท.บ. เทคโนโลยีสารสนเทศ</h5>
                </a>
            </div>
            <div class="col-md-6 col-lg-3 wow fadeIn" data-wow-delay="0.1s" style="background-color:  #ffcd05;">
                <a href="${pageContext.request.contextPath}/alumni/list_alumni" style=" text-decoration: none;">
                    <div class= "d-flex align-items-center justify-content-between mb-2" style="margin-top: 10px;">
                    <div class="d-flex align-items-center justify-content-center "
                         style="width: 60px; height: 60px; background-color: transparent;">
                        <i class="fa fa-graduation-cap fa-2x" style="color: #000;"></i> <!-- เปลี่ยนสีไอคอนเป็นสีดำ -->
                    </div>
                    <h6 style="font-family: Kanit;font-weight: bold">ร้อยละ 97 มีงานทำตรงสาย</h6>
            </div>
            <h5 style="font-family: Kanit">ดูข้อมูลศิษย์เก่า</h5>
            </a>
        </div>
        <div class="col-md-6 col-lg-3 wow fadeIn" data-wow-delay="0.3s" style="background-color: #91918a;">
            <a href="https://itsci.mju.ac.th/ITCAMP/" style=" text-decoration: none;" target="_blank">
                <div class="d-flex align-items-center justify-content-between mb-2" style="margin-top: 10px;">
                    <div class="d-flex align-items-center justify-content-center "
                         style="width: 60px; height: 60px;background-color: transparent;">
                        <i class="fa fa-tasks fa-2x" style="color: #000;"></i> <!-- เปลี่ยนสีไอคอนเป็นสีดำ -->
                    </div>
                    <h6 style="font-family: Kanit; color: #FFFFFF;font-weight: bold"> สำหรับน้อง ๆ ม.ปลาย และปวช.</h6>
                </div>
                <h5 style="font-family: Kanit; color: #FFFFFF">สมัครค่าย ITCAMP</h5>
            </a>
        </div>
        <div class="col-md-6 col-lg-3 wow fadeIn" data-wow-delay="0.7s" style="background-color:  #cc3a27">
            <a href="${pageContext.request.contextPath}/personnel/list_personnel" style=" text-decoration: none;">
                <div class="d-flex align-items-center justify-content-between mb-2" style="margin-top: 10px;">
                    <div class="d-flex align-items-center justify-content-center "
                         style="width: 60px; height: 60px;background-color: transparent;">
                        <i class="fa fa-chalkboard-teacher fa-2x" style="color: #000;"></i> <!-- เปลี่ยนสีไอคอนเป็นสีดำ -->
                    </div>
                    <h6 style="font-family: Kanit; color: #FFFFFF;font-weight: bold"> 6 บุคลากรที่มีความเชี่ยวชาญ</h6>
                </div>
                <h5 style="font-family: Kanit;color: #FFFFFF">ดูข้อมูลบุคลากร</h5>
            </a>
        </div>
    </div>
</div>
</div>


<!-- Service Start -->
<!-- ในส่วน HTML -->
<div class="container-xxl py-5">
    <div class="container">
        <div class="section-title text-center">
            <h2 style="font-family: Kanit;font-weight: bold">ข่าวสารและกิจกรรม</h2>
        </div>
        <br>
        <div class="row g-4">
            <c:forEach var="news" items="${newsList}">
                <div class="col-md-6 col-lg-3">
                    <a href="${pageContext.request.contextPath}/news/${news.id}/view_news_detail"
                       class="gtco-card-item has-text equal-height-card animated fadeIn"
                       style=" text-decoration: none;">
                        <figure>
                            <div class="overlay"><i class="ti-plus"></i></div>
                            <img src="${pageContext.request.contextPath}/assets/image/news/${news.id}/${news.newsImage[0]}"
                                 alt="Image"
                                 class="img-responsive" style="  width: 100%;height: 250px;object-fit: cover;">
                        </figure>
                        <div class="gtco-text text-left">
                            <span class="bg-primary text-white p-1" style="font-family: Kanit;">${news.category}</span>
                            <br><br>
                            <h6 style="font-family: Kanit">${news.newsname}</h6>
                            <small class="gtco-category" style="font-family: Kanit;color: #111111"><fmt:formatDate
                                    value="${news.date}" pattern="dd MMM yyyy"/></small>
                            <small style="font-family: Kanit; color: #ab1212">ดูเพิ่มเติม...</small>
                        </div>
                    </a>
                </div>
            </c:forEach>
        </div>
        <br>
        <div align="center">
            <a href="${pageContext.request.contextPath}/news/list_news" class="btn btn-primary py-3 px-5"
               style="font-family: Kanit">ดูเพิ่มเติม</a>
        </div>
    </div>
</div>
<!-- Service End -->
<div class="container-fluid overflow-hidden my-5 px-lg-0" style="width: 95%;">
    <div class="container about px-lg-0">
        <div class="row g-0 mx-lg-0" style="background-color: #fff2cb; border-radius: 20px">
            <div style="float: left; width: 50%;">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3774.7906482501267!2d99.01053601531153!3d18.896366462503607!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30da3cb54b7f9f2b%3A0xbed41f24ed04a2ca!2z4Lit4Liy4LiE4Liy4Lij4LmA4Liq4Liy4Lin4Lij4Lix4LiIIOC4meC4tOC4leC4ouC4p-C4o-C4o-C4mOC4meC4sCDguKHguKvguLLguKfguLTguJfguKLguLLguKXguLHguKLguYHguKHguYjguYLguIjguYk!5e0!3m2!1sth!2sth!4v1619566633232!5m2!1sth!2sth" width="100%" height="300" style="border: 0;" allowfullscreen=""></iframe>
            </div>
            <div class="con" style="float: right; width: 50%; margin-top: 5%;" >
                <p class="card-text">
                    <img src="${pageContext.request.contextPath}/assets/image/office-building%20(1).png" width="20px">
                    หลักสูตรวิทยาศาสตรบัณฑิต สาขาวิชาเทคโนโลยีสารสนเทศ<br>
                    คณะวิทยาศาสตร์ มหาวิทยาลัยแม่โจ้ <br>
                    63 หมู่ 4 ตำบลหนองหาร อำเภาสันทราย จังหวัดเชียงใหม่ 50290
                </p>
                <p class="card-text"><img src="${pageContext.request.contextPath}/assets/image/telephone-call%20(1).png" width="20px"> เบอร์โทร: 053-873900</p>
                <p class="card-text"><img src="${pageContext.request.contextPath}/assets/image/email%20(2).png" width="20px"> อีเมล: itscimju2545@gmail.com</p>
            </div>
        </div>
    </div>
</div>
<!-- About End -->
<div align="center">
    <div style="margin-top: 50px; font-weight: bold;font-family: Kanit">ยอดผู้เข้าชมเว็บไซต์: <span id="visitorCount">0</span>
    </div>
</div>
<br>

<!-- Back to Top -->
<a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-0 back-to-top"><i class="bi bi-arrow-up"></i></a>


<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/css/home/lib/wow/wow.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/css/home/lib/easing/easing.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/css/home/lib/waypoints/waypoints.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/css/home/lib/counterup/counterup.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/css/home/lib/owlcarousel/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/css/home/lib/isotope/isotope.pkgd.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/css/home/lib/lightbox/js/lightbox.min.js"></script>

<!-- Template Javascript -->
<script src="${pageContext.request.contextPath}/assets/css/home/js/main.js"></script>

<script>
    var visitorCount = 0; // เริ่มต้นยอดผู้เข้าชมที่ 0

    // ตรวจสอบว่ามีข้อมูลยอดผู้เข้าชมใน localStorage หรือไม่
    if (localStorage.getItem('visitorCount')) {
        // ถ้ามีข้อมูลแล้ว ดึงข้อมูลมาแสดง
        visitorCount = parseInt(localStorage.getItem('visitorCount'));
    } else {
        // ถ้ายังไม่มีข้อมูล ให้เริ่มต้นที่ 0
        localStorage.setItem('visitorCount', visitorCount);
    }

    // เพิ่มค่าของยอดผู้เข้าชม
    visitorCount++;
    // อัพเดทข้อมูลใน localStorage
    localStorage.setItem('visitorCount', visitorCount);

    // แสดงยอดผู้เข้าชมใน HTML
    document.getElementById('visitorCount').textContent = visitorCount; // หรือ
    // document.querySelector('.visitor-count').textContent = visitorCount;
</script>
</body>
<footer>
    <jsp:include page="/WEB-INF/layouts/footer.jsp"/>
</footer>
</html>