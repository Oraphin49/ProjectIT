<%@ page import="it_sci.model.Admin" %>
<%@ page import="it_sci.model.Personnel" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>List_Manage_Alumni</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/nav-gtco.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/list_manage_alumni.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">
    <style>
        #searchInput {
            background-position: 10px 12px;
            background-repeat: no-repeat;
            width: 40%;
            font-size: 16px;
            padding: 12px 20px 12px 40px;
            border: 1px solid #ddd;
            margin-bottom: 12px;
            font-family: Kanit;
            margin-left: 25%;
        }

        *, *::before, *::after {
            box-sizing: border-box;
        }

        /* CSS สำหรับปุ่มเปลี่ยนหน้า */
        .pagination {
            text-align: center;
            margin-top: 65px;
        }

        /* CSS สำหรับปุ่มเปลี่ยนหน้า */
        .pagination {
            text-align: center;
            margin-top: 45px;
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

        tr {
            box-shadow: 0px 5px 10px rgba(0, 0, 0, 0.12);
            border-collapse: collapse;
            padding: 8px;
        }

        /* CSS เมื่อโฮเวอร์ลูกศร */
        a:hover i.fa-arrow-left,
        a:hover i.fa-arrow-right {
            color: #771111; /* เปลี่ยนสีของลูกศรเมื่อโฮเวอร์ */
        }

        .read-more-link i.fa-arrow-right {
            margin-left: 5px; /* ระยะห่างระหว่างข้อความ "Read More" กับลูกศร */
            transition: margin-left 0.3s ease-in-out;
            opacity: 0; /* เริ่มต้นซ่อนลูกศร */
        }

        .read-more-link i.fa-arrow-left {
            margin-left: 5px; /* ระยะห่างระหว่างข้อความ "Read More" กับลูกศร */
            transition: margin-left 0.3s ease-in-out;
            opacity: 0; /* เริ่มต้นซ่อนลูกศร */
        }

        .read-more-link:hover i.fa-arrow-right {
            margin-left: 10px; /* ระยะห่างระหว่างข้อความ "Read More" กับลูกศรเมื่อ hover */
            opacity: 1; /* แสดงลูกศรเมื่อ hover */
        }

        .read-more-link:hover i.fa-arrow-left {
            margin-left: 10px; /* ระยะห่างระหว่างข้อความ "Read More" กับลูกศรเมื่อ hover */
            opacity: 1; /* แสดงลูกศรเมื่อ hover */
        }

    </style>
</head>
<%
    Personnel personnel = (Personnel) session.getAttribute("personnel");
    Admin admin = (Admin) session.getAttribute("admin");
    String flag = "";
    if (personnel != null) {
        flag = "personnel";
    } else if (admin != null) {
        flag = "admin";
    } else {
        flag = "null";
    }
%>
<c:set var="flag" value="<%=flag%>"/>
<body>
<nav class="gtco-nav" role="navigation">
    <div class="gtco-container">
        <div class="row" style="display: block">
            <c:choose>
                <c:when test="${flag.equals('admin')}">
                    <jsp:include page="/WEB-INF/JSP/nav_admin.jsp"/>
                </c:when>
                <c:otherwise>
                    <jsp:include page="/WEB-INF/layouts/nav.jsp"/>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
</nav>
<br><br><br><br><br><br><br>
<c:choose>
    <c:when test=""></c:when>
    <c:otherwise></c:otherwise>
</c:choose>
<c:choose>
    <c:when test="${flag.equals('admin')}">
<div class="top_content" >
    <div align="center">
        <h2 style="color: #a41212; font-size: 30px;font-family: Kanit; font-weight: bold">จัดการข้อมูลศิษย์เก่า</h2>
        <br>
    </div>
    <div>
        <input type="text" id="searchInput" style="width: 50%" onkeyup="search()" placeholder="Search for names.."
               title="Type in a name">
    </div>
    <div>
        <a href="${pageContext.request.contextPath}/alumni/do_addAlumni">
            <button style="width: 80px; margin-left: 85% ; background-color: #FFFFFF;margin-bottom: 10px;margin-top: 65px;">
                <img src="${pageContext.request.contextPath}/assets/image/bookmark-plus.png" style="width: 30px; ">
            </button>
        </a>
        <br>
    </div>
</div>
<table align="center" class="list_manage" style="margin-top: 30px">
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
        <tr class="block_alumni_manage"
            data-name=" ${alumni.id} ${alumni.firstname} ${alumni.lastname} ${alumni.position}">
            <td><img style="width: 50px; height: 60px; object-fit: cover; "
                     src="${pageContext.request.contextPath}/assets/image/alumni/${alumni.image}"></td>
            <td>${alumni.firstname} ${alumni.lastname}</td>
            <td>${alumni.id}</td>
            <td>${alumni.position}</td>
            <td>${alumni.company}</td>
            <td><a href="${pageContext.request.contextPath}/alumni/${alumni.id}/update"><img
                    src="${pageContext.request.contextPath}/assets/image/edit.png" style="width: 20px"></a></td>
            <td>
                <a href="javascript:void(0);"
                   onclick="confirmDelete('${pageContext.request.contextPath}/alumni/${alumni.id}/delete')">
                    <img src="${pageContext.request.contextPath}/assets/image/dustbin.png" style="width: 20px">
                </a>
            </td>
        </tr>

    </c:forEach>
</table>
<br><br>
<!-- ปุ่มเปลี่ยนหน้า -->
<div class="pagination">
    <!-- ปุ่ม "ก่อนหน้า" -->
    <a href="#" onclick="prevPage()" style="text-decoration: none;font-family: Kanit;color: #000"
       class="fw-medium read-more-link">
        <i class="fa fa-arrow-left"></i> ก่อนหน้า
    </a>

    <!-- ปุ่ม "ถัดไป" -->
    <a href="#" onclick="nextPage()" style="text-decoration: none;font-family: Kanit;color: #000"
       class="fw-medium read-more-link">
        ถัดไป <i class="fa fa-arrow-right"></i>
    </a>
</div>
<br><br>
<footer>
    <jsp:include page="/WEB-INF/layouts/footer.jsp"/>
</footer>
</c:when>
<c:otherwise>
    <br>
    <br>
    <br>
    <br>
    <h3 align="center" style="font-family: Kanit">คุณไม่มีสิทธิ์ในหน้านี้</h3>
</c:otherwise>
</c:choose>
</body>


<script>
    //////////////////////////เช็คการลบศิษย์เก่า///////////////////////////////////////////
    function confirmDelete(deleteUrl) {
        if (confirm("คุณแน่ใจหรือว่าต้องการลบ?")) {
            window.location.href = deleteUrl;
        }
    }
</script>

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

    /////////////////////////เช็คค้นหา///////////////////////////////////

    function search() {
        var input = document.getElementById("searchInput").value.toLowerCase();
        var rows = document.querySelectorAll(".block_alumni_manage");
        var table = document.querySelector("table");

        // ซ่อนทั้งตารางก่อนที่จะทำการค้นหา
        table.style.display = "none";

        rows.forEach(function (row) {
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
