<%@tag import="java.util.HashMap"%>
<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ tag dynamic-attributes="product" %>
<%
	HashMap<String,String> ptr = 
		(HashMap<String,String>)jspContext.getAttribute("product");
	out.print("<tr>");
	out.print("<td>" + ptr.get("name") + "</td>");
	out.print("<td>" + ptr.get("price") + "</td>");
	out.print("</tr>");
%>