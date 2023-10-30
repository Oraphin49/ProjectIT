<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>${personnel_detail.firstname} ${personnel_detail.lastname}</title>
    <link href="${pageContext.request.contextPath}/assets/css/view_personnel.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/nav-gtco.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    <meta name="description" content="Free HTML5 Website Template by gettemplates.co"/>
    <!-- Animate.css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/home/animate.css">
    <!-- Icomoon Icon Fonts-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/home/icomoon.css">
    <!-- Themify Icons-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/home/themify-icons.css">
    <!-- Bootstrap  -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/home/bootstrap.css">
    <!-- Theme style  -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/home/style.css">

    <!-- Modernizr JS -->
    <script src="${pageContext.request.contextPath}/assets/js/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
    <script src="${pageContext.request.contextPath}/assets/js/respond.min.js"></script>
    <![endif]-->
    <style>
        *, ::after, ::before {
            box-sizing: border-box;
        }


        body {
            background-color: #f0f0f0;
            font-family: 'Kanit', sans-serif;
        }

        p {
            color: #333;
            font-family: Kanit;
        }

        #name {
            color: #AA1818;
        }

        #about {
            background-color: #f0f0f0;
        }
        #profile{
            background-color: #fff;
            box-shadow: 0 3px 10px 0 rgba(0,0,0,.1);
            flex: 20%;
            display: block;
            position: relative;
            margin: 5% 2% 0 10%;
            width: 100%;
            height: 100%;
            padding: 15px;
        }
        .card{
            box-shadow: 0 3px 10px 0 rgba(0,0,0,.1);
            overflow-x: hidden;
            margin-bottom: 30px;
            padding: 15px 30px 30px 30px;
            background-color: #e3e3e3;
        }
    </style>
</head>
<body>
<nav class="gtco-nav" role="navigation">
    <div class="gtco-container">
        <div class="row" style="display: block">
            <jsp:include page="/WEB-INF/layouts/nav.jsp"/>
        </div>
    </div>
