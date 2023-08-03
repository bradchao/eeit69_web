<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	//pageContext.setAttribute("x", 10);
%>
<c:set var="x" value="10"></c:set>
<c:set var="x" value="100" scope="request" />
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		x = ${x }<br />	
		x = ${requestScope.x }<br />
		Hello, World<br />
		<%= "Hello, World" %><br />
		<c:out value="Hello, World"></c:out><br />
		x = <c:out value="${x }"></c:out><br />
		i = <c:out value="${param.i }" default="no value" />
		
		
	</body>
</html>