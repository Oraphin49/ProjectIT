<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
  <title>List Alumni</title>
  <%--  <link href="${pageContext.request.contextPath}/assets/css/listalumni.css" rel="stylesheet">--%>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">
  <style>
    .list-item {
      list-style: none;
      border: 1px solid #ddd;
      margin-bottom: 10px;
      background-color: #f9f9f9;
      border-radius: 10px;
      cursor: pointer;
      transition: background-color 0.3s;
    }

    .list-item:hover {
      background-color: #670c0c;
    }

    .card {
      background-color: #e5e5e5;
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
      /*padding: 10px;*/
    }

    .alum_img {
      display: inline-block;
      margin-right: 30px;
    }

    .card-body {
      display: inline-block;
    }

    .button1 {
      border: none;
      color: white;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      font-size: 16px;
      margin: 4px 2px;
      transition-duration: 0.4s;
      cursor: pointer;
      background-color: white;
      color: black;
      border: 2px solid #771111;
      border-radius: 5px;
      font-family: Kanit;
    }

    .button1:hover {
      background-color: #CD3333;
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
      margin-left: 500px;
      float: left;
    }

    .block_alumni {
      display: inline-block;
      margin-left: 15px;
    }
  </style>
</head>

<body>
<div class="container">
  <jsp:include page="/WEB-INF/layouts/nav.jsp" />
  <br>
  <div class="top_content">
    <div>
      <h2 style="color: #a41212 " align="center">ข้อมูลศิษย์เก่า</h2>
      <br>
      <div>
        <input type="text" id="searchInput" style="width: 50%" onkeyup="search()" placeholder="Search for names.." title="Type in a name">
      </div>
      <c:forEach var="alumni" items="${list_alumni}">
        <div class="block_alumni list-item" data-name="${alumni.id} ${alumni.firstname} ${alumni.position} ${alumni.company}">
          <div class="bp" align="center" style="display: inline-block;">
            <div class="card">
              <div class="alum_img">
                <img style="width: 100px; height: 120px" src="${pageContext.request.contextPath}/assets/image/${alumni.image}">
              </div>
              <div class="card-body">
                <h3 class="card-title">${alumni.id}</h3>
                <p class="card-text">${alumni.firstname} ${alumni.lastname}</p>
                <p class="card-text">ตำแหน่ง : ${alumni.position}</p>
                <p class="card-text">บริษัท : ${alumni.company}</p>
              </div>
              <div style="margin-top: -10px">
                <a href="${pageContext.request.contextPath}/alumni/${alumni.id}/view_alumni_detail"><button class="button1">ดูเพิ่มเติม</button></a>
              </div>
            </div>
          </div>
        </div>
      </c:forEach>
    </div>
  </div>
</div>
<div>
  <jsp:include page="/WEB-INF/layouts/footer.jsp" />
</div>

</body>

<script>
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
