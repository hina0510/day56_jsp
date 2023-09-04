<%@page import="java.sql.PreparedStatement"%>
<%@page import="day56_jsp.DBConnect"%>
<%@page import="java.sql.Connection"%>
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
	<% request.setCharacterEncoding("utf-8"); %>
	<jsp:useBean id="dao" class="day56_jsp.MemberDAO" />
	<c:set var="result" value="${dao.modify(param.id, param.pwd, param.name, param.addr, param.tel) }"/>
	
	<c:choose>
      <c:when test="${result eq 0 }">
         <script type="text/javascript">
            alert("문제가 발생하였습니다.");
            location.href="detail.jsp?id="+${param.id};
         </script>
      </c:when>
      
      <c:otherwise>
         <script type="text/javascript">
            alert("수정하였습니다.");
            location.href="detail.jsp?id="+${param.id};
            // 스크립트랑 jsp가 달라서 그냥 id라고 작성하면 id를 읽어올 수가 없음.
            // 그래서 꺽쇠를 사용하면 읽어와서 이동이 가능해진다.
         </script>
      </c:otherwise>
   </c:choose>
</body>
</html>