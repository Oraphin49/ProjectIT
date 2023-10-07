<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
  <title>รายชื่อศิษย์เก่า</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">
  <style>
    *, *::before, *::after {
      box-sizing: border-box;
    }
    body {
      background-color: #ffffff; /* เปลี่ยนสีพื้นหลังของหน้าเว็บ */
    }

    header h1 {
      color: white;
      font-size: 24px;
      font-weight: bold;
    }

    .list-item {
      list-style: none;
      background-color: #f9f9f9;
      border-radius: 10px;
      cursor: pointer;
      transition: background-color 0.3s;
      margin-top: 80px;
    }

    .list-item:hover {
      background-color: #ede7f6;
      border: 1px solid #ccc; /* เปลี่ยนสีขอบ */
      transition: background-color 0.3s;
    }

    .card {
      background-color: #fde0dc;
      width: 100%;
      height: 100%;
      border-radius: 10px;
      overflow: hidden;
    }

    .card-text {
      color: black;
      font-family: "Kanit";
    }

    .bp {
      background-color: #f9f9f9;
      border-radius: 10px;
      border: 1px solid #ddd;
      height: 240px;
      width: 350px;
      margin: 20px;
    }

    .alum_img {
      display: inline-block;
      margin-right: 30px;
    }

    .card-body {
      display: inline-block;
    }

    .button1 {
      background-color: #CD3333;
      color: white;
      border: 2px solid #771111;
      border-radius: 5px;
      font-family: Kanit;
      font-size: 16px;
      margin: 4px 2px;
      padding: 5px 10px;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      cursor: pointer;
    }

    .button1:hover {
      background-color: #771111;
      color: white;
    }

    .top_content {
      margin-top: 30px;
    }

    #searchInput {
      background-position: 10px 12px;
      background-repeat: no-repeat;
      width: 60%;
      font-size: 16px;
      padding: 12px 20px 12px 40px;
      border: 1px solid #ddd;
      margin-bottom: 12px;
      font-family: Kanit;
      float: left;
      margin-left: 40%;
    }

    .block_alumni {
      display: inline-block;
      margin-left: 15px;
    }

    /* CSS สำหรับปุ่มเปลี่ยนหน้า */
    .pagination {
      text-align: center;
      margin-top: 65px;
    }

    /* CSS สำหรับลูกศรในปุ่ม "ก่อนหน้า" และ "ถัดไป" */
    a i.fa-arrow-left,
    a i.fa-arrow-right {
      font-size: 18px;
      vertical-align: middle;
      margin-right: 15px;
      margin-left: 15px;
      color: #AA1818;
    }

    /* CSS เมื่อโฮเวอร์ลูกศร */
    a:hover i.fa-arrow-left,
    a:hover i.fa-arrow-right {
      color: #771111;
    }
    .read-more-link i.fa-arrow-right {
      margin-left: 5px;
      transition: margin-left 0.3s ease-in-out;
      opacity: 0; /* เริ่มต้นซ่อนลูกศร */
    }
    .read-more-link i.fa-arrow-left {
      margin-left: 5px;
      transition: margin-left 0.3s ease-in-out;
      opacity: 0; /* เริ่มต้นซ่อนลูกศร */
    }

    .read-more-link:hover i.fa-arrow-right {
      margin-left: 10px;
      opacity: 1; /* แสดงลูกศรเมื่อ hover */
    }
    .read-more-link:hover i.fa-arrow-left {
      margin-left: 10px;
      opacity: 1; /* แสดงลูกศรเมื่อ hover */
    }


    .card:hover {
      transform: scale(1.03);
      box-shadow: 0px 1px 20px 0px rgba(0, 0, 0, 0.19);
    }
  </style>
</head>
<body>
<nav style="box-sizing: revert; position: fixed; top: 0; width: 100%; z-index: 100; ">
  <jsp:include page="/WEB-INF/layouts/nav.jsp"/>
