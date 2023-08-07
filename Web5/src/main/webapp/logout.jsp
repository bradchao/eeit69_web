<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//session.setAttribute("lottery", null);
	session.invalidate();
	response.sendRedirect("brad50.jsp");
%>