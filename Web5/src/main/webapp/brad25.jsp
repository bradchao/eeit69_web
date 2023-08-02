<%@page import="tw.brad.apis.Bike"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Bike b1 = new Bike("brad");
	request.setAttribute("bike", b1);
	b1.upSpeed();b1.upSpeed();b1.upSpeed();b1.upSpeed();
%>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>Brad Big Company</h1>
		<hr />
		<%@ include file="brad26.jsp" %>
		<hr />
		<jsp:include page="brad27.jsp">
			<jsp:param value="100" name="x"/>
			<jsp:param value="33" name="y"/>
		</jsp:include>
		
	</body>
</html>