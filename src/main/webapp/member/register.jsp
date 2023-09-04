<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="day56_jsp.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	%>
	<jsp:useBean id="dto" class="day56_jsp.MemberDTO" />
	<jsp:setProperty property="*" name="dto"/>
	
	<jsp:useBean id="dao" class="day56_jsp.MemberDAO" />
	<c:set var="id" value="${ param.id }" />
	
	<c:set var="result" value="${dao.register(dto) }"/>
	
	<c:choose>
      <c:when test="${result eq 0 }">
         <script type="text/javascript">
            alert("문제가 발생하였습니다.");
            location.href="login.jsp";
         </script>
      </c:when>
      
      <c:otherwise>
         <script type="text/javascript">
		alert("가입 완료");
		location.href="login.jsp";
	</script>
      </c:otherwise>
   </c:choose>
	
</body>
</html>