<%@page import="com.mysql.cj.jdbc.ha.BestResponseTimeBalanceStrategy"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Object obj = session.getAttribute("lottery");
	if (obj == null){
		response.sendRedirect("brad50.jsp");
		//response.sendError(HttpServletResponse.SC_NOT_FOUND);
	}else{
		int lottery =  (Integer)session.getAttribute("lottery");
		pageContext.setAttribute("lottery", lottery);
	}
%>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	I am brad51<hr />
	${lottery }
	<hr />
	<a href="logout.jsp">Logout</a>
	</body>
</html>