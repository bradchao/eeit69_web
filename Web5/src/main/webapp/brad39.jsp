<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		${paramValues.habby[0] }
		${paramValues.habby[1] }
		${paramValues.habby[2] }
		${paramValues.habby[3] }
		${paramValues.habby[4] }
		${paramValues.habby[5] }
		<hr />
		Method: <%= request.getMethod() %><br />
		Method: ${pageContext.request.method }<hr />
		IP : <%= request.getRemoteAddr() %><br />
		IP : ${pageContext.request.remoteAddr }<hr />
		Locale: <%= request.getLocale() %><br />
		Locale: ${pageContext.request.locale }<hr />
		Language: <%= request.getLocale().getDisplayLanguage() %><br />
		Language: ${pageContext.request.locale.displayLanguage }<br />
		
		
	</body>
</html>