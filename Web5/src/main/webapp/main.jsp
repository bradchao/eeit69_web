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

<c:if test="${!empty param.delid }">
	<sql:update>
		DELETE FROM gift WHERE id = ?
		<sql:param>${param.delid }</sql:param>
	</sql:update>
</c:if>


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
			<th>Delete</th>
			<th>Edit</th>
		</tr>
		<c:forEach items="${rs.rows }" var="row">
			<tr>
				<td>${row.id }</td>
				<td>${row.name }</td>
				<td>${row.feature }</td>
				<td>${row.country }</td>
				<script>
					function delAlert(name){
						let isDel = confirm("是否刪除 *" + name + "* 嗎?");
						return isDel;
					}
				</script>
				<td><a href="?delid=${row.id }" onclick="return delAlert('${row.name }');">Del</></td>
				<td><a href="edidGift.jsp?editid=${row.id }" >Edit</></td>
			</tr>
		</c:forEach>
	</table>
	
	
	</body>
</html>