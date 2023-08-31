<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="it_sci.model.Admin" %>
<%@ page import="it_sci.model.Personnel" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  Admin admin = (Admin) session.getAttribute("admin");
  Personnel personnel = (Personnel) session.getAttribute("personnel");

  String  user = "";
  if (admin != null){
    user = "admin";
  } else if (personnel != null) {
    user = "personnel";
  }else {
    user ="null";
  }
%>

<c:set var="user" value="<%=user%>"></c:set>
<c:choose>
  <c:when test="${user.equals('admin')}">
    <jsp:include page="/WEB-INF/JSP/Nav_Admin.jsp"/>
  </c:when>
  <c:when test="${user.equals('personnel')}">
    <jsp:include page="/WEB-INF/JSP/Personnel/nav_personnel.jsp"/>
  </c:when>
  <c:otherwise>
    <jsp:include page="/WEB-INF/layouts/nav.jsp"/>
  </c:otherwise>
</c:choose>
