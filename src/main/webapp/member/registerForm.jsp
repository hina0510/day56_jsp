<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	section {padding :2% 10%; display:flex; flex-flow: row;}
	section > #div01 {order:1; width : 60%; margin: 0 30%;}
	section > #div02 {order:2; width : 40%;}
	h1 {text-align: center;}
</style>
</head>
<body>
	<%@ include file="../default/header.jsp" %>
	<section>
		<div id="div01">
		<h1>회원가입</h1>
			<form action="register.jsp">
				<input type="text" name="id" placeholder="아이디"><br>
				<input type="password" name="pwd" placeholder="비밀번호"><br>
				<input type="text" name="name" placeholder="이름"><br>
				<input type="text" name="addr" placeholder="주소"><br>
				<input type="text" name="tel" placeholder="전화번호"><br>
				<input type="submit" value="회원가입">
			</form>
		</div>
		<div id="div02">
		
		</div>
	</section>
	
	<hr>
</body>
</html>