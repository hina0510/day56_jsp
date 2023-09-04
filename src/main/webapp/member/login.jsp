<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	section {padding :2% 10%; display:flex; flex-flow: row;}
	section > #div01 {order:1; width : 60%}
	h1 {text-align: center;}
	h4 {text-align: left;}
	section > #div02 {order:2; width : 40%}
</style>
</head>
<body>
	<%@ include file="../default/header.jsp" %>
	<section>
		<div id="div01">
			<h1>로그인 페이지 입니다</h1>
		</div>
		<div id="div02">
			<form action="loginCheck.jsp" method="post">
				<table>
					<tr>
						<td><input type="text" name="id" placeholder="아이디"></td>
						<td rowspan="2"><input type="submit" value="로그인"></td>
					</tr>
					<tr>
						<td><input type="password" name="pwd" placeholder="비밀번호"></td>
					</tr>
				</table>
			</form>
		<h4><a href="registerForm.jsp">회원가입</a></h4>
		</div>
	</section>
</body>
</html>