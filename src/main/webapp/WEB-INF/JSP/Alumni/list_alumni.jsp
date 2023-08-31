<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List Alumni</title>
  <link href="${pageContext.request.contextPath}/assets/css/listalumni.css" rel="stylesheet">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">

</head>
<body>
<div class="container">
  <jsp:include page="/WEB-INF/layouts/nav.jsp"/>
  <br>
<div class="top_content" align="center">
  <div>
    <h2 style="color: #a41212">ข้อมูลศิษย์เก่า</h2>
    <br>
    <div >
  <input type="text" id="searchInput" style="width: 50%" onkeyup="search()" placeholder="Search for names.." title="Type in a name">
    </div>
      <c:forEach var="alumni" items="${list_alumni}" >
    <div class="block_alumni" data-name="${alumni.id} ${alumni.firstname} ${alumni.position} ${alumni.company}">
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
<%--        <a href="#" class="btn btn-primary"></a>--%>
              <a href="${pageContext.request.contextPath}/alumni/${alumni.id}/view_alumni_detail"><button class="button">ดูเพิ่มเติม</button></a>
            </div>
        </div>

      </div>
    </div>
  </c:forEach>
</div>
</div>
</div>
<div>
  <jsp:include page="/WEB-INF/layouts/footer.jsp"/>
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
        block.style.display = "block";
      } else {
        block.style.display = "none";
      }
    }
  }
</script>

</html>
