<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Profile</title>
</head>
<body>
<nav>
    <jsp:include page="/WEB-INF/JSP/Personnel/nav_personnel.jsp"/>
</nav>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en" >
<head>
    <meta charset="UTF-8">
    <title>${personnel_detail.firstname} ${personnel_detail.lastname}</title>
    <link href="${pageContext.request.contextPath}/assets/css/view_personnel.css" rel="stylesheet">
    <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.6.3/css/all.css'>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@300;400&display=swap" rel="stylesheet">

</head>
<body>
<!-- partial:index.partial.html -->
<br>
<div id="container">
    <div id="profile">
        <div id="image">
            <img src="${pageContext.request.contextPath}/assets/image/${personnel_detail.image}">
        </div>
        <p id="name">

                    <select name="major_id" id="major_id">
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
            <input type="text" id="fistname" name="academic_ranks_name" value="${personnel_detail.firstname}">
            <input type="text" id="lastname" name="academic_ranks_lastname" value="${personnel_detail.lastname}">
        <p id="designation"><br><span id="college"> ${personnel_detail.description}</span></p>
        <hr width="100%">
        <div id="about">
            <p style="display:inline;">About</p>
            <a href="#"><i class="fas fa-pen stroke-transparent-blue"></i></a>
        </div>
        <p id="year-graduation"><strong>Email:</strong>
            <input type="email" id="email" name="email" value="${personnel_detail.email}"><br></p>
        <p id="education"><strong>Pubilcations</strong>
            <br><input type="text" id="scolarlink" name="scolarlink" value="${personnel_detail.scolarlink}"></p>
        <p id="telephone"><strong>phone</strong><br>
            <input type="text" id="phone" name="email" value="${personnel_detail.phone}"></p>
    </div>
    <div id="info-cards">
        <div class="card">
            <p><i class="fas fa-graduation-cap stroke-transparent"></i>&nbsp;&nbsp;&nbsp;Education</p>
            <ul>
                <c:forEach var="ehd" items="${education_history_detail}">
                    <p><input type="text" id="ename" name="name" value=" ${ehd.firstname}"></p>
                    <p><input type="text" id="major" name="major" value=" ${ehd.major}"></p>
                    <p><input type="text" id="university" name="university" value=" ${ehd.university}"></p>
                    <p><input type="text" id="country" name="country" value=" ${ehd.country}"></p>
                    <p><input type="text" id="educationyear" name="educationyear" value=" ${ehd.educationyear}"></p>
                </c:forEach>

            </ul>
        </div>
        <div class="card">
            <p><i class="fas fa-briefcase stroke-transparent"></i>&nbsp;&nbsp;&nbsp;Work Experience</p>
            <ul>

                <p><input type="text" id="work" name="work" value="${personnel_detail.workexperience}"></p>
            </ul>
        </div>
        <div class="card">
            <p><i class="fas fa-briefcase stroke-transparent"></i>&nbsp;&nbsp;&nbsp;Research Grants</p>
            <ul>
                <c:forEach var="rgd" items="${research_grant_detail}">
                    <p><input type="text" id="grantname" name="grantname" value=" ${rgd.researchgrantname}"><br></p>
                </c:forEach>
            </ul>
        </div>
        <div class="card">
            <p><i class="fas fa-award stroke-transparent"></i>&nbsp;&nbsp;&nbsp;Award</p>
            <ul>
                <c:forEach var="award" items="${award_detail}">
                    <p><input type="text" id="award_name" name="award_name" value=" ${award.name}"><br></p>
                    <p><input type="text" id="year" name="year" value=" ${award.year}"><br></p>
                </c:forEach>
            </ul>
        </div>
        <div class="card">
            <p><i class="fas fa-briefcase stroke-transparent"></i>&nbsp;&nbsp;&nbsp;Expertise</p>
            <ul>

                <p><input type="text" id="expertise" name="expertise" value="${personnel_detail.expertise}"></p>
            </ul>
        </div>
    </div>
</div>
</body>
</html>
