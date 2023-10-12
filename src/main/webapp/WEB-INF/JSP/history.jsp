
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Information Technology</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/nav-gtco.css">
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">
<style>

    /* ตั้งสีพื้นหลังให้หน้าเว็บ */
    body {
        background-color: #ffffff;
        font-family: 'Kanit', sans-serif;
        margin: 0;
        padding: 0;
    }

    /* ตั้งสีข้อความและขนาดตัวอักษรของเนื้อหาหน้าเว็บ */
    h2 {
        color: #333;
        font-size: 2em;
    }
    p{
        color: #111111;
        font-size: 1em;
    }

    /* สไตล์ของรูปภาพ */
    .img-fluid {
        max-width: 80%;
        height: auto;
        border-radius: 50px;
        box-shadow: 5px 5px 10px #888; /* เพิ่มเงาให้รูปภาพ */
    }

    /* ตั้งสไตล์ของเส้นแบ่งระหว่างคอลัมน์ */
    table {
        width: 100%;
        border-collapse: separate;
        border-spacing: 20px;
        background-color: #fff; /* สีพื้นหลังของตาราง */
        border-radius: 10px; /* ขอบของตาราง */
    }

    /* สไตล์ของเซลล์ของตาราง */
    td {
        padding: 10px;
    }
    *, ::after, ::before {
        box-sizing: border-box;
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
<div  align="center">
    <img style="width: 90%;margin-top: 100px" src="${pageContext.request.contextPath}/assets/image/1.png">
</div>
<br><br>
<table align="center">
    <tr>
        <td>
            <h2 class="display-4">เกี่ยวกับสาขา</h2>
            <p style="color: #111111">
                สาขาวิชาฯ เริ่มเปิดดำเนินการมาตั้งแต่ปี 2545 โดยระบบการเรียนการสอนของสาขาวิชาฯ เน้นด้านการพัฒนาโปรแกรมเป็นหลักดังนั้นจึงจำเป็นต้องใช้ทักษะ<br>
                ทางด้านคณิตศาสตร์และแนวคิดในการวางแผนอย่างเป็นระบบ นอกจากนั้นสาขาวิชาฯ ยังให้ความสำคัญกับเทคโนโลยีใหม่ๆที่ใช้ในกระบวนการพัฒนาระบบอาทิ<br>
                การโปรแกรมเชิงวัตถุ การพัฒนาโปรแกรมบนอุปกรณ์เคลื่อนที่ การวิเคราะห์และการออกแบระบบเชิงวัตถ ตลอดจนการทดสอบระบบด้วยเครื่องมืออันที่ทันสมัย<br>
                โดยมีเป้าหมายในการผลิตบัณฑิต เพื่อตอบสนองต่อความต้องการของตลาดเป็นอันดับแรก ดังนั้นบัณฑิตของสาขาวิชาฯต้องมีทักษะด้านปฏิบัติเป็นสำคัญส่งผลให้สาขาวิชาฯ<br>
                เป็นหนึ่งในจำนวนสาขาที่ประสบความสำเร็จสูงสุด ในแง่การผลิตบัณฑิตที่มีจำนวนผู้ได้งานและรายได้ต่อหัวสูงสุดของมหาวิทยาลัยแม่โจ้ นับตั้งแต่รุ่นแรกจนถึงปัจจุบัน<br>
                *การเรียนการสอนของสาขาวิชาเทคโนโลยีสารสนเทศ ไม่เน้นที่การออกแบบ Graphic<br>
                การสร้างภาพเคลื่อนไหวและมัลติมีเดียเช่นเดียวกับสาขาเทคโนโลยีสารสนเทศของสถาบันอื่นๆ *</p>
        </td>
        <td align="center">
            <img class="img-fluid rounded-circle" src="${pageContext.request.contextPath}/assets/image/tk.jpg" alt="..." />
        </td>
    </tr>
    <br><br>
    <tr>
        <td align="center"><img class="img-fluid rounded-circle" src="${pageContext.request.contextPath}/assets/image/nn.jpg" alt="..." /></td>
        <td>
            <h2 class="display-4">ปรัชญาการศึกษาของหลักสูตร</h2>
            <p style="color: #111111">
                “ผลิตบัณฑิตที่มีความรู้ ความสามารถ และทักษะการเรียนรู้ตลอดชีวิตในการปฏิบัติงานทางด้านเทคโนโลยีให้สามารถออกแบบ พัฒนา และ ทดสอบซอฟต์แวร์ ที่สนับสนุนการใช้งานในองค์กร<br>
                และสามารถนำความรู้ ไปประยุกต์ใช้ได้อย่างเหมาะสมอีกทั้งยังมีความสามารถในการสื่อสารและทำงานเป็นทีมโดยมีจรรยาบรรณในวิชาชีพด้านเทคโนโลยีสารสนเทศ”
            </p>
        </td>
    </tr>
    <tr>
        <td>
            <h2 class="display-4">วัตถุประสงค์ของหลักสูตร</h2>
            <p style="color: #111111">
                1. เพื่อผลิตบัณฑิตให้มีความรู้ความสามารถในการปฏิบัติงานทางด้านเทคโนโลยี ให้สามารถออกแบบพัฒนา
                และทดสอบซอฟต์แวร์ ที่สนับสนุนการใช้งานในองค์กร และสามารถนำความรู้ไปประยุกต์ใช้ได้อย่างเหมาะสม<br>
                2. เพื่อผลิตบัณฑิตให้มีความเข้าใจและประยุกต์ใช้ในกระบวนการพัฒนาระบบสารสนเทศและมีความสามารถในการสื่อสาร
                ทำงานเป็นทีมได้ เป็นผู้ที่มีความเข้าใจด้านสังคม องค์กรและคุณธรรมจริยธรรมในวิชาชีพด้านเทคโนโลยีสารสนเทศ<br>
                3. เพื่อผลิตบัณฑิตให้มีความสามารถในการจัดการปัญหาและการเรียนรู้ศาสตร์ใหม่ได้ด้วยตนเองโดยใช้เทคโนโลยี
                สารสนเทศสำหรับการเรียนรู้
            </p>
        </td>
        <td align="center">
            <img class="img-fluid rounded-circle" src="${pageContext.request.contextPath}/assets/image/news1.jpg" alt="..." />
        </td>
    </tr>
</table>
</body>
<footer>
    <jsp:include page="/WEB-INF/layouts/footer.jsp"/>
</footer>
</html>
