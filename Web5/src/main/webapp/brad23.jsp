<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String x = request.getParameter("x");
	String y = request.getParameter("y");
	String op = request.getParameter("op");
	String r = "";
	try{
		int intX = Integer.parseInt(x);
		int intY = Integer.parseInt(y);
		
		switch (op){
			case "1": r += (intX + intY); break;
			case "2": r += (intX - intY); break;
			case "3": r += (intX * intY); break;
			case "4": 
				r += (intX / intY) + "......" + (intX % intY); 
				break;
		}
		
		
	}catch(Exception e){
		x = y = op = "";
	}
	
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<form action="brad23.jsp">
			<input name="x" value="<%= x %>" />
			<select name="op">
				<option value="1" <%= op.equals("1")?"selected":"" %>>加</option>
				<option value="2" <%= op.equals("2")?"selected":"" %>>減</option>
				<option value="3" <%= op.equals("3")?"selected":"" %>>乘</option>
				<option value="4" <%= op.equals("4")?"selected":"" %>>除</option>
			</select>
			<input name="y" value="<%= y %>" />
			<input type="submit" value="=" />
			<span><%= r %></span>
		</form>
	</body>
</html>