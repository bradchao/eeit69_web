<%@page import="tw.brad.apis.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>    
<%
	Member member = (Member)session.getAttribute("member");
	if (member == null){
		response.sendRedirect("login.html");
	}
%>

<sql:setDataSource
	driver="com.mysql.cj.jdbc.Driver"
	url="jdbc:mysql://localhost/iii"
	user="root"
	password="root"
/>
<sql:query var="rs">
	SELECT * FROM gift
</sql:query>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	Welcome, ${member.realName }<hr />
	<a href="logout.jsp">Logout</a>
	<hr />
	<a href="addGift.jsp">New Gift</a><br />
	<table border="1" width="100%">
		<tr>
			<th>#</th>
			<th>Name</th>
			<th>Feature</th>
			<th>Country</th>
		</tr>
		<c:forEach items="${rs.rows }" var="row">
			<tr>
				<td>${row.id }</td>
				<td>${row.name }</td>
				<td>${row.feature }</td>
				<td>${row.country }</td>
			</tr>
		</c:forEach>
	</table>
	
	
	</body>
</html>