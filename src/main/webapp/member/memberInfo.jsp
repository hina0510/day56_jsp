<%@page import="day56_jsp.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	section {padding :2% 10%; display:flex; flex-flow: row;}
	section > #div01 {order:1; width : 100%; margin: 0 33%;}
	h1 {text-align: center; }
</style>
</head>
<body>
	<c:choose>
		<c:when test="${s_id ==null }">
			<script type="text/javascript">
				location.href="/day56_jsp/member/login.jsp";
			</script>
		</c:when>
		<c:otherwise>
			<%@ include file="../default/header.jsp" %>
			<%@page import="day56_jsp.MemberDTO"%>
			<%@page import="java.util.ArrayList"%>
			<jsp:useBean id="dao" class="day56_jsp.MemberDAO"/>
			<c:set var="list" value="${dao.getList() }"/>
			<section>
				<div id="div01">
					<h1>회원 목록</h1>
					<table border="1">
						<tr>
							<th>아이디</th>
							<th>이름</th>
							<th>주소</th>
						</tr>
						<c:forEach var="d" items="${list }">
							<tr>
							<td>${d.id}</td>
							<td><a href="detail.jsp?id=${d.id}">${d.name}</a></td>
							<td>${d.addr}</td>
						</tr>
						</c:forEach>
					</table>
				</div>
			</section>
		</c:otherwise>
	</c:choose>
	<hr>
</body>
</html>