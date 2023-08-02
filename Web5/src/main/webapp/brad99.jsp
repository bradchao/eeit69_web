<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int ROW, COL, START;

	String row = request.getParameter("row");
	String col = request.getParameter("col");
	String start = request.getParameter("start");
	
	try{
		ROW = Integer.parseInt(row);
		COL = Integer.parseInt(col);
		START = Integer.parseInt(start);
	}catch(Exception e){
		ROW = 2; COL = 4; START = 2;
	}

%>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<form>
			Row: <input type="number" name="row" value="<%= ROW %>" />
			Column: <input type="number" name="col" value="<%= COL %>" />
			Start: <input type="number" name="start" value="<%= START %>" />
			<input type="submit" value="change" />
		</form>
		<hr />
		<table border="1" width="100%">
		<%
			for (int k=0; k<ROW; k++){
				out.println("<tr>");
				for (int j=START; j<=(START+COL-1); j++){
					
					int newj = j + k * COL;
					
					if ( k % 2 == 0){
						if ( j % 2 == 0){
							out.println("<td bgcolor='pink'>");
						}else{
							out.println("<td bgcolor='yellow'>");
						}
					}else{
						if ( j % 2 != 0){
							out.println("<td bgcolor='pink'>");
						}else{
							out.println("<td bgcolor='yellow'>");
						}
					}
					
					
					
					for (int i=1; i<=9; i++){
						int r = newj * i;
						out.println(
							String.format(
								"%d x %d = %d<br />", newj, i, r));
					}
					out.println("</td>");
				}
				out.println("</tr>");
			}
		%>
		</table>
	
	</body>
</html>