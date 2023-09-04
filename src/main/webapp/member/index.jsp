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
	section > #div02 {order:2; width : 40%}
	#p01 {text-align: center;}
	#p02 {text-align: right;}
</style>
</head>
<body>
	<%@ include file="../default/header.jsp" %>
	<section>
		<div id="div01">
			<p id="p01">
				내 사전에 불가능은 없다.<br>
				불가능은 소극적인 자의 환영이며<br>
				비겁한 자의 도피처이다.<br>
				<br><br>
			</p>
			<p id="p02">- 나폴레옹</p>
		</div>
		<div id="div02">
		
		</div>
	</section>
	
	<hr>
</body>
</html>