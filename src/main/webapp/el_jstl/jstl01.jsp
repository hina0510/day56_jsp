<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	jstl01.jsp<br>
	<c:set var="num" value="값 지정" /><%-- 변수 지정 --%>
	값 : ${ num }
	<hr>
	<c:set var="id" value="abc" />
	<c:if test="${id eq 'abc' }"><%-- if --%>
		두 값은 같다 : ${id }<br>
	</c:if>
	<hr>
	<%
		String[] arr = {"111", "222", "333"};
	%>
	<c:set var="values" value="<%=arr %>" />
	<c:forEach var="i" begin="10" end="20" step="2"><%-- for --%>
		${i },
	</c:forEach>
	<hr>
	<c:forEach var="item" items="${values }"><%-- for : 자료 --%>
		${item },
	</c:forEach>
	<hr>
	<%-- 
	<c:import url="el01.jsp" />	경로의 페이지 내용을 현재 페이지에 가져옴
	<c:redirect url="el02_login.jsp" />	현재 페이지는 보이지 않고 바로 경로로 이동
	 --%>
	 <c:set var="s_name" value="세션설정" scope="session" />
	 <c:remove var="s_name111" scope="session"/>
	 <a href="jstl02.jsp">jstl02 이동</a>
	 <hr>
	 <c:set var="nick"> 홍길동</c:set>
	 <c:choose>
	 	<c:when test="${nick=='홍길동' }">
	 		이름 : ${nick }
	 	</c:when><%-- if, else if --%>
	 	<c:when test="${nick ne '홍길동' }">
	 		이름 : ${nick }
	 	</c:when>
	 	<c:otherwise>
	 		else
	 	</c:otherwise><%-- else --%>
	 </c:choose>
	 <hr>
	 <c:set var="n" value="100" />
	 <c:choose>
	 	<c:when test="${n>=100 }">
	 		100보다 크다
	 	</c:when>
	 	<c:otherwise>
	 		else
	 	</c:otherwise><%-- else --%>
	 </c:choose>
</body>
</html>