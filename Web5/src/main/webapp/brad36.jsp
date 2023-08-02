<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="tw.brad.apis.*" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		Math.random() => <%= Math.random() %>
		<hr />
		Math.random() => ${Math.random() }
		<hr />
		${BradUtils.sayYa() }
		<hr />
		${BradUtils.sayYa(param.name) }
		<hr />
	</body>
</html>