</nav>
  <br><br><br><br>
  <div class="top_content">
    <div>
      <h2 style="color: #a41212 ;margin-top: 75px;" align="center" >ข้อมูลศิษย์เก่า</h2>
      <br>
      <div>
        <input type="text" id="searchInput" style="width: 50%" onkeyup="search()" placeholder="ค้นหาชื่อ.." title="Search for names..">
      </div>
      <c:forEach var="alumni" items="${list_alumni}">
        <div class="block_alumni list-item" data-name="${alumni.id} ${alumni.firstname} ${alumni.position} ${alumni.company}">
          <div class="bp" align="center" style="display: inline-block;">
            <div class="card">
              <div class="alum_img">
                <img style="width: 100px; height: 120px" src="${pageContext.request.contextPath}/assets/image/${alumni.image}">
              </div>
              <div class="card-body">
                <h3 class="card-title" style="font-family: Kanit; color: #ec2727">${alumni.id}</h3>
                <p class="card-text">${alumni.firstname} ${alumni.lastname}</p>
                <p class="card-text">ตำแหน่ง : ${alumni.position}</p>
                <p class="card-text">บริษัท : ${alumni.company}</p>
              </div>
                <div style="font-family: Kanit;"align="center">
                    <a class="fw-medium read-more-link" href="${pageContext.request.contextPath}/alumni/${alumni.id}/view_alumni_detail" style="color: #AA1818;font-weight: bold;text-decoration:none">
                        ดูเพิ่มเติม
                        <i class="fa fa-arrow-right ms-2"></i>
                    </a>
                    </a>
                </div>
            </div>
          </div>
        </div>
      </c:forEach>
    </div>
  </div>
</div>
<div class="pagination">
  <!-- ปุ่ม "ก่อนหน้า" -->
  <a href="#" onclick="prevPage()" style="text-decoration: none;font-family: Kanit;color: #000" class="fw-medium read-more-link">
    <i class="fa fa-arrow-left"></i> ก่อนหน้า
  </a>

  <!-- ปุ่ม "ถัดไป" -->
  <a href="#" onclick="nextPage()" style="text-decoration: none;font-family: Kanit;color: #000" class="fw-medium read-more-link">
    ถัดไป <i class="fa fa-arrow-right"></i>
  </a>
</div>
<br><br>
<div>
  <jsp:include page="/WEB-INF/layouts/footer.jsp" />
</div>
</body>

<script>
  var alumniList = document.querySelectorAll(".block_alumni");
  var itemsPerPage = 30; // จำนวนที่แสดงในแต่ละหน้า
  var currentPage = 1; // หน้าปัจจุบัน

  // ฟังก์ชันเพื่อไปหน้าถัดไป
  function nextPage() {
    if (currentPage < 10) { // 10 คือจำนวนหน้าทั้งหมด
      currentPage++;
      changePage(currentPage);
    }
  }

  // ฟังก์ชันเพื่อกลับหน้าก่อนหน้า
  function prevPage() {
    if (currentPage > 1) {
      currentPage--;
      changePage(currentPage);
    }
  }

  // ฟังก์ชันเปลี่ยนหน้า
  function changePage(page) {
    currentPage = page;
    showAlumni();
  }

  // ฟังก์ชันแสดงข่าวในหน้าปัจจุบัน
  function showAlumni() {
    for (var i = 0; i < alumniList.length; i++) {
      var block = alumniList[i];
      var pageNumber = Math.ceil((i + 1) / itemsPerPage);

      if (pageNumber === currentPage) {
        block.style.display = "inline-block";
      } else {
        block.style.display = "none";
      }
    }
  }

  // เรียกใช้ฟังก์ชันแสดงข่าวในหน้าปัจจุบันเมื่อโหลดหน้าเว็บ
  window.addEventListener("load", showAlumni);

  function search() {
    var input = document.getElementById("searchInput").value.toLowerCase();
    var blocks = document.getElementsByClassName("block_alumni");

    for (var i = 0; i < blocks.length; i++) {
      var block = blocks[i];
      var text = block.getAttribute("data-name").toLowerCase();

      if (text.includes(input)) {
        block.style.display = "inline-block"; // แสดงองค์ประกอบเมื่อตรง
      } else {
        block.style.display = "none"; // ซ่อนองค์ประกอบเมื่อไม่ตรง
      }
    }
  }

</script>

</html>
