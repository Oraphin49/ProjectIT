<%@ page import="it_sci.model.Personnel" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Profile</title>
</head>
    <%
    Personnel personnel = (Personnel) session.getAttribute("personnel");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en" >
<head>
    <meta charset="UTF-8">
    <title>${personnel_detail.firstname} ${personnel_detail.lastname}</title>
    <link href="${pageContext.request.contextPath}/assets/css/edit_profile.css" rel="stylesheet">
    <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.6.3/css/all.css'>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">
</head>
<body>
<nav style="box-sizing: revert;">
    <jsp:include page="/WEB-INF/JSP/Personnel/nav_personnel.jsp"/>
</nav>
<br><br>
<div id="container" style="margin-top: 80px">
    <div id="profile">
        <form action="${pageContext.request.contextPath}/personnel//${personnel_detail.id}/edit/save" method="POST">
            <label for="image">รูปภาพ:</label>
            <input type="text" id="image" name="image" class="form-control" value="${personnel_detail.image}">
        <p id="name">
            <p id="ar">ตำแหน่งทาวิชาการ:</p>
                    <select name="ar_id" id="ar_id">
                        <c:forEach items="${academic_ranks_detail}" var="academic_ranks">
                            <c:choose>
                                <c:when test="${academic_ranks.id eq personnel_detail.academic_ranks.id}">
                                    <option value="${academic_ranks.id}" selected>${academic_ranks.name}</option>
                                </c:when>
                                <c:otherwise>
                                    <option value="${academic_ranks.id}">${academic_ranks.name}</option>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </select>
            <p id="fist">ชื่อ:</p>
            <input type="text" id="fistname" name="firstname" value="${personnel_detail.firstname}">
            <p id="last">นามสกุล:</p>
            <input type="text" id="lastname" name="lastname" value="${personnel_detail.lastname}">
            <p id="descriptions">รายละเอียด:</p>
            <input type="text" id="description" name="description" value="${personnel_detail.description}">
        <hr width="100%">
        <div id="about">
            <p style="display:inline;">ข้อมูล</p>
            <a href="#"><i class="fas fa-pen stroke-transparent-blue"></i></a>
        </div>
            <p id="year-graduation">อีเมล์:</p>
            <input type="email" id="email" name="email" value="${personnel_detail.email}"><br></p>
            <p id="education">Pubilcations</p>
            <br><input type="text" id="scolarlink" name="scolarlink" value="${personnel_detail.scolarlink}"></p>
        <p id="telephone">เบอร์โทร</p><br>
            <input type="text" id="phone" name="phone" value="${personnel_detail.phone}"></p>
        <p><i class="fas fa-briefcase stroke-transparent"></i>&nbsp;&nbsp;&nbsp;ประวัติการทำงาน</p>
            <p><input type="text" id="workexperience" name="workexperience" value="${personnel_detail.workexperience}"></p>
        <p><i class="fas fa-briefcase stroke-transparent"></i>&nbsp;&nbsp;&nbsp;ความชำนาญ</p>
        <p><input type="text" id="expertise" name="expertise" value="${personnel_detail.expertise}"></p>
            <p><i class="fas fa-briefcase stroke-transparent"></i>&nbsp;&nbsp;&nbsp;ตำแหน่ง</p>
            <p><input type="text" id="position" name="position" value="${personnel_detail.position}"></p>
            <input type="submit" value="บันทึก" class="btn btn-primary">
        </form>
    </div>
    <div id="info-cards">
        <div class="card">
            <p><i class="fas fa-graduation-cap stroke-transparent"></i>&nbsp;&nbsp;&nbsp;ประวัติการศึกษา</p>
            <ul>
                <c:forEach var="ehd" items="${education_history_detail}">
                    <li>${ehd.firstname} ${ehd.major} ${ehd.university} ${ehd.country} ${ehd.educationyear}
                        <input type="button" value="ลบ"
                               onclick="if((confirm('คุณแน่ใจหรือว่าต้องการลบ?'))) { window.location.href='${pageContext.request.contextPath}/personnel/<%=personnel.getId()%>/${ehd.id}/delete'; return false; }"
                               class="cancel-button"/></li><br>
                </c:forEach>
                <hr>
                <form action="${pageContext.request.contextPath}/personnel/<%=personnel.getId()%>/save_education_add" method="POST" onsubmit="return validateEducationForm()">
                    <table>
                        <tr>
                            <td>ระดับการศึกษา : <input name="education_name" id="education_name"></td>
                            <td>สาขา : <input name="major_name" id="major_name"></td>
                        </tr>
                        <tr>
                            <td>มหาลัย : <input name="university_name" id="university_name"></td>
                            <td>จังหวัด : <input name="country_name" id="country_name"></td>
                        </tr>
                        <tr>
                            <td>ปีที่จบ : <input name="educationyear" id="educationyear"></td>
                            <td><input type="submit" value="เพิ่ม"></td>
                        </tr>
                    </table>
                </form>
            </ul>
        </div>
        <div class="card">
            <p><i class="fas fa-briefcase stroke-transparent"></i>&nbsp;&nbsp;&nbsp;ทุนวิจัย</p>
            <ul>
                <c:forEach var="rgd" items="${research_grant_detail}">
                    <li>${rgd.researchgrantname} ${rgd.researchgrantyear}
