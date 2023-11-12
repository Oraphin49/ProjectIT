<%@ page import="it_sci.model.Personnel" %>
<%@ page import="it_sci.model.Admin" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Edit Profile</title>
    <link href="img/favicon.ico" rel="icon">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/home/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/home/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/nav-gtco.css" rel="stylesheet">
    <style>
        body {
            background-color: #f0f0f0; /* เปลี่ยนสีพื้นหลังของหน้าเว็บ */
            font-family: Kanit;
        }

        .card {
            border: 1px solid #ccc; /* เปลี่ยนสีกรอบของการ์ด */
            padding: 10px;
            margin: 10px;
            border-radius: 5px;
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* เพิ่มเงาในการ์ด */
        }

        .card p {
            font-size: 18px; /* เปลี่ยนขนาดตัวอักษรของข้อความในการ์ด */
            color: #333; /* เปลี่ยนสีข้อความ */
            font-family: Kanit;
        }
        #profile p,
        #profile textarea,
        #info-cards p,
        #info-cards textarea,
        table {
            font-family: 'Kanit', sans-serif;
        }
        #profile textarea{
            height: 100px;
        }
        #fistname, #lastname {
            font-family: Kanit;
        }

        #description {
            font-family: Kanit;
        }

        input[type="submit"] {
            background-color: #007bff; /* เปลี่ยนสีพื้นหลังของปุ่ม */
            color: #fff; /* เปลี่ยนสีข้อความบนปุ่ม */
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 50%;
        }

        input[type="submit"]:hover {
            background-color: #0056b3; /* เปลี่ยนสีพื้นหลังของปุ่มเมื่อโฮเวอร์ */
        }

        #profile {
            flex: 0;
            padding: 20px;
            background-color: #ececec;
            box-shadow: 0 3px 10px 0 rgba(0, 0, 0, .1);
        }
        #selectedAcademicRanks {
            font-family: 'Kanit', sans-serif;
        }
        #container {
            font-family: 'Kanit', sans-serif;
        }
        button, input, optgroup, select, textarea {
            margin: 0;
            font-family: inherit;
            font-size: inherit;
            line-height: inherit;
            width: 100%;
        }
    </style>
</head>
<%--//////////////////////////ตรงนี้//////////////////////////////--%>
    <%
        Personnel personnel = (Personnel) session.getAttribute("personnel");
        Admin admin = (Admin) session.getAttribute("admin");
        String flag = "";
        if (personnel != null){
            flag = "personnel";
        }else if(admin != null){
            flag = "admin";
        }else {
            flag = "null";
        }
    %>
<c:set var="flag" value="<%=flag%>"/>
<%--////////////////////////////////////////////////////////////--%>

<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${personnel_detail.firstname} ${personnel_detail.lastname}</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/nav-gtco.css">
    <link href="${pageContext.request.contextPath}/assets/css/edit_profile.css" rel="stylesheet">
    <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.6.3/css/all.css'>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">
</head>
<body>
<nav class="gtco-nav" role="navigation">
    <div class="gtco-container">
        <div class="row" style="display: block">
            <%--//////////////////////////ตรงนี้//////////////////////////////--%>
            <c:choose>
                <c:when test="${flag.equals('personnel')}">
                    <jsp:include page="/WEB-INF/JSP/Personnel/nav_personnel.jsp"/>
                </c:when>
                <c:otherwise>
                    <jsp:include page="/WEB-INF/layouts/nav.jsp"/>
                </c:otherwise>
            </c:choose>
            <%--////////////////////////////////////////////////////////////--%>

        </div>
    </div>
</nav>
<br><br><br><br><br>
<%--//////////////////////////ตรงนี้//////////////////////////////--%>
<c:choose>
    <c:when test=""></c:when>
    <c:otherwise></c:otherwise>
