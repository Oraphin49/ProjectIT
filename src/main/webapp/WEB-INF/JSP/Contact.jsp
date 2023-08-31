<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Information Technology</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">

    <style>
       .card-text{
            color: #111111;
           font-family: Kanit;
        }
    </style>
</head>
<body>
<div class="container">
    <jsp:include page="/WEB-INF/layouts/nav.jsp"/>
</div>
    <br>
    <br>
<div class="alum_img" align="center">
    <img style="width: 90%;  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);" src="${pageContext.request.contextPath}/assets/image/2.png">
</div>

        <br><br>
        <div class="im" style="float: left; margin-left: 27%;" >
            <img style="width:200px" src="${pageContext.request.contextPath}/assets/image/p.png">
        </div>
    <div class="con" style="float: left; margin-left: 30px; margin-top: 20px">
        <p class="card-text"><img src="${pageContext.request.contextPath}/assets/image/office-building%20(1).png" width="20px">
            หลักสูตรวิทยาศาสตรบัณฑิต สาขาวิชาเทคโนโลยีสารสนเทศ<br>
            คณะวิทยาศาสตร์ มหาวิทยาลัยแม่โจ้ <br>
            63 หมู่ 4 ตำบลหนองหาร อำเภาสันทราย จังหวัดเชียงใหม่ 50290 </p>
        <p class="card-text"><img src="${pageContext.request.contextPath}/assets/image/telephone-call%20(1).png" width="20px"> เบอร์โทร :053-873900</p>
        <p class="card-text"><img src="${pageContext.request.contextPath}/assets/image/email%20(2).png" width="20px"> อีเมล : itscimju2545@gmail.com</p>
    </div>

</body>
<br><br>
<footer style="margin-top: 200px">
    <jsp:include page="/WEB-INF/layouts/footer.jsp"/>
</footer>
</html>
