<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Integer max = Integer.parseInt(request.getParameter("max")); 
	out.print((int)(Math.random()* max +1));
%>