<%--                    <p><input type="text" id="grantname" name="grantname" value=" ${rgd.researchgrantname}"><br></p>--%>
<%--                    <p><input type="text" id="grantyear" name="grantyear" value=" ${rgd.researchgrantyear}"><br></p>--%>
                    <input type="button" value="ลบ"
                           onclick="if((confirm('คุณแน่ใจหรือว่าต้องการลบ?'))) { window.location.href='${pageContext.request.contextPath}/personnel/<%=personnel.getId()%>/${rgd.id}/remove'; return false; }"
                           class="cancel-button"/></li><br>

                </c:forEach>
                <hr>
                <form action="${pageContext.request.contextPath}/personnel/<%=personnel.getId()%>/save_research_add" method="POST"  onsubmit="return validateResearchForm()">
                    <table>
                        <tr>
                            <td>ชื่อทุน : <input name="research_name" id="research_name"></td>
                            <td>ปีที่ได้รับทุน : <input name="research_year" id="research_year"></td>
                        </tr>
                            <td><input type="submit" value="เพิ่ม"></td>
                        </tr>
                    </table>
                </form>
            </ul>
        </div>
        <div class="card">
            <p><i class="fas fa-award stroke-transparent"></i>&nbsp;&nbsp;&nbsp;ผลงาน</p>
            <ul>
                <c:forEach var="award" items="${award_detail}">
                    <li>${award.name} ,${award.year}</li>
<%--                    <p><input type="text" id="award_name" name="award_name" value=" ${award.name}"><br></p>--%>
<%--                    <p><input type="text" id="year" name="year" value=" ${award.year}"><br></p>--%>
                    <input type="button" value="ลบ"
                           onclick="if((confirm('คุณแน่ใจหรือว่าต้องการลบ?'))) { window.location.href='${pageContext.request.contextPath}/personnel/<%=personnel.getId()%>/${award.id}/remove_award'; return false; }"
                           class="cancel-button"/></li><br>

                </c:forEach>
                <hr>
                <form action="${pageContext.request.contextPath}/personnel/<%=personnel.getId()%>/save_award_add" method="POST">
                    <table>
                        <tr>
                            <td>ชื่อผลงาน : <input name="award_name" id="award_name"></td>
                            <td>ปีที่ได้รับ : <input name="award_year" id="award_year"></td>
                        </tr>
                        <td><input type="submit" value="เพิ่ม"></td>
                        </tr>
                    </table>
                </form>
            </ul>
        </div>
    </div>
</div>
</body>


