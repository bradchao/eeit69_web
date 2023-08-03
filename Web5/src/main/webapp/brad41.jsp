<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String[] var1 = {"Brad", "OK", "III"};
	//pageContext.setAttribute("var1", var1);
	
	String[] var2 = {"Brad2", "OK2", "III2"};
	//request.setAttribute("var1", var2);
	
	String[] var3 = {"Brad3", "OK3", "III3"};
	//session.setAttribute("var1", var3);
	
	String[] var4 = {"Brad4", "OK4", "III4"};
	application.setAttribute("var1", var4);
	
%>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		var1[0]: ${var1[0] }<br />
		var2[1]: ${var2[1] }<br />
		
	</body>
</html>