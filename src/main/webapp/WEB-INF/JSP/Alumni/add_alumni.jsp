<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Information Technology</title>
  <link href="${pageContext.request.contextPath}/assets/css/add-alumni.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap/dist/css/bootstrap.min.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">
</head>
<body>
  <jsp:include page="/WEB-INF/JSP/Nav_Admin.jsp"/>
  <br><br>
  <div class="text-center">
    <h2 style="font-family: 'Kanit', sans-serif; color: #a41212;">เพิ่มข้อมูลศิษย์เก่า</h2>
  </div>
  <br><br>
  <div class="container">
    <form action="${pageContext.request.contextPath}/alumni/save" method="POST">
      <div class="form-group">
        <label for="alumni_id">รหัสนักศึกษา:</label>
        <input type="text" id="alumni_id" name="alumni_id" class="form-control">
      </div>
      <div class="form-group">
        <label for="firstname">ชื่อจริง:</label>
        <input type="text" id="firstname" name="firstname" class="form-control">
      </div>
      <div class="form-group">
        <label for="lastname">นามสกุล:</label>
        <input type="text" id="lastname" name="lastname" class="form-control">
      </div>
      <div class="form-group">
        <label for="year">ปีที่จบการศึกษา:</label>
        <input type="text" id="year" name="year" class="form-control">
      </div>
      <div class="form-group">
        <label for="position">ตำแหน่ง:</label>
        <select name="position" id="position" class="form-control">
          <option value="Programmer">Programmer</option>
          <option value="SA">SA</option>
          <option value="SA">Tester</option>
        </select>
      </div>
      <div class="form-group">
        <label for="company">บริษัท:</label>
        <input type="text" id="company" name="company" class="form-control">
      </div>
      <div class="form-group">
        <label for="phone">เบอร์โทร:</label>
        <input type="text" id="phone" name="phone" class="form-control">
      </div>
      <div class="form-group">
        <label for="email">อีเมล์:</label>
        <input type="email" id="email" name="email" class="form-control">
      </div>
      <div class="form-group">
        <label for="image">รูปภาพ:</label>
        <input type="text" id="image" name="image" class="form-control">
      </div>
      <div class="form-group">
        <label for="expertise">ความเชี่ยวชาญ:</label>
        <input type="text" id="expertise" name="expertise" class="form-control">
      </div>
      <div class="form-group">
        <label for="award">ผลงาน:</label>
        <input type="text" id="award" name="award" class="form-control">
      </div>
      <br>
      <div class="form-group">
        <input type="submit" value="บันทึก" class="btn btn-primary">
        <a href="${pageContext.request.contextPath}/news/list_news_manage"><input type="cancel" value="ยกเลิก" class="btn btn-primary"></a>

      </div>
    </form>
  </div>

<div class="f">
  <jsp:include page="/WEB-INF/layouts/footer.jsp"/>
</div>
</body>
</html>