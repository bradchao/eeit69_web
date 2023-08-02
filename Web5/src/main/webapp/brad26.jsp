<%@page import="tw.brad.apis.Bike"%>
<%
	String x = request.getParameter("x");
	Bike b2 =  (Bike)request.getAttribute("bike");
%>
I am brad26<br >
<%= x %><br />
<%= b2 %>