</c:choose>
<c:choose>
    <c:when test="${flag.equals('personnel')}">
        <div id="container" style="margin-top: 80px">
            <div id="profile">
                <form action="${pageContext.request.contextPath}/personnel/${personnel_detail.id}/edit/save"
                      onsubmit="return validateForm()" method="POST"
                      enctype="multipart/form-data"><%--@declare id="selectedacademicranks"--%>
                    <div class="form-group">
                            <%--@declare id="currentimage"--%><label for="currentImage">รูปภาพปัจจุบัน:</label>
                        <img src="${pageContext.request.contextPath}/assets/image/personnel/${personnel_detail.image}"
                             alt="Current Image" width="200">
                    </div>
                    <div class="form-group">
                        <label for="newImageFile">อัปโหลดรูปภาพใหม่ (ถ้าต้องการ):</label>
                        <input type="file" id="newImageFile" name="newImageFile">
                    </div>
                    <label for="scolarlink">สิ่งพิมพ์</label>
                    <input type="text" id="scolarlink" name="scolarlink" value="${personnel_detail.scolarlink}">
                    <p><i class="fas fa-briefcase stroke-transparent"></i>&nbsp;&nbsp;&nbsp;ตำแหน่งวิชาการ</p>
                    <p><input type="text" id="position" name="position" value="${personnel_detail.position}"></p>
                    <p>ชื่อ:</p>
                    <input type="text" id="fistname" name="firstname" value="${personnel_detail.firstname}">
                    <p>นามสกุล:</p>
                    <input type="text" id="lastname" name="lastname" value="${personnel_detail.lastname}">
                    <p>สถานะ:</p>
                    <input type="text" id="status" name="status" value="${personnel_detail.status}">
                    <p>รายละเอียด:</p>
                    <textarea type="text" id="description" name="description" >${personnel_detail.description}</textarea>
                    <hr width="100%">
                    <div id="about">
                        <p style="display:inline;">ข้อมูล</p>
                        <a href="#"><i class="fas fa-pen stroke-transparent-blue"></i></a>
                    </div>
                    <p>อีเมล์:</p>
                    <input type="email" id="email" name="email" value="${personnel_detail.email}"><br></p>
                    <p>เบอร์โทร</p><br>
                    <input type="text" id="phone" name="phone" value="${personnel_detail.phone}"></p>
                    <p><i class="fas fa-briefcase stroke-transparent"></i>&nbsp;&nbsp;&nbsp;ความชำนาญ</p>
                    <p><textarea type="text" id="expertise" name="expertise" >${personnel_detail.expertise}</textarea>
                    </p>
                    <label for="selectedAcademicRanks">ตำแหน่งบริหาร </label>
                    <c:forEach var="academicRank" items="${academicRanks}">
                        <c:set var="isChecked" value="false"/>
                        <c:forEach var="selectedRank" items="${selectedAcademicRanks}">
                            <c:if test="${academicRank.id eq selectedRank.id}">
                                <c:set var="isChecked" value="true"/>
                            </c:if>
                        </c:forEach>
                        <c:choose>
                            <c:when test="${isChecked}">
                                <input type="checkbox" name="selectedAcademicRanks" value="${academicRank.id}" checked="checked"/>
                            </c:when>
                            <c:otherwise>
                                <input type="checkbox" name="selectedAcademicRanks" value="${academicRank.id}"/>
                            </c:otherwise>
                        </c:choose>
                        ${academicRank.name}
                    </c:forEach>

                    <br>
                    <input type="submit" value="บันทึก" class="btn btn-primary">
                </form>
            </div>
            <div id="info-cards">
                <div class="card">
                    <p><i class="fas fa-graduation-cap stroke-transparent"></i>&nbsp;&nbsp;&nbsp;ประวัติการศึกษา</p>
                    <table>
                        <thead>
                        <tr>
                            <th>ระดับการศึกษา</th>
                            <th>สาขา</th>
                            <th>มหาวิทยาลัย</th>
                            <th>จังหวัด</th>
                            <th>ปีที่จบ</th>
                            <th>จัดการ</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="ehd" items="${education_history_detail}">
                            <tr>
                                <td>${ehd.degreename}</td>
                                <td>${ehd.major}</td>
                                <td>${ehd.university}</td>
                                <td>${ehd.country}</td>
                                <td>${ehd.educationyear}</td>
                                <td>
                                    <input type="button" value="ลบ"
                                           onclick="if((confirm('คุณแน่ใจหรือว่าต้องการลบ?'))) { window.location.href='${pageContext.request.contextPath}/personnel/<%=personnel.getId()%>/${ehd.id}/delete'; return false; }"
                                           class="cancel-button"/>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>

                    <hr>
                    <form action="${pageContext.request.contextPath}/personnel/<%=personnel.getId()%>/save_education_add"
                          method="POST" onsubmit="return validateEducationForm()">
                        <table>
                            <tr>
                                <td>ระดับการศึกษา : <input name="degreename" id="degreename"></td>
                                <td>สาขา : <input name="major_name" id="major_name"></td>
                            </tr>
                            <tr>
                                <td>มหาลัย : <input name="university_name" id="university_name"></td>
                                <td>จังหวัด : <input name="country_name" id="country_name"></td>
                            </tr>
                            <tr>
                                <td>ปีที่จบ : <input name="educationyear" id="educationyear"></td>
                                <td><input type="submit" value="เพิ่ม" style="margin-top: 50%; margin-top: 10%"></td>
                            </tr>
                        </table>
                    </form>
                    </ul>
                </div>

                <div class="card">
                    <p><i class="fas fa-briefcase stroke-transparent"></i>&nbsp;&nbsp;&nbsp;ทุนวิจัย</p>
                    <table>
                        <thead>
                        <tr>
                            <th>ชื่อทุน</th>
                            <th>ปีที่ได้รับทุน</th>
                            <th>จัดการ</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="rgd" items="${research_grant_detail}">
                            <tr>
                                <td>${rgd.researchgrantname}</td>
                                <td>${rgd.researchgrantyear}</td>
                                <td>
                                    <input type="button" value="ลบ"
                                           onclick="if((confirm('คุณแน่ใจหรือว่าต้องการลบ?'))) { window.location.href='${pageContext.request.contextPath}/personnel/<%=personnel.getId()%>/${rgd.id}/remove'; return false; }"
                                           class="cancel-button"/>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <hr>
                    <form action="${pageContext.request.contextPath}/personnel/<%=personnel.getId()%>/save_research_add"
                          method="POST" onsubmit="return validateResearchForm()">
                        <table>
                            <tr>
                                <td>ชื่อทุน : <textarea name="research_name" id="research_name"></textarea></td>
                                <td>ปีที่ได้รับทุน : <input name="research_year" id="research_year"></td>
                                <td><input type="submit" value="เพิ่ม" style="width: 200%;margin-top: 50%;"></td>
                            </tr>
                        </table>
                    </form>
                </div>

                <div class="card">
                    <p><i class="fas fa-award stroke-transparent"></i>&nbsp;&nbsp;&nbsp;ผลงาน</p>
                    <table>
                        <thead>
                        <tr>
                            <th>ชื่อผลงาน</th>
                            <th>ปีที่ได้รับ</th>
                            <th>จัดการ</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="award" items="${award_detail}">
                            <tr>
                                <td>${award.name}</td>
                                <td>${award.year}</td>
                                <td>
                                    <input type="button" value="ลบ"
                                           onclick="if((confirm('คุณแน่ใจหรือว่าต้องการลบ?'))) { window.location.href='${pageContext.request.contextPath}/personnel/<%=personnel.getId()%>/${award.id}/remove_award'; return false; }"
                                           class="cancel-button"/>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <hr>
                    <form action="${pageContext.request.contextPath}/personnel/<%=personnel.getId()%>/save_award_add"
                          method="POST" onsubmit="return validateAwardForm()" >
                        <table>
                            <tr>
                                <td>ชื่อผลงาน : <textarea name="award_name" id="award_name"></textarea></td>
                                <td>ปีที่ได้รับ : <input name="award_year" id="award_year"></td>
                                <td><input type="submit" value="เพิ่ม" style="width: 200%;margin-top: 50%;"></td>
                            </tr>
                        </table>
                    </form>
                </div>

                <div class="card">
                    <p><i class="fas fa-briefcase stroke-transparent"></i>&nbsp;&nbsp;&nbsp;การบริการสังคม</p>
                    <table>
                        <thead>
                        <tr>
                            <th>ชื่อ</th>
                            <th>จัดการ</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="work" items="${work_experience_detail}">
                            <tr>
                                <td>${work.workexperiencename}</td>
                                <td>
                                    <input type="button" value="ลบ"
                                           onclick="if((confirm('คุณแน่ใจหรือว่าต้องการลบ?'))) { window.location.href='${pageContext.request.contextPath}/personnel/<%=personnel.getId()%>/${work.id}/remove_work'; return false; }"
                                           class="cancel-button"/>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <hr>
                    <form action="${pageContext.request.contextPath}/personnel/<%=personnel.getId()%>/save_work_add"
                          method="POST" onsubmit="return validateWorkForm()">
                        <table>
                            <tr>
                                <td>ชื่อ : <textarea name="work_name" id="work_name"></textarea></td>
                                <td><input type="submit" value="เพิ่ม" style="width: 200%;margin-top: 50%;"></td>
                            </tr>
                        </table>
                    </form>
                </div>

                <div class="card">
                    <p><i class="fas fa-briefcase stroke-transparent"></i>&nbsp;&nbsp;&nbsp;ผลงานที่ปรึกษา</p>
                    <table>
                        <thead>
                        <tr>
                            <th>ชื่อโครงงาน</th>
                            <th>ปีที่เป็นที่ปรึกษา</th>
                            <th>จัดการ</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="procon" items="${project_consultings_detail}">
                            <tr>
                                <td>${procon.name}</td>
                                <td>${procon.year}</td>
                                <td>
                                    <input type="button" value="ลบ"
                                           onclick="if((confirm('คุณแน่ใจหรือว่าต้องการลบ?'))) { window.location.href='${pageContext.request.contextPath}/personnel/<%=personnel.getId()%>/${procon.id}/remove_pro'; return false; }"
                                           class="cancel-button"/>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <hr>
                    <form action="${pageContext.request.contextPath}/personnel/<%=personnel.getId()%>/save_pro_add"
                          method="POST" onsubmit="return validateProForm()">
                        <table>
                            <tr>
                                <td>ชื่อโครงงาน : <input name="pro_name" id="pro_name"></td>
                                <td>ปีที่เป็นที่ปรึกษา : <input name="pro_year" id="pro_year"></td>
                                <td><input type="submit" value="เพิ่ม" style="width: 200%;margin-top: 50%;"></td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
        </div>
    </c:when>
    <%--//////////////////////////ตรงนี้//////////////////////////////--%>
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
    function PersonnelForm() {
        var firstName = document.getElementById("firstname").value;
        var lastName = document.getElementById("lastname").value;
        var email = document.getElementById("email").value;

        // ตรวจสอบค่าว่าง
        if (firstName.trim() === "") {
            alert("กรุณากรอกชื่อ");
            return false;
        }

        if (lastName.trim() === "") {
            alert("กรุณากรอกนามสกุล");
            return false;
        }

        if (email.trim() === "") {
            alert("กรุณากรอกอีเมล์");
            return false;
        }

        return true;
    }
