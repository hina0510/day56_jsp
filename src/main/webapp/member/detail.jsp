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
<style type="text/css">
	section {padding :2% 10%; display:flex; flex-flow: row;}
	section > #div01 {order:1; width : 100%; margin: 0 35%;}
	h1 {text-align: center; }
	.b {text-align: center; font-weight: bold;}
	.c {text-align: left;}
</style>
</head>
<body>
	<%@ include file="../default/header.jsp" %>
	<jsp:useBean id="dao" class="day56_jsp.MemberDAO"/>
	<c:set var="dto" value="${dao.getMember( param.id ) }" />
		<section>
			<div id="div01">
				<h1>개인 정보</h1>
					<table>
						<tr>
							<td class="b">아 이 디</td>
							<td class="c">${dto.id }</td>
						</tr>
						<tr>
							<td class="b">비밀번호</td>
							<td class="c">${dto.pwd }</td>
						</tr>
						<tr>
							<td class="b">이 름</td>
							<td class="c">${dto.name }</td>
						</tr>
						<tr>
							<td class="b">주 소</td>
							<td class="c">${dto.addr }</td>
						</tr>
						<tr>
							<td class="b">전화번호</td>
							<td class="c">${dto.tel }</td>
						</tr>
					</table>
					<button type="button" onclick="location.href='modifyForm.jsp?id=${dto.id }'">수정</button>
					<button type="button" onclick="location.href='delete.jsp?id=${dto.id }'">삭제</button>
					
			</div>
		</section>
	<hr>
</body>
</html>