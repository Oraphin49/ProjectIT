<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>แก้ไขข้อมูลศิษย์เก่า</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/nav-gtco.css">
  <link href="${pageContext.request.contextPath}/assets/css/add-alumni.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap/dist/css/bootstrap.min.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">
  <style>
    /* สไตล์ CSS สำหรับฟอร์ม */
    .container {
      max-width: 800px;
      margin: 0 auto;
      padding: 20px;
      border: 1px solid #ccc; /* เพิ่มขอบ */
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* เพิ่มเงา */
      border-radius: 10px; /* เพิ่มขอบมนเข้าไปในฟอร์ม */
      background-color: #f8f9fa; /* เปลี่ยนสีพื้นหลัง */
    }

    .form-group {
      margin-bottom: 20px;
    }

    .form-control {
      font-family: 'Kanit', sans-serif;
    }

    label {
      font-family: 'Kanit', sans-serif;
      font-weight: bold;
    }

    /* สไตล์ CSS สำหรับปุ่ม */
    .form-actions {
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .form-group input[type="submit"],
    .form-group input[type="cancel"] {
      background-color: #007bff;
      color: #fff;
      padding: 10px 20px;
      border: none;
      border-radius: 3px;
      cursor: pointer;
      font-family: 'Kanit', sans-serif;
    }

    .form-group input[type="submit"]:hover,
    .form-group input[type="cancel"]:hover {
      background-color: #0056b3;
      transform: translateY(-2px);
      transition: transform 0.2s ease-in-out;
    }

    /* สไตล์ CSS สำหรับหัวข้อ */
    h3 {
      color: #d51f1f;
      font-family: 'Kanit', sans-serif;
      text-align: center;
    }
  </style>
</head>
<body>
<nav class="gtco-nav" role="navigation">
  <div class="gtco-container">
    <div class="row"  style="display: block">
      <jsp:include page="/WEB-INF/JSP/Nav_Admin.jsp"/>
    </div>
  </div>
</nav>
<br><br><br><br><br><br><br><br>
<h3>แก้ไขข้อมูลศิษย์เก่า</h3>
<br><br>
<div class="container">
    <form action="${pageContext.request.contextPath}/alumni/${alumni.id}/edit/save" method="POST" onsubmit="return validateForm();" enctype="multipart/form-data">
      <div class="form-group row">
        <div class="col-md-6" >
          <label for="alumni_id">รหัสนักศึกษา:</label>
          <input type="text" id="alumni_id" name="alumni_id" class="form-control" value="${alumni.id}">
        </div>
        <div class="col-md-6">
          <label for="year">ปีที่จบการศึกษา:</label>
          <input type="text" id="year" name="year" class="form-control" value="${alumni.graduationyear}">
        </div>
      </div>
        <div class="form-group row">
            <div class="col-md-6">
                <label for="generation">ไอทีรุ่นที่:</label>
                <input type="text" id="generation" name="generation" class="form-control" value="${alumni.generation}">
            </div>
          <div class="col-md-6" >
            <select name="prefix" id="prefix" class="prefix" style="width: 100%;height: 35px;margin-top: 25px;font-family: 'Kanit';" th:value="คำนำหน้า" >
              <option value="นาย " ${alumni.prefix == 'นาย' ?  'selected' : ''}>นาย</option>
              <option value="นาง" ${alumni.prefix == 'นาง' ?  'selected' : ''}>นาง</option>
              <option value="นางสาว" ${alumni.prefix == 'นางสาว' ?  'selected' : ''}>นางสาว</option>
            </select>
        </div>
        </div>
      <div class="form-group row">
        <div class="col-md-6">
          <label for="firstname">ชื่อจริง:</label>
          <input type="text" id="firstname" name="firstname" class="form-control" value="${alumni.firstname}">
        </div>
        <div class="col-md-6">
          <label for="lastname">นามสกุล:</label>
          <input type="text" id="lastname" name="lastname" class="form-control" value="${alumni.lastname}">
        </div>
      </div>
      <div class="form-group">
        <label for="position">ตำแหน่ง:</label>
        <select name="position" id="position" class="form-control">
          <option value="Programmer" ${alumni.position == 'Programmer' ?  'selected' : ''}>Programmer</option>
          <option value="SA" ${alumni.position == 'SA' ?  'selected' : ''}>SA</option>
          <option value="Software Tester" ${alumni.position == 'Software Tester' ?  'selected' : ''}>Software Tester</option>
          <option value="Developer" ${alumni.position == 'Developer' ?  'selected' : ''}>Developer</option>
          <option value="Software Engineer" ${alumni.position == 'Software Engineer' ? 'selected' : ''}>Software Engineer</option>
          <option value="Data Scientist" ${alumni.position == 'Data Scientist' ?  'selected' : ''}>Data Scientist</option>
          <option value="Data Engineer" ${alumni.position == 'Data Engineer' ?  'selected' : ''}>Data Engineer</option>
          <option value="UX,UI" ${alumni.position == 'UX,UI' ?  'selected' : ''}>UX,UI</option>
          <option value="full stack developer" ${alumni.position == 'full stack developer' ?  'selected' : ''}>full stack developer</option>
          <option value="อื่นๆ" ${alumni.position == 'อื่นๆ' ?  'selected' : ''}>อื่นๆ</option>
        </select>
      </div>
      <div id="otherPositionDiv" style="display: none;">
        <label for="otherPosition">กรอกตำแหน่งอื่นๆ:</label>
        <input type="text"  style="width: 50%" id="otherPosition" name="otherPosition" value="${alumni.position != 'Programmer' ? alumni.position : ''}">
      </div>
      <div class="form-group">
        <label for="company">บริษัท:</label>
        <input type="text" id="company" name="company" class="form-control" value="${alumni.company}">
      </div>
      <div class="form-group row">
        <div class="col-md-6">
          <label for="phone">เบอร์โทร:</label>
          <input type="text" id="phone" name="phone" class="form-control" value="${alumni.phone}">
        </div>
        <div class="col-md-6">
          <label for="email">อีเมล์:</label>
          <input type="email" id="email" name="email" class="form-control" value="${alumni.email}">
        </div>
      </div>
      <div class="form-group">
        <%--@declare id="currentimage"--%><label for="currentImage">รูปภาพปัจจุบัน:</label>
        <img src="${pageContext.request.contextPath}/assets/image/alumni/${alumni.image}" alt="Current Image" width="200">
      </div>
      <div class="form-group">
        <label for="newImageFile">อัปโหลดรูปภาพใหม่ (ถ้าต้องการ):</label>
        <input type="file" id="newImageFile" name="newImageFile">
      </div>
      <div class="form-group">
        <label for="expertise">ความเชี่ยวชาญ:</label>
        <input type="text" id="expertise" name="expertise" class="form-control" value="${alumni.expertise}">
      </div>
      <div class="form-group">
        <label for="award">ผลงาน:</label>
        <input type="text" id="award" name="award" class="form-control" value="${alumni.award}">
      </div>
      <br>
      <div class="form-actions">
        <div class="row">
          <div class="col-md-6">
            <input type="submit" value="บันทึก" class="btn btn-primary btn-block">
          </div>
          <div class="col-md-6">
            <a href="${pageContext.request.contextPath}/alumni/list_alumni_manage" class="btn btn-secondary btn-block">ยกเลิก</a>
          </div>
        </div>
      </div>
    </form>
  </div>
</div>

<div class="f">
  <jsp:include page="/WEB-INF/layouts/footer.jsp"/>
</div>
</body>
<script>
  document.addEventListener("DOMContentLoaded", function () {
    var positionSelect = document.getElementById("position");
    var otherPositionDiv = document.getElementById("otherPositionDiv");
    var alumniPosition = "${alumni.position}"; // รับค่าตำแหน่งจากฐานข้อมูล

    // ตรวจสอบค่าเริ่มต้นของ dropdown
    if (positionSelect.value !== alumniPosition && positionSelect.value !== "อื่นๆ") {
      otherPositionDiv.style.display = "block"; // แสดงช่องกรอก
      positionSelect.value = "อื่นๆ"; // เลือก "อื่นๆ" ใน dropdown
    } else {
      otherPositionDiv.style.display = "none"; // ซ่อนช่องกรอก
    }

    // เมื่อ dropdown ถูกเปลี่ยนค่า
    positionSelect.addEventListener("change", function () {
      if (positionSelect.value === "อื่นๆ") {
        otherPositionDiv.style.display = "block"; // แสดงช่องกรอก
      } else {
        otherPositionDiv.style.display = "none"; // ซ่อนช่องกรอก
      }
    });
  });

</script>

<script>
  ////////////////////////////////////////เช็ค script แต่ละช่อง////////////////////////////////////////////////////
  function validateForm() {
    //เช็ครหัสนักศึกษา
    var alumni_id = document.getElementById("alumni_id").value;
    if (alumni_id.trim() === "") {
      alert("กรุณากรอกรหัสนักศึกษา");
      return false;
    } else if (alumni_id.length !== 10 || !/^\d+$/.test(alumni_id) || /\s/.test(alumni_id)) {
      alert("รหัสนักศึกษาต้องประกอบด้วยตัวเลข 10 ตัวและไม่ควรมีช่องว่างระหว่างตัวเลข");
      document.getElementById("alumni_id").value = "";
      return false;
    }

    // เว้นไว้ก่อน
    var year = document.getElementById("year").value;
    if (year.trim() === "") {
      alert("กรุณากรอกปีที่จบการศึกษา");
      return false;
    }else if (!/^\d+$/.test(year)) {
      alert("ปีการศึกษาที่จบต้องประกอบด้วยตัวเลขเท่านั้น");
      return false;
    }

    var generation = document.getElementById("generation").value;
    if (generation.trim() === "") {
      alert("กรุณากรอกรุ่นที่");
      return false;
    }else if (!/^\d+$/.test(generation)) {
      alert("รุ่นที่ต้องประกอบด้วยตัวเลขเท่านั้น");
      return false;
    }

    // เช็คชื่อ //
    var firstname = document.getElementById("firstname").value;
    if (firstname.trim() === "") {
      alert("กรุณากรอกชื่อจริง");
      return false;
    } else if (!/^[ก-๙]+(\s[ก-๙]+)*$/.test(firstname) || firstname.length < 2 || firstname.length > 50) {
      alert("ชื่อจริงต้องเป็นภาษาไทยเท่านั้นและมีความยาวระหว่าง 2 ถึง 50 ตัวอักษร และมีช่องว่างระหว่างตัวอักษรได้ไม่เกิน 1 ช่อง");
      document.getElementById("firstname").value = "";
      return false;
    }
    // เช็คนามสกุล //
    var lastname = document.getElementById("lastname").value;
    if (lastname.trim() === "") {
      alert("กรุณากรอกนามสกุล");
      return false;
    } else if (!/^[ก-๙]+(\s[ก-๙]+)*$/.test(lastname) || lastname.length < 2 || lastname.length > 50) {
      alert("นามสกุลต้องเป็นภาษาไทยเท่านั้นและมีความยาวระหว่าง 2 ถึง 50 ตัวอักษร และมีช่องว่างระหว่างตัวอักษรได้ไม่เกิน 1 ช่อง");
      document.getElementById("lastname").value = "";
      return false;
    }


    //เช็คบริษัท //
    var company = document.getElementById("company").value;
    if (company.trim() === "") {
      alert("กรุณากรอกชื่อบริษัท");
      return false;
    } else if (company.length < 2 ||company.length > 50 || !/^[A-Za-zก-์\s,.]+$/.test(company)) {
      alert("ชื่อบริษัทต้องมีความยาวตั้งแต่ 2 และไม่เกิน 50 ตัวอักษร และใช้ได้เฉพาะภาษาไทยและภาษาอังกฤษรวมถึงอักขระพิเศษ . และ , เท่านั้น");
      document.getElementById("company").value = "";
      return false;
    }

    //เช็คเบอร์ //
    var phone = document.getElementById("phone").value;
    var TelTH = /^(06|08|09|8)[0-9]{1}-?[0-9]{3}-?[0-9]{4}$/; // รองรับขีด (-) หรือไม่ก็ได้
    if (phone.trim() === "") {
      alert("กรุณากรอกเบอร์โทร");
      return false;
    } else if (!phone.match(TelTH)) {
      alert("คุณกรอกเบอร์โทรให้ถูกต้องไม่ถูกต้อง กรุณากรอกใหม่");
      document.getElementById("phone").value = "";
      return false;
    }

    //เช็คอีเมล์ //
    var email = document.getElementById("email").value;
    var emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
    if (email.trim() === "") {
      alert("กรุณากรอกอีเมล์");
      return false;
    } else if (!email.match(emailRegex)) {
      alert("กรุณากรอกอีเมล์ให้ถูกต้อง");
      document.getElementById("email").value = "";
      return false;
    }

    //เว้นไว้ก่อน
    var image = document.getElementById("image").value;
    if (image.trim() === "") {
      alert("กรุณากรอกรูปภาพ");
      document.getElementById("image").value = "";
      return false;
    }

    //เช็คความชำนาญ //
    var expertise = document.getElementById("expertise").value;
    if (expertise.trim() === "") {
      alert("กรุณากรอกความเชี่ยวชาญ");
      document.getElementById("experitise").value = "";
      return false;
    }

    //เช็คผลงาน //
    var award = document.getElementById("award").value;
    if (award.trim() === "") {
      alert("กรุณากรอกผลงาน");
      document.getElementById("award").value = "";
      return false;
    }

    return true; // ข้อมูลถูกต้องทั้งหมด
  }
</script>
</html>