</script>


<script>
    ///////////////////////////////////////script การศึกษา/////////////////////////////////////////////////////
    function validateEducationForm() {

        // เช็คชื่อประวัติการศึกษา
        var educationName = document.getElementById("degreename").value;
        if (educationName.trim() === "") {
            alert("กรุณากรอกชื่อ");
            return false;
        } else if (educationName.length < 2 || educationName.length > 50 || !/^[ก-๏เ-๛\s]+$/u.test(educationName)) {
            alert("ชื่อระดับการศึกษาต้องมีความยาวตั้งแต่ 2 ไม่เกิน 50 ตัวอักษร และใช้ได้เฉพาะภาษาไทยเท่านั้น");
            document.getElementById("degreename").value = "";
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
        } else if (!/^\d{4}$/.test(educationYear)) {
            alert("กรุณากรอกปีที่จบในรูปแบบตัวเลข 4 หลัก (พุทธศักราช)");
            document.getElementById("educationyear").value = "";
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
        } else if (!/^\d{4}$/.test(researchYear)) {
            alert("กรุณากรอกปีที่ได้รับทุนในรูปแบบตัวเลข 4 หลัก (พุทธศักราช)");
            document.getElementById("research_year").value = "";
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
            return false;
        }

        //เช็คปี
        var awardYear = document.getElementById("award_year").value;
        if (awardYear === "") {
            alert("กรุณากรอกปีที่ได้รับรางวัล");
            return false;
        } else if (!/^\d{4}$/.test(awardYear)) {
            alert("กรุณากรอกปีที่ได้รับรางวัลในรูปแบบตัวเลข 4 หลัก");
            document.getElementById("award_year").value = "";
            return false;
        }

        return true;
    }
