<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>    
<!DOCTYPE html>
<html>
	<head>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js">
		</script>
		<script type="text/javascript">
			function add(){
				$.get("addNewGift.jsp?" + 
						"name="+$('#name').val() +
						"&feature=" + $('#feature').val() +
						"&country=" + $('#country').val(),
						function(data, status){
							if (status == 'success'){
								location.href = "main.jsp";	
							}
				});
			}
		</script>	
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		Name: <input type="text" id="name" /><br />
		Feature: <input type="text" id="feature" /><br />
		Country: <input type="text" id="country" /><br />
		<input type="button" value="Add" onclick="add()"/>
	</body>
</html>