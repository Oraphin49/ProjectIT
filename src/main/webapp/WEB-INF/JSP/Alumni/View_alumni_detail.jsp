<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${alumni_detail.id}</title>
    <link href="${pageContext.request.contextPath}/assets/css/viewalumnidetail.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">
</head>
<body>
<div id="container">
    <jsp:include page="/WEB-INF/layouts/nav.jsp"/>
    <br><br>
    <div align="center">
    <b style="; font-size: 28px;font-family: Kanit">ข้อมูลศิษย์เก่า</b>
    </div>
    <br><br>

</div>
<div id="bd">
    <div id="yui-main">
        <div class="yui-b">
            <div class="yui-gd">
                <div class="yui-u first">
                    <div class="content1" align="center">
                        <div class="alum_img">
                        <img style="width: 180px; height: 220px"   src="${pageContext.request.contextPath}/assets/image/${alumni_detail.image}">
                        </div>
                    </div>
                </div>
                <div class="yui-u" >
                    <div class="content2" style="width: 470px" >
                        <h3 class="card-text">รหัสนักศึกษา : ${alumni_detail.id}</h3>
                        <p class="card-text" >ชื่อ : ${alumni_detail.firstname} นามสกุล : ${alumni_detail.lastname}</p>
                        <p class="card-text">ปีที่จบการศึกษา : ${alumni_detail.graduationyear}</p>
                        <p class="card-text"><img src="${pageContext.request.contextPath}/assets/image/telephone-call%20(1).png" width="20px"> เบอร์โทร : ${alumni_detail.phone}</p>
                        <p class="card-text"><img src="${pageContext.request.contextPath}/assets/image/employee%20(1).png" width="20px"> ตำแหน่ง : ${alumni_detail.position}</p>
                        <p class="card-text"><img src="${pageContext.request.contextPath}/assets/image/office-building%20(1).png" width="20px"> บริษัท : ${alumni_detail.company}</p>
                        <p class="card-text"><img src="${pageContext.request.contextPath}/assets/image/email%20(2).png" width="20px"> อีเมล : ${alumni_detail.email}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="yui-b">
        <div id="secondary">
            <div class="page2">
                <p class="p1" style="width:90%; height: 40px";><b class="ff"> ความชำนาญ</b></p>
                <div class="pp" style="width:90%";><p class="p2">${alumni_detail.expertise}</p></div>
                  <p class="p1" style="width:90%; height: 40px";><b class="ff">ผลงาน</b></p>
                <div class="pp" style="width:90%";><p class="p2">${alumni_detail.award}</p></div>

            </div>
        </div>
    </div>
</div>
</body>
<br>
<br>
<br>
<jsp:include page="/WEB-INF/layouts/footer.jsp"/>
</html>
