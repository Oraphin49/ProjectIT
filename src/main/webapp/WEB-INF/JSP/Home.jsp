<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Information Technology</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Free HTML5 Website Template by gettemplates.co"/>
    <meta name="keywords"
          content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive"/>
    <meta name="author" content="gettemplates.co"/>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">

    <!-- <link href="https://fonts.googleapis.com/css?family=Droid+Sans" rel="stylesheet"> -->

    <!-- Animate.css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/home/animate.css">
    <!-- Icomoon Icon Fonts-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/home/icomoon.css">
    <!-- Themify Icons-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/home/themify-icons.css">
    <!-- Bootstrap  -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/home/bootstrap.css">
    <!-- Magnific Popup -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/home/magnific-popup.css">
    <!-- Owl Carousel  -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/home/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/home/owl.theme.default.min.css">
    <!-- Flexslider -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/home/flexslider.css">
    <!-- Theme style  -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/home/style.css">

    <!-- Modernizr JS -->
    <script src="${pageContext.request.contextPath}/assets/js/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
    <script src="${pageContext.request.contextPath}/assets/js/respond.min.js"></script>
    <![endif]-->
    <style>
        #gtco-hero .flexslider .slider-text {
            display: table;
            opacity: 0;
            min-height: 700px;
            width: 95%;
        }

        .col-md-offset-1 {
            margin-left: 3%;
        }

        *, ::after, ::before {
            box-sizing: border-box;
        }

        .equal-height-card {
            height: 300px; /* ปรับความสูงตามที่คุณต้องการ */
        }

        .equal-height-card img {
            max-width: 100%;
            height: auto;
        }

        .content {
            opacity: 0; /* ตั้งค่าความโปร่งใสเริ่มต้นเป็น 0 */
            transition: opacity 1s ease-in-out; /* เพิ่ม CSS transition เพื่อให้เกิดอนิเมชัน */
        }

        .content.loaded {
            opacity: 1; /* เมื่อคลาส "loaded" ถูกเพิ่มเข้ามา, กำหนดความโปร่งใสเป็น 1 */
        }

        #team_grid {
            opacity: 0;
            transform: translateY(20px); /* ขยับลงด้านล่างเล็กน้อย */
            transition: opacity 1s ease-in-out, transform 1s ease-in-out;
        }

    </style>
</head>
<body>

<nav class="gtco-nav" role="navigation">
    <div class="gtco-container">
        <div class="row">
            <jsp:include page="/WEB-INF/JSP/check.jsp"/>
        </div>
    </div>