</script>

<script>
    ///////////////////////////////////////script บริการวิชาการ/////////////////////////////////////////////////////
    function validateWorkForm() {

        //เช็คชื่อผลงาน
        var awardName = document.getElementById("work_name").value;
        if (awardName === "") {
            alert("กรุณากรอกชื่องานบริการ");
            document.getElementById("work_name").value = "";
            return false;
        }

        //เช็คปี
        var awardYear = document.getElementById("work_year").value;
        if (awardYear === "") {
            alert("กรุณากรอกปี");
            return false;
        } else if (!/^\d{4}$/.test(awardYear)) {
            alert("กรุณากรอกปีในรูปแบบตัวเลข 4 หลัก");
            document.getElementById("work_year").value = "";
            return false;
        }

        return true;
    }
</script>

<script>
    ///////////////////////////////////////script ที่ปรึกษาโครงงาน/////////////////////////////////////////////////////
    function validateProForm() {

        //เช็คชื่อผลงาน
        var proName = document.getElementById("pro_name").value;
        if (proName === "") {
            alert("กรุณากรอกชื่องานบริการ");
            document.getElementById("pro_name").value = "";
            return false;
        }

        //เช็คปี
        var proYear = document.getElementById("pro_year").value;
        if (proYear === "") {
            alert("กรุณากรอกปี");
            return false;
        } else if (!/^\d{4}$/.test(awardYear)) {
            alert("กรุณากรอกปีในรูปแบบตัวเลข 4 หลัก");
            document.getElementById("pro_year").value = "";
            return false;
        }

        return true;
    }
</script>


<script>
    $(document).ready(function () {
        $('#selectedAcademicRanks').multiselect();
    });
</script>
<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
<!-- Main -->
<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>

</html>
