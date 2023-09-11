<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en" >
<head>
    <meta charset="UTF-8">
    <title>${personnel_detail.firstname} ${personnel_detail.lastname}</title>
    <link href="${pageContext.request.contextPath}/assets/css/view_personnel.css" rel="stylesheet">
    <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.6.3/css/all.css'>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">

</head>
<body>
<!-- partial:index.partial.html -->
<div id="inner-nav"> <jsp:include page="/WEB-INF/layouts/nav.jsp"/></div>
<br>
<div id="container">
    <div id="profile">
        <div id="image">
            <img src="${pageContext.request.contextPath}/assets/image/${personnel_detail.image}">
        </div>
        <p id="name">${personnel_detail.academic_ranks.name} ${personnel_detail.firstname} ${personnel_detail.lastname}</p>
        <p id="designation"><br><span id="college"> ${personnel_detail.description}</span></p>
        <hr width="100%">
        <div id="about">
            <p style="display:inline;">ข้อมูล</p>
            <a href="#"><i class="fas fa-pen stroke-transparent-blue"></i></a>
        </div>
        <p id="year-graduation"><strong>อีเมล:</strong> ${personnel_detail.email}<br></p>
        <p id="education"><strong>สิ่งพิมพ์</strong><br>${personnel_detail.scolarlink}</p>
        <p id="more-about"><strong>ที่อยู่</strong><br>หลักสูตรวิทยาศาสตรบัณฑิต สาขาวิชาเทคโนโลยีสารสนเทศ คณะวิทยาศาสตร์ มหาวิทยาลัยแม่โจ้ <br>63 หมู่ 4 ตำบลหนองหาร อำเภาสันทราย จังหวัดเชียงใหม่ 50290</p>
        <p id="office"><strong>Office</strong><br> ห้อง 1103-2, อาคารเสาวรัจ นิตยวรรธนะ</p>
        <p id="telephone"><strong>เบอร์โทรศัพท์</strong><br>${personnel_detail.phone}</p>
        <p id="fax"><strong>โทรสาร</strong><br>(+66) 053-873900</p>
    </div>
    <div id="info-cards">
        <div class="card">
            <p><i class="fas fa-graduation-cap stroke-transparent"></i>&nbsp;&nbsp;&nbsp;ประวัติการศึกษา</p>
            <ul>
                <c:forEach var="ehd" items="${education_history_detail}">
                    <p><i class="fas fa-graduation-cap stroke-transparent"></i><strong>&nbsp;&nbsp;&nbsp;${ehd.firstname}</strong> &nbsp;&nbsp;&nbsp;${ehd.major} ,${ehd.university} ,${ehd.country},${ehd.educationyear}<br></p>
                </c:forEach>

            </ul>
        </div>
        <div class="card">
            <p><i class="fas fa-briefcase stroke-transparent"></i>&nbsp;&nbsp;&nbsp;ประวัติการทำงาน</p>
            <ul>
            <p >${personnel_detail.workexperience}</p>
            </ul>
        </div>
        <div class="card">
            <p><i class="fas fa-briefcase stroke-transparent"></i>&nbsp;&nbsp;&nbsp;ทุนวิจัย</p>
            <ul>
                <c:forEach var="rgd" items="${research_grant_detail}">
                    <p>${rgd.researchgrantname} , ${rgd.researchgrantyear}<br></p>
                </c:forEach>
            </ul>
        </div>
        <div class="card">
            <p><i class="fas fa-award stroke-transparent"></i>&nbsp;&nbsp;&nbsp;ผลงาน</p>
            <ul>
                <c:forEach var="award" items="${award_detail}">
                    <p>${award.name},${award.year}<br></p>
                </c:forEach>
            </ul>
        </div>
        <div class="card">
            <p><i class="fas fa-briefcase stroke-transparent"></i>&nbsp;&nbsp;&nbsp;ความชำนาญ</p>
            <ul>
                <p>${personnel_detail.expertise}</p>
            </ul>
        </div>
    </div>
</div>
<!-- partial -->
</body>
</html>