<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
    <meta charset="UTF-8">
    <title>List_Manage_Alumni</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/list_manage_alumni.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">
<style>
    /* CSS สำหรับปุ่มเปลี่ยนหน้า */
    .pagination {
        text-align: center;
        margin-top: 65px;
    }

    .pagination button {
        background-color: #CD3333;
        color: white;
        border: 2px solid #771111;
        border-radius: 5px;
        font-family: Kanit;
        font-size: 16px;
        margin: 0 5px;
        padding: 5px 10px;
        text-align: center;
        text-decoration: none;
        cursor: pointer;
    }

    .pagination button:hover {
        background-color: #771111;
    }

</style>
</head>
<body>
<div class="container">
    <jsp:include page="/WEB-INF/JSP/Nav_Admin.jsp"/>
</div>
<br>
<div class="top_content" align="center">
    <div>
        <h2 style="color: #a41212; font-size: 30px;font-family: Kanit;">จัดการข้อมูลศิษย์เก่า</h2>
        <br>
    </div>
    <div >
        <input type="text" id="searchInput" style="width: 50%" onkeyup="search()" placeholder="Search for names.." title="Type in a name">
    </div>
    <div>
        <a href="${pageContext.request.contextPath}/alumni/do_addAlumni"><button style="width: 80px; float: right; margin-right: 80px; background-color: #FFFFFF;margin-bottom: 10px">
            <img src="${pageContext.request.contextPath}/assets/image/bookmark-plus.png" style="width: 30px; "></button></a>
        <br>
        <br>
        <br>
    </div>
</div>
<table align="center" class="list_manage" >
    <tr>
        <th>รูปภาพ</th>
        <th>ชื่อ-นามสกุล</th>
        <th>รหัสนักศึกษา</th>
        <th>ตำแหน่ง</th>
        <th>บริษัท</th>
        <th>แก้ไข</th>
        <th>ลบ</th>
    </tr>
    <c:forEach var="alumni" items="${list_manage_alumni}">
        <tr class="block_alumni" data-name=" ${alumni.id} ${alumni.firstname} ${alumni.lastname} ${alumni.position}" >
            <td><img style="width: 50px; height: 60px;" src="${pageContext.request.contextPath}/assets/image/${alumni.image}"></td>
            <td>${alumni.firstname} ${alumni.lastname}</td>
            <td>${alumni.id}</td>
            <td>${alumni.position}</td>
            <td>${alumni.company}</td>
            <td><a href="${pageContext.request.contextPath}/alumni/${alumni.id}/update"><img src="${pageContext.request.contextPath}/assets/image/edit.png" style="width: 20px"></a></td>
            <td><a href="${pageContext.request.contextPath}/alumni/${alumni.id}/delete"><img src="${pageContext.request.contextPath}/assets/image/dustbin.png" style="width: 20px"></a></td>
        </tr>

    </c:forEach>
</table>
<br><br>
<!-- ปุ่มเปลี่ยนหน้า -->
<div class="pagination">
    <button onclick="prevPage()">ก่อนหน้า</button>
    <button onclick="nextPage()">ถัดไป</button>
</div>
<br><br>
<footer>
    <jsp:include page="/WEB-INF/layouts/footer.jsp"/>
</footer>
</body>
<script>

    var alumniList = document.querySelectorAll(".list_manage");
    var itemsPerPage = 100; // จำนวนที่แสดงในแต่ละหน้า
    var currentPage = 1; // หน้าปัจจุบัน

    // ฟังก์ชันเพื่อไปหน้าถัดไป
    function nextPage() {
        if (currentPage < 100) { // 10 คือจำนวนหน้าทั้งหมด
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
                block.style.display = "table";
            } else {
                block.style.display = "none";
            }
        }
    }

    // เรียกใช้ฟังก์ชันแสดงข่าวในหน้าปัจจุบันเมื่อโหลดหน้าเว็บ
    window.addEventListener("load", showAlumni);

    function search() {
        var input = document.getElementById("searchInput").value.toLowerCase();
        var rows = document.querySelectorAll(".list_manage");
        var table = document.querySelector("table");

        // ซ่อนทั้งตารางก่อนที่จะทำการค้นหา
        table.style.display = "none";

        rows.forEach(function(row) {
            var rowData = row.getAttribute("data-name").toLowerCase();
            if (rowData.includes(input)) {
                row.style.display = "table-row"; // แสดงแถว
            } else {
                row.style.display = "none"; // ซ่อนแถว
            }
        });

        // แสดงตารางอีกครั้งหลังจากทำการค้นหา
        table.style.display = "table";
    }
</script>

</html>