<script>
    ///////////////////////////////////////script การศึกษา/////////////////////////////////////////////////////
    function validateEducationForm() {

        // เช็คชื่อประวัติการศึกษา
        var educationName = document.getElementById("education_name").value;
        if (educationName.trim() === "") {
            alert("กรุณากรอกชื่อ");
            return false;
        } else if (educationName.length < 2 || educationName.length > 50 || !/^[ก-๏เ-๛\s]+$/u.test(educationName)) {
            alert("ชื่อระดับการศึกษาต้องมีความยาวตั้งแต่ 2 ไม่เกิน 50 ตัวอักษร และใช้ได้เฉพาะภาษาไทยเท่านั้น");
            document.getElementById("education_name").value = "";
            return false;
        }

// เช็คชื่อสาขา
        var majorName = document.getElementById("major_name").value;
        if (majorName.trim() === "") {
            alert("กรุณากรอกชื่อสาขา");
            return false;
        } else if (majorName.length < 2 || majorName.length > 50 || !/^[ก-๏เ-๛\s]+$/u.test(majorName)) {
            alert("ชื่อสาขาต้องมีความยาวตั้งแต่ 2 ไม่เกิน 50 ตัวอักษร และใช้ได้เฉพาะภาษาไทยเท่านั้น");
            document.getElementById("major_name").value = "";
            return false;
        }

// เช็คชื่อมหาวิทยาลัย
        var universityName = document.getElementById("university_name").value;
        if (universityName.trim() === "") {
            alert("กรุณากรอกชื่อมหาวิทยาลัย");
            return false;
        } else if (universityName.length < 2 || universityName.length > 45 || !/^[ก-๏เ-๛\s]+$/u.test(universityName)) {
            alert("ชื่อมหาวิทยาลัยมีความยาวตั้งแต่ 2 ไม่เกิน 45 ตัวอักษร และใช้ได้เฉพาะภาษาไทยเท่านั้น");
            document.getElementById("university_name").value = "";
            return false;
        }

// เช็คชื่อเมือง
        var countryName = document.getElementById("country_name").value;
        if (countryName.trim() === "") {
            alert("กรุณากรอกชื่อเมือง");
            return false;
        } else if (countryName.length < 2 || countryName.length > 45 || !/^[ก-๏เ-๛\s]+$/u.test(countryName)) {
            alert("ชื่อเมืองมีความยาวตั้งแต่ 2 ไม่เกิน 45 ตัวอักษร และใช้ได้เฉพาะภาษาไทยเท่านั้น");
            document.getElementById("country_name").value = "";
            return false;
        }
        //เว้นไว้ก่อน
        var educationYear = document.getElementById("educationyear").value;
        if (educationYear === "") {
            alert("กรุณากรอกปีที่จบ");
            return false;
        }
        return true;
    }
</script>



<script>
    ///////////////////////////////////////script ทุนวิจัย /////////////////////////////////////////////////////
    function validateResearchForm() {
        //เช็คชื่อทุน
        var researchName = document.getElementById("research_name").value;
        if (researchName === "") {
            alert("กรุณากรอกชื่อทุน");
            return false;
        }

        //เช็คปีที่ได้รับทุน
        var researchYear = document.getElementById("research_year").value;
        if (researchYear === "") {
            alert("กรุณากรอกปีที่ได้รับทุน");
            return false;
        }

        return true;
    }
</script>



<script>
    ///////////////////////////////////////script ผลงาน/////////////////////////////////////////////////////
    function validateAwardForm() {

        //เช็คชื่อผลงาน
        var awardName = document.getElementById("award_name").value;
        if (awardName === "") {
            alert("กรุณากรอกชื่อผลงาน");
            return  false;
        }

        //เช็คปี
        var awardYear = document.getElementById("award_year").value;
        if (awardYear === "") {
            alert("กรุณากรอกปีที่ได้รับรางวัล");
            return  false;
        }

        return true;
    }
</script>


</html>
