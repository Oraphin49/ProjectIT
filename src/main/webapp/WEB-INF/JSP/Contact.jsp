<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Information Technology</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/nav-gtco.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">
    <style>
        *, ::after, ::before {
            box-sizing: border-box;
        }
       .card-text{
            color: #111111;
           font-family: Kanit;
           font-size: 16px;
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
    <br><br><br>
<div class="alum_img" align="center" style="margin-top: 100px">
    <img style="width: 85%;  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);" src="${pageContext.request.contextPath}/assets/image/2.png">
</div>

        <br><br>
        <div style="float: left; margin-left: 8%;" >
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3774.7906482501267!2d99.01053601531153!3d18.896366462503607!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30da3cb54b7f9f2b%3A0xbed41f24ed04a2ca!2z4Lit4Liy4LiE4Liy4Lij4LmA4Liq4Liy4Lin4Lij4Lix4LiIIOC4meC4tOC4leC4ouC4p-C4o-C4o-C4mOC4meC4sCDguKHguKvguLLguKfguLTguJfguKLguLLguKXguLHguKLguYHguKHguYjguYLguIjguYk!5e0!3m2!1sth!2sth!4v1619566633232!5m2!1sth!2sth" width="600" height="450" style="border:0;" allowfullscreen=""></iframe>
        </div>
    <div class="con" style="float: left; margin-left: 44px;margin-top: 125px; ">
        <p class="card-text"><img src="${pageContext.request.contextPath}/assets/image/office-building%20(1).png" width="20px">
            หลักสูตรวิทยาศาสตรบัณฑิต สาขาวิชาเทคโนโลยีสารสนเทศ<br>
            คณะวิทยาศาสตร์ มหาวิทยาลัยแม่โจ้ <br>
            63 หมู่ 4 ตำบลหนองหาร อำเภาสันทราย จังหวัดเชียงใหม่ 50290 </p>
        <p class="card-text"><img src="${pageContext.request.contextPath}/assets/image/telephone-call%20(1).png" width="20px"> เบอร์โทร :053-873900</p>
        <p class="card-text"><img src="${pageContext.request.contextPath}/assets/image/email%20(2).png" width="20px"> อีเมล : itscimju2545@gmail.com</p>
    </div>
</body>
<footer style="margin-top: 490px">
    <jsp:include page="/WEB-INF/layouts/footer.jsp"/>
</footer>
</html>
