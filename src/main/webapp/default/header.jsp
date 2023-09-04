<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	div {text-align: right;}
</style>
</head>
<body>
	header.jsp<br>
	<hr>
	<div>
		<a href="<%=request.getContextPath() %>/member/index.jsp">HOME</a>
		<a href="<%=request.getContextPath() %>/member/memberInfo.jsp">회원정보</a>
		<c:choose>
			<c:when test="${s_id ==null }">
				<a href="<%=request.getContextPath() %>/member/login.jsp">로그인</a>
			</c:when>
			<c:otherwise>
				<a href="<%=request.getContextPath() %>/member/logout.jsp">로그아웃</a>
			</c:otherwise>
		</c:choose>
		<hr>
	</div>
	
</body>
</html>