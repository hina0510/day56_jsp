<%@page import="day56_jsp.MemberDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@page import="day56_jsp.DBConnect"%>
<%@page import="day56_jsp.MemberDTO"%>
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
	<jsp:useBean id="dao" class="day56_jsp.MemberDAO"/>
	<c:set var="id" value="${ param.id }" />
	<c:set var="pwd" value="${ param.pwd }" />
	${id }
	${pwd }
	<c:set var="result" value="${dao.loginChk( param.id, param.pwd) }"/>
	<c:choose>
		<c:when test="${result == 0}">
			<c:set var="s_id" value="${ param.id }" scope="session" />
			<script type="text/javascript">
				alert("로그인 성공");
				location.href="successLogin.jsp";
			</script>
		</c:when>
		<c:when test="${result == 1}"><%--비밀번호 틀림 --%>
			<script type="text/javascript">
				alert("비밀번호가 일치하지 않습니다.");
				location.href="login.jsp";
			</script>
		</c:when>
		<c:otherwise><%--존재하지 않는 id--%>
			<script type="text/javascript">
				alert("등록되지 않은 아이디입니다.");
				location.href="login.jsp";
			</script>
		</c:otherwise>
	</c:choose> 
</body>
</html>