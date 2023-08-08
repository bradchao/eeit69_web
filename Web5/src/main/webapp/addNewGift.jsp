<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Object member = session.getAttribute("member");
	if (member == null){
		return;
	}

	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name"); 
	String feature = request.getParameter("feature"); 
	String country = request.getParameter("country"); 
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/iii", "root", "root");
	String sql = "INSERT INTO gift (name,feature,country) VALUES (?,?,?)";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, name);
	pstmt.setString(2, feature);
	pstmt.setString(3, country);
	
	int n = pstmt.executeUpdate();
	out.print(n>0?"OK":"XX");

%>