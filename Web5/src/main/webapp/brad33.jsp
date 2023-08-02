<%@page import="tw.brad.apis.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Member member1 = new Member(1,"brad","Brad", "1999-01-02");
	//
	/*
	*/
%>
<jsp:useBean id="member2" class="tw.brad.apis.Member"></jsp:useBean>    
<jsp:setProperty property="id" name="member2" value="2" />
<jsp:setProperty property="account" name="member2" value="eric" />
<jsp:setProperty property="realname" name="member2" value="Eric" />
<jsp:setProperty property="birthday" name="member2" value="1999-02-03" />
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		Member1:
		<%= member1.getId() %> : <%= member1.getAccount() %>
		<hr />
		Member2:
		<%= member2.getId() %> : <%= member2.getAccount() %>
		<hr />
		Member2:
		<jsp:getProperty property="id" name="member2"/> :
		<jsp:getProperty property="account" name="member2"/>
		<hr />
		
	</body>
</html>