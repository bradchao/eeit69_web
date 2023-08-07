<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>    
<%
	request.setCharacterEncoding("UTf-8");
	String account = request.getParameter("account");

	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection(
		"jdbc:mysql://localhost/iii", "root", "root");
	
	String sql = "SELECT * FROM member WHERE account = ?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, account);
	ResultSet rs = pstmt.executeQuery();

	if (rs.next()){
		out.print("Account already EXIST!");
	}else{
		out.print("");
	}
		
%>