<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="brad" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1><brad:test2 /></h1>
		<brad:test1 /><hr />
		<brad:test3 />
		<hr />
		<table border="1" width="100%">
			<tr>
				<th>Name</th>
				<th>Price</th>
			</tr>
			<brad:test5 name="Item1" price="100" />
			<brad:test5 name="Item2" price="120" />
			<brad:test5 name="Item3" price="300" />
			<brad:test5 name="Item4" price="50" />
		</table>
	</body>
</html>