</nav>
<div class="content">
    <div id="gtco-hero" class="js-fullheight" data-section="home">
        <div class="flexslider js-fullheight" style="height: 300px; " align="CENYER">
            <ul class="slides">
                <li>
                    <div class="overlay"></div>
                    <div class="container">
                        <div class="col-md-10 col-md-offset-1 text-center js-fullheight slider-text">
                            <div class="slider-text-inner">
                                <p><a href="" target="_blank"><img
                                        src="${pageContext.request.contextPath}/assets/image/BannerITSCI.png"
                                        width="500%"></a></p>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="overlay"></div>
                    <div class="container">
                        <div class="col-md-10 col-md-offset-1 text-center js-fullheight slider-text">
                            <div class="slider-text-inner">

                                <p><a href=""><img src="${pageContext.request.contextPath}/assets/image/banner2.png"
                                                   width="500%"></a></p>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="overlay"></div>
                    <div class="container">
                        <div class="col-md-10 col-md-offset-1 text-center js-fullheight slider-text">
                            <div class="slider-text-inner">

                                <p><a href="#"><img src="${pageContext.request.contextPath}/assets/image/banner3.png"
                                                    width="500%"></a></p>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>

    <div class="gtco-section-overflow" style="margin-top: 0px; ">

        <div class="gtco-section" id="gtco-services" data-section="services">
            <div class="gtco-container" align="center">
                <div class="row">
                    <div class="col-md-6">
                        <div id="team_grid">
                            <div class="row">
                                <style>
                                    .custom-col {
                                        display: inline-block;
                                        vertical-align: top;
                                        width: 15%;
                                        padding: 10px;
                                        text-align: center;
                                        margin: 0;
                                    }

                                    /* กำหนดสไตล์เมื่อโฮเวอร์ไปที่รูปภาพ */
                                    .custom-col img:hover {
                                        transform: scale(1.1); /* เพิ่มขนาดเมื่อโฮเวอร์ */
                                        box-shadow: 2px 0px 10px rgba(0, 0, 0, .2); /* เพิ่มเงา */
                                    }

                                    .custom-col img {
                                        max-width: 100%;
                                        height: auto;
                                        border-radius: 50%;
                                        transform: scale(1); /* กำหนดค่าเริ่มต้นให้ขนาดเท่าเดิม */
                                        transition: transform 0.3s ease-in-out;
                                    }
                                </style>


                                <div class="col-1 custom-col">
                                    <picture id="wb_Picture1" style="display:block;width:100%;height:193px;z-index:12">
                                        <a href="${pageContext.request.contextPath}/alumni/list_alumni"> <img
                                                src="${pageContext.request.contextPath}/assets/image/IMGNP.JPG"
                                                id="Picture1" alt="" title="Bachelor&apos;s degree" width="196"
                                                height="193"></a>
                                    </picture>
                                    <br>
                                    <div id="wb_Name1" style="display:inline-block;width:100%;z-index:13;">
                                        <h3 id="Name1">ศิษย์เก่า</h3>
                                    </div>
                                </div>
                                <div class="col-2 custom-col">
                                    <picture id="wb_Picture2" style="display:block;width:100%;height:194px;z-index:15">
                                        <a href="${pageContext.request.contextPath}/personnel/list_personnel"> <img
                                                src="${pageContext.request.contextPath}/assets/image/employee%20(1).png"
                                                id="Picture2" alt="" title="Master degree" width="194" height="194"></a>
                                    </picture>
                                    <br>
                                    <div id="wb_Name2" style="display:inline-block;width:100%;z-index:16;">
                                        <h3 id="Name2">บุคลากร</h3>
                                    </div>
                                </div>
                                <div class="col-3 custom-col">
                                    <picture id="wb_Picture3" style="display:block;width:100%;height:192px;z-index:18">
                                        <a href="${pageContext.request.contextPath}/plan"><img
                                                src="${pageContext.request.contextPath}/assets/image/IMGF.JPG"
                                                id="Picture3" alt="" title="Doctoral degree" width="194"
                                                height="192"></a>
                                    </picture>
                                    <br>
                                    <div id="wb_Name3" style="display:inline-block;width:100%;z-index:19;">
                                        <h3 id="Name3">แผนการเรียน</h3>
                                    </div>
                                </div>
                                <div class="col-4 custom-col">
                                    <picture id="wb_Picture4" style="display:block;width:100%;height:192px;z-index:21">
                                        <a href="${pageContext.request.contextPath}/course"> <img
                                                src="${pageContext.request.contextPath}/assets/image/IMGK.JPG"
                                                id="Picture4" alt="" title="International Program" width="194"
                                                height="193"></a>
                                    </picture>
                                    <br>
                                    <div id="wb_Name4" style="display:inline-block;width:100%;z-index:22;">
                                        <h3 id="Name4">ข้อมูลหลักสูตร</h3>
                                    </div>
                                </div>
                                <div class="col-5 custom-col">
                                    <picture id="wb_Picture5" style="display:block;width:100%;height:192px;z-index:21">
                                        <a href="${pageContext.request.contextPath}/course"> <img
                                                src="${pageContext.request.contextPath}/assets/image/IMGB.JPG"
                                                id="Picture5" alt="" title="International Program" width="194"
                                                height="193"></a>
                                    </picture>
                                    <br>
                                    <div id="wb_Name5" style="display:inline-block;width:100%;z-index:22;">
                                        <h3 id="Name5">ค่ายไอทีแคมป์</h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div id="gtco-blog" data-section="blog">
                <div class="gtco-container">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2 text-center gtco-heading">
                            <h2 style="color: #a41212">ข่าวสารและกิจกรรม</h2>
                        </div>
                    </div>
                    <div class="row">
                        <c:forEach var="news" items="${newsList}">
                            <div class="col-md-4">
                                <a href="${pageContext.request.contextPath}/news/${news.id}/view_news_detail"
                                   class="gtco-card-item has-text equal-height-card">
                                    <figure>
                                        <div class="overlay"><i class="ti-plus"></i></div>
                                        <img src="${pageContext.request.contextPath}/assets/image/news11.jpg"
                                             alt="Image" class="img-responsive">
                                    </figure>
                                    <div class="gtco-text text-left">
                                        <h4>${news.newsname}</h4>
                                        <p class="gtco-category">${news.date}, ${news.category}</p>
                                    </div>
                                </a>
                            </div>
                        </c:forEach>
                    </div>
                    <a href="${pageContext.request.contextPath}/news/list_news"><input type="submit" value="ดูเพิ่มเติม"
                                                                                       style="margin-top: 40px; margin-left: 50%; color: #000; padding: 5px;"></a>
                </div>
            </div>

            <div id="gtco-subscribe">
                <div><img src="${pageContext.request.contextPath}/assets/image/nn.jpg" width="550px"
                          style="margin-left: 40px; margin-top: -78px;"></div>
                <div style="float: right;margin-right: 130px; margin-top: -255px; ">
                    <h3>สาขาวิชาเทคโนโลยีสารสนเทศ<br>
                        เปิดรับสมัครเข้าศึกษาต่อ ประจำปีการศึกษา 2566</h3>
                    <p style="color: #000">รับผู้กำลังศึกษา หรือสำเร็จการศึกษา<br>
                        -ม.6 ทุกแผนการเรียน<br>
                        -ปวช. ประเภทวิชาอุตสาหกรรม วิชสช่างอิเล็กทรอนิกส์ วิชาพานิชยกรรม<br>
                        วิชาคอมพิวเตอร์คอมพิวเตอร์ธุรกิจ สาขาวิชาที่เกี่ยวข้อง<br>
                        หรืออยู่ในดุลยพินิจของอาจารย์ผู้รับผิดชอบหลักสูตร</p>
                    <a href="https://admissions.mju.ac.th/www/Search.aspx"><input type="submit" value="รายละเอียด"
                                                                                  style=" margin-left: 60%; margin-top: -10px;  width:180px ; border-radius: 20px; color: #fff; padding: 5px; background-color: #CD3333;"></a>
                </div>
            </div>

            <%--            <div id="gtco-products" data-section="products" >--%>
            <%--                <div class="gtco-container">--%>
            <%--                    <div class="row">--%>
            <%--                        <div class="col-md-8 col-md-offset-2 text-center gtco-heading">--%>
            <%--                            <h2 style="font-size: 30px; color: #E75d5d;" >ความสำเร็จของศิษย์เก่า</h2>--%>
            <%--                        </div>--%>
            <%--                    </div>--%>
            <%--                    <div class="row" align="center">--%>
            <%--                        <div class="owl-carousel owl-carousel-carousel" >--%>
            <%--                            <div class="item" style="width: 300px">--%>
            <%--                                <img src="${pageContext.request.contextPath}/assets/image/Pim.jpg" style="width: 250px">--%>
            <%--                            </div>--%>
            <%--                            <div class="item">--%>
            <%--                                <img src="${pageContext.request.contextPath}/assets/image/Yok.jpg" style="width: 250px" >--%>
            <%--                            </div>--%>
            <%--                            <div class="item">--%>
            <%--                                <img src="${pageContext.request.contextPath}/assets/image/Pim.jpg" style="width: 250px" >--%>
            <%--                            </div>--%>
            <%--                            <div class="item">--%>
            <%--                                <img src="${pageContext.request.contextPath}/assets/image/Nice.jpg" style="width: 250px" >--%>
            <%--                            </div>--%>
            <%--                        </div>--%>
            <%--                    </div>--%>
            <%--                </div>--%>
            <%--                <a href="${pageContext.request.contextPath}/alumni/list_alumni"><input type="submit" value="ดูเพิ่มเติม" style="margin-top: 50px; margin-left: 50%; color: #000; padding: 5px;" ></a>--%>
            <%--            </div>--%>

            <div class="gtco-section-overflow">
                <div id="gtco-counter" class="gtco-section">
                    <div class="gtco-container">

                        <div class="row">
                            <div class="col-md-8 col-md-offset-2 text-center gtco-heading">
                                <h2 style="font-size: 30px; color: #E75d5d;">สถิติสะสมของสาขาวิชา</h2>
                            </div>
                        </div>

                        <div class="row" style="margin-left: 220px; margin-top: 0px;">
                            <div class="col-md-3 col-sm-6 animate-box" data-animate-effect="fadeInLeft">
                                <div class="feature-center">
        <span class="icon">
            <i class="ti-face-smile"></i>
        </span>
                                    <span id="visitorCount" class="counter js-counter" data-from="0" data-speed="5000"
                                          data-refresh-interval="50">0</span>
                                    <span class="counter-label">จำนวนผู้เข้าชม</span>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6 animate-box" data-animate-effect="fadeInLeft">
                                <div class="feature-center">
									<span class="icon">
										<i class="ti-briefcase"></i>
									</span>
                                    <span class="counter js-counter" data-from="0" data-to="200" data-speed="5000"
                                          data-refresh-interval="50">1</span>
                                    <span class="counter-label">ทำงานตรงสาขา</span>

                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6 animate-box" data-animate-effect="fadeInLeft">
                                <div class="feature-center">
									<span class="icon">
										<i class="ti-time"></i>
									</span>
                                    <span class="counter js-counter" data-from="0" data-to="550" data-speed="5000"
                                          data-refresh-interval="50">1</span>
                                    <span class="counter-label">นักศึกษาปัจจุบัน</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <!-- jQuery -->
            <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
            <!-- jQuery Easing -->
            <script src="${pageContext.request.contextPath}/assets/js/jquery.easing.1.3.js"></script>
            <!-- Bootstrap -->
            <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
            <!-- Waypoints -->
            <script src="${pageContext.request.contextPath}/assets/js/jquery.waypoints.min.js"></script>
            <!-- Carousel -->
            <script src="${pageContext.request.contextPath}/assets/js/owl.carousel.min.js"></script>
            <!-- countTo -->
            <script src="${pageContext.request.contextPath}/assets/js/jquery.countTo.js"></script>
            <!-- Flexslider -->
            <script src="${pageContext.request.contextPath}/assets/js/jquery.flexslider-min.js"></script>
            <!-- Magnific Popup -->
            <script src="${pageContext.request.contextPath}/assets/js/jquery.magnific-popup.min.js"></script>
            <script src="${pageContext.request.contextPath}/assets/js/magnific-popup-options.js"></script>
            <!-- Main -->
            <script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
            <jsp:include page="/WEB-INF/layouts/footer.jsp"/>
