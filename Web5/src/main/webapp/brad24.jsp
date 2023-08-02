<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			Date now = new Date();
			SimpleDateFormat sdf =
				new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
			String nowString = sdf.format(now);
			out.println(nowString);
			
			
			HashMap map = new HashMap();
		%>
	</body>
</html>