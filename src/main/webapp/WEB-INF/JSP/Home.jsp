<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<br><br><br>
<!-- Carousel Start -->
<div class="container-fluid p-0 pb-5">
    <div class="owl-carousel header-carousel position-relative">
        <div class="owl-carousel-item position-relative" style="margin-top: 68px">
            <img class="img-fluid" src="${pageContext.request.contextPath}/assets/image/banner1.png">
        </div>
        <div class="owl-carousel-item position-relative" style="margin-top: 68px">
            <img class="img-fluid" src="${pageContext.request.contextPath}/assets/image/banner2.png">
        </div>
        <div class="owl-carousel-item position-relative" style="margin-top: 68px">
            <img class="img-fluid" src="${pageContext.request.contextPath}/assets/image/BannerITSCI.png">
        </div>
    </div>
</div>
<!-- Carousel End -->

<!--start -->
<div class="container-xxl py-5">
    <div class="container">
        <div class="row g-5">
            <div class="col-md-6 col-lg-3 wow fadeIn" data-wow-delay="0.1s" style="background-color: #8a2be27d;">
                <a href="${pageContext.request.contextPath}/alumni/list_alumni">
                    <div class="d-flex align-items-center justify-content-between mb-2">
                        <div class="d-flex align-items-center justify-content-center bg-light"
                             style="width: 60px; height: 60px;">
                            <i class="fa fa-user-check fa-2x text-primary"></i>
                        </div>
                        <h1 class="display-1 text-light mb-0">01</h1>
                    </div>
                    <h5 style="font-family: Kanit">ดูข้อมูลศิษย์เก่า</h5>
                </a>
            </div>
            <div class="col-md-6 col-lg-3 wow fadeIn" data-wow-delay="0.3s" style="background-color: #5f9ea08c;">
                <a href="https://itsci.mju.ac.th/ITCAMP/">
                    <div class="d-flex align-items-center justify-content-between mb-2">
                        <div class="d-flex align-items-center justify-content-center bg-light"
                             style="width: 60px; height: 60px;">
                            <i class="fa fa-cog fa-2x text-primary"></i>
                        </div>
                        <h1 class="display-1 text-light mb-0">02</h1>
                    </div>
                    <h5 style="font-family: Kanit">สมัครค่าย ITCamp</h5>
                </a>
            </div>
            <div class="col-md-6 col-lg-3 wow fadeIn" data-wow-delay="0.5s" style="background-color: #deb88787;">
                <a href="${pageContext.request.contextPath}/course">
                    <div class="d-flex align-items-center justify-content-between mb-2">
                        <div class="d-flex align-items-center justify-content-center bg-light"
                             style="width: 60px; height: 60px;">
                            <i class="fa fa-drafting-compass fa-2x text-primary"></i>
                        </div>
                        <h1 class="display-1 text-light mb-0">03</h1>
                    </div>
                    <h5
                            style="font-family: Kanit">ข้อมูลหลักสูตรปี60และปี65</h5>
                </a>
            </div>
            <div class="col-md-6 col-lg-3 wow fadeIn" data-wow-delay="0.7s" style="background-color: #ff7f50b3">
                <a href="${pageContext.request.contextPath}/personnel/list_personnel">
                    <div class="d-flex align-items-center justify-content-between mb-2">
                        <div class="d-flex align-items-center justify-content-center bg-light"
                             style="width: 60px; height: 60px;">
                            <i class="fa fa-users fa-2x text-primary"></i>
                        </div>
                        <h1 class="display-1 text-light mb-0">04</h1>
                    </div>
                    <h5 style="font-family: Kanit">ดูข้อมูลบุคลากร</h5>
                </a>
            </div>
        </div>
    </div>
</div>

<!-- Feature Start -->

<!-- About Start -->
<div class="container-fluid bg-light overflow-hidden my-5 px-lg-0">
    <div class="container about px-lg-0">
        <div class="row g-0 mx-lg-0" style="background-color: #d7d5d5;border-radius: 20px">
            <div class="col-lg-6 ps-lg-0" style="min-height: 400px;">
                <div class="position-relative h-100">
                    <img class="position-absolute img-fluid w-100 h-100"
                         src="${pageContext.request.contextPath}/assets/image/Poster1.png" style="object-fit: cover;">
                </div>
            </div>
            <div class="col-lg-6 about-text py-5 wow fadeIn" data-wow-delay="0.5s" >
                <div class="p-lg-5 pe-lg-0" style="margin-left: 50px">
                    <div class="section-title text-start">
                        <h2  style="font-family: Kanit">การรับสมัคร</h2>
                    </div><br>
                    <h5 style="font-family: Kanit">ศึกษาต่อในสาขาเทคโนโลสารสนเทศ คณะวิทยาศาสตร์ มหาวิทยาลัยแม่โจ้</h5>
                    <p class="mb-4 pb-2"><a href="https://admissions.mju.ac.th" style="font-family: Kanit">สมัครได้ที่
                        https://admissions.mju.ac.th</a></p>
                    <a href="https://sciencebase.mju.ac.th/tcas/d5.html"
                       class="btn btn-primary py-3 px-5">ดูเพิ่มเติม</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- About End -->


<!-- Service Start -->
<!-- ในส่วน HTML -->
<div class="container-xxl py-5">
    <div class="container">
        <div class="section-title text-center">
            <h2 style="font-family: Kanit">ข่าวสารและกิจกิรรม</h2>
        </div>
        <br>
        <div class="row g-4">
            <c:forEach var="news" items="${newsList}">
                <div class="col-md-6 col-lg-3">
                    <a href="${pageContext.request.contextPath}/news/${news.id}/view_news_detail"
                       class="gtco-card-item has-text equal-height-card animated fadeIn">
                        <figure>
                            <div class="overlay"><i class="ti-plus"></i></div>
                            <img src="${pageContext.request.contextPath}/assets/image/news11.jpg" alt="Image"
                                 class="img-responsive">
                        </figure>
                        <div class="gtco-text text-left" >
                            <span class="bg-primary text-white p-1" style="font-family: Kanit;">${news.category}</span>
                           <br><br>
                            <h6 style="font-family: Kanit">${news.newsname}</h6>
                            <p class="gtco-category" style="font-family: Kanit;color: #111111">${news.date}</p>
                            <p style="font-family: Kanit; color: #2f2f2f">ดูเพิ่มเติม...</p>
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
        <div align="center">
            <div style="margin-top: 50px; font-weight: bold">ยอดผู้เข้าชมเว็บไซต์: <span id="visitorCount">0</span></div>
        </div>
    </div>
</div>
<!-- Service End -->
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