</body>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        // เมื่อหน้าเว็บโหลดเสร็จ
        setTimeout(function () {
            var content = document.querySelector('.content');
            content.classList.add('loaded'); // เพิ่มคลาส "loaded" เพื่อเริ่มอนิเมชัน
        }, 1000); // เริ่มอนิเมชันหลังจาก 1 วินาที
    });

</script>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        var teamGrid = document.getElementById('team_grid');
        var isTeamGridVisible = false;

        // สร้างฟังก์ชันเพื่อเรียกเมื่อเลื่อนหน้าเว็บ
        function checkTeamGridVisibility() {
            var windowHeight = window.innerHeight;
            var teamGridTop = teamGrid.getBoundingClientRect().top;

            // เมื่อเลื่อนเจอ team_grid และยังไม่เริ่มอนิเมชัน
            if (teamGridTop < windowHeight && !isTeamGridVisible) {
                isTeamGridVisible = true;
                teamGrid.style.opacity = '1';
                teamGrid.style.transform = 'translateY(0)';
            }
        }

        // เรียกใช้งานฟังก์ชันเมื่อหน้าเว็บโหลดเสร็จและเมื่อเลื่อนหน้าเว็บ
        setTimeout(function () {
            checkTeamGridVisibility();
            window.addEventListener('scroll', checkTeamGridVisibility);
        }, 1000); // เริ่มอนิเมชันหลังจาก 1 วินาทีหลังจากโหลดหน้าเว็บ
    });
</script>
<script>
    var visitorCount = 0; // เริ่มต้นจำนวนผู้เข้าชมที่ 0

    // อัพเดตแสดงจำนวนผู้เข้าชม
    function updateVisitorCount() {
        document.getElementById("visitorCount").textContent = visitorCount;
    }

    // เรียกใช้ฟังก์ชันเพิ่มจำนวนผู้เข้าชมเมื่อหน้าเว็บโหลดเสร็จ
    window.onload = function() {
        incrementVisitorCount();
    };

    // เพิ่มจำนวนผู้เข้าชม
    function incrementVisitorCount() {
        visitorCount++;
        updateVisitorCount(); // อัพเดตแสดงผล
    }
</script>

</html>


