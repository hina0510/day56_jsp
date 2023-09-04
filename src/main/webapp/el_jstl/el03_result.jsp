<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	
	<h3>result</h3>
	name : ${name }<br><!-- 받아올 수 있는 범위가 가장 작은 값 session  -->
	page : ${pageScope.name }<br><!-- 다른 페이지에서 받아오지 못함 -->
	request : ${requestScope.name }<br><!-- 다른 페이지에서 받아오지 못함 -->
	session : ${sessionScope.name }<br>
	application : ${applicationScope.name }<br>
</body>
</html>