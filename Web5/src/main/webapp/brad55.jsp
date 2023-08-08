<%@page import="java.util.Date"%>
<%@page import="java.util.Locale"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			Locale locale = request.getLocale();
			String lang = locale.getLanguage();
			String country = locale.getCountry();
			pageContext.setAttribute("lang", lang + "_" + country);
			
			Date now = new Date();
			pageContext.setAttribute("now", now);
		%>
		<fmt:setLocale value="${lang }"/>
		<fmt:setBundle basename="res"/>
		<h1><fmt:message key="companyName" /></h1>
		<hr />
		<fmt:message key="hello" /><fmt:message key="world" />
		<hr />
		<fmt:setTimeZone value="Asia/Taipei"/>
		Taipei: <fmt:formatDate value="${now }" 
			pattern="yyyy-MM-dd HH:mm:ss"/>
		<hr />
		<fmt:setTimeZone value="Asia/Tokyo"/>
		Japan: <fmt:formatDate value="${now }" 
			pattern="yyyy-MM-dd HH:mm:ss"/>
		<hr />
		<fmt:setTimeZone value="Europe/Berlin"/>
		German: <fmt:formatDate value="${now }" 
			pattern="yyyy-MM-dd HH:mm:ss"/>
		
	</body>
</html>