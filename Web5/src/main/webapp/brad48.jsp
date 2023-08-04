<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<sql:setDataSource
	driver="com.mysql.cj.jdbc.Driver"
	url="jdbc:mysql://localhost/iii"
	user="root"
	password="root"
/>
<sql:query var="rs">
	SELECT * FROM foods
</sql:query>

<c:set var="rpp">10</c:set>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<a href="">上頁</a> | <a href="">下頁</a>
		<hr /> 
		<table border="1" width="100%">
			<tr>
				<th>#</th>
				<th>Name</th>
			</tr>
			<c:forEach items="${rs.rows }" var="row">
				<tr>
					<td>${row.id }</td>
					<td>${row.name }</td>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>