</nav>
<br>
<br>
<div id="container" style="margin-top: 75px">
    <div id="profile">
        <div id="image">
            <img style="width: 100%; height: 100%"
                 src="${pageContext.request.contextPath}/assets/image/personnel/${personnel_detail.image}">
        </div>
        <br>
        <p id="name"
           style="color: #000000">${personnel_detail.position} ${personnel_detail.firstname} ${personnel_detail.lastname}</p>
        <p id="designation"><br><span id="college"> ${personnel_detail.description}</span></p>
        <hr width="100%">
        <div id="about">
            <p style="display:inline; color: #a41212">ข้อมูล</p>
            <a href="#"><i class="fas fa-pen stroke-transparent-blue"></i></a>
        </div>
        <p id="year-graduation"><i
                class="fas fa-envelope stroke-transparent"></i>&nbsp;<strong>อีเมล:</strong><br> ${personnel_detail.email}<br>
        </p>
        <p id="more-about"><i class="fas fa-map-marker-alt stroke-transparent"></i>&nbsp;<strong>ที่อยู่</strong><br>หลักสูตรวิทยาศาสตรบัณฑิต
            สาขาวิชาเทคโนโลยีสารสนเทศ คณะวิทยาศาสตร์ มหาวิทยาลัยแม่โจ้ <br>63 หมู่ 4 ตำบลหนองหาร อำเภาสันทราย
            จังหวัดเชียงใหม่ 50290</p>
        <p id="office" style="color: #111111"><i
                class="fas fa-building stroke-transparent"></i>&nbsp;<strong>Office</strong><br> ห้อง 1103-2,
            อาคารเสาวรัจ นิตยวรรธนะ</p>
        <p id="telephone"><i
                class="fas fa-phone stroke-transparent"></i>&nbsp;<strong>เบอร์โทรศัพท์</strong><br>${personnel_detail.phone}
        </p>
        <p id="fax"><i class="fas fa-fax stroke-transparent"></i>&nbsp;<strong>โทรสาร</strong><br>(+66) 053-873900</p>
    </div>
    <div id="info-cards">
        <div class="card">
            <p style="color: #AA1818"><i class="fa fa-certificate stroke-transparent"></i>&nbsp;&nbsp;&nbsp;ตำแหน่งทางวิชาการ </p>
            <ul>
                <c:forEach items="${academicRanks}" var="academicRank">
                    <li><span class="bi bi-dot bi-dot-lg"></span>${academicRank.name}</li>
                </c:forEach>
            </ul>
        </div>
        <div class="card">
            <p style="color: #AA1818"><i class="fas fa-graduation-cap stroke-transparent"></i>&nbsp;&nbsp;&nbsp;ประวัติการศึกษา
            </p>
            <ul>
                <c:forEach var="ehd" items="${education_history_detail}">
                    <p style="color: #111111"><i class="fas fa-graduation-cap stroke-transparent"></i><strong>&nbsp;&nbsp;&nbsp;${ehd.firstname}</strong>
                        &nbsp;&nbsp;&nbsp;${ehd.major} ,${ehd.university} ,${ehd.country},${ehd.educationyear}<br></p>
                </c:forEach>

            </ul>
        </div>
        <div class="card">
            <p style="color: #AA1818"><i class="fas fa-briefcase stroke-transparent"></i>&nbsp;&nbsp;&nbsp;ความชำนาญ</p>
            <ul>
                <p style="color: #111111">${personnel_detail.expertise}</p>
            </ul>
        </div>
        <div class="card">
            <p style="color: #AA1818"><i class="fas fa-award stroke-transparent"></i>&nbsp;&nbsp;&nbsp;ผลงาน</p>
            <ul>
                <c:forEach var="award" items="${award_detail}">
                    <p style="color: #111111"><span class="bi bi-dot bi-dot-lg"></span> ${award.name},${award.year}<br></p>
                </c:forEach>
            </ul>
        </div>
        <div class="card">
            <p style="color: #AA1818" id="education"><i class="fab fa-google stroke-transparent"></i>&nbsp;&nbsp;&nbsp;สิ่งพิมพ์</p>
            <ul>
                <p style="color: #111111"><a href="${personnel_detail.scolarlink}">Google Scholar Link</a></p>
            </ul>
        </div>
        <div class="card">
            <p style="color: #AA1818"><i class="fas fa-briefcase stroke-transparent"></i>&nbsp;&nbsp;&nbsp;งานบริการวิชาการ</p>
            <ul>
                <c:forEach var="work" items="${work_experiences_detail}">
                    <p style="color: #111111"><span class="bi bi-dot bi-dot-lg"></span>${work.workexperiencename} <br></p>
                </c:forEach>
            </ul>
        </div>
        <div class="card">
            <p style="color: #AA1818"><i class="fas fa-briefcase stroke-transparent"></i>&nbsp;&nbsp;&nbsp;ทุนวิจัย</p>
            <ul>
                <c:forEach var="rgd" items="${research_grant_detail}">
                    <p style="color: #111111"><span class="bi bi-dot bi-dot-lg"></span>${rgd.researchgrantname} , ${rgd.researchgrantyear}<br></p>
                </c:forEach>
            </ul>
        </div>
        <div class="card">
            <p style="color: #AA1818"><i class="fas fa-award stroke-transparent"></i>&nbsp;&nbsp;&nbsp;ผลงานที่ปรึกษา</p>
            <ul>
                <c:forEach var="procon" items="${project_consultings_detail}">
                    <p style="color: #111111"><span class="bi bi-dot bi-dot-lg"></span> ${procon.name},${procon.year}<br></p>
                </c:forEach>
            </ul>
        </div>
    </div>
</div>
<!-- Bootstrap -->
<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
<!-- Main -->
<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
</body>
</html>


