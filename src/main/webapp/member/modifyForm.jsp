<%@page import="day56_jsp.MemberDAO"%>
<%@page import="day56_jsp.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
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
	<c:set var="dto" value="${dao.getMember( param.id ) }" />
	<%@ include file="../default/header.jsp" %>
		<form action="modify.jsp" method="post">
		아이디<input type="text" name="id" readonly value="${dto.id }"><br>
		비밀번호<input type="text" name="pwd" value="${dto.pwd} "><br>
		이름<input type="text" name="name" value="${dto.name} "><br>
		주소<input type="text" name="addr" value="${dto.addr} "><br>
		전화번호<input type="text" name="tel" value="${dto.tel} "><br>
		<input type="submit" value="완료">
		<a href="memberInfo.jsp">취소</a>
		</form>
</body>
</html>