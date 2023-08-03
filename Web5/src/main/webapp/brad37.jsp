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
		<form>
			<input name="x" value="${param.x }">
			<select name="op">
				<option value="1" ${(param.op=="1")?"selected":"" }>加</option>
				<option value="2" ${(param.op=="2")?"selected":"" }>減</option>
				<option value="3" ${(param.op=="3")?"selected":"" }>乘</option>
				<option value="4" ${(param.op=="4")?"selected":"" }>除</option>
			</select>
			<input name="y" value="${param.y }">
			<input type="submit" value="=">
			<span>${BradUtils.calc(param.x, param.y, param.op) }</span>
		</form>	
	</body>
</html>