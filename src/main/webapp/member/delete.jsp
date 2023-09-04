<%@page import="day56_jsp.MemberDAO"%>
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
	<jsp:useBean id="dao" class="day56_jsp.MemberDAO" />
	<c:set var="result" value="${dao.deleteM(param.id) }"/>
	
	<c:choose>
      <c:when test="${result eq 0 }">
        <script type="text/javascript">
        	alert("문제가 발생하였습니다.");
			location.href="memberInfo.jsp";
		</script>
      </c:when>
      <c:otherwise>
        <script type="text/javascript">
			alert("삭제되었습니다");
		location.href="memberInfo.jsp";
	</script>
      </c:otherwise>
   </c:choose>
</body>
</html>