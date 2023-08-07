<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int lottery = (int)(Math.random()*49+1);

	session.setAttribute("lottery", lottery);
	pageContext.setAttribute("lottery", lottery);

%>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	${lottery }
	<hr />
	<a href="brad51.jsp">brad51</a>
	</body>
</html>