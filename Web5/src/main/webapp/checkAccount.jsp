<%@page import="tw.brad.apis.BCrypt"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTf-8");
	String account = request.getParameter("account");
	String passwd = request.getParameter("passwd");
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection(
		"jdbc:mysql://localhost/iii", "root", "root");
	
	String sql = "SELECT * FROM member WHERE account = ?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, account);
	ResultSet rs = pstmt.executeQuery();
	
	if (rs.next()){
		String hashPasswd = rs.getString("passwd");
		if (BCrypt.checkpw(passwd, hashPasswd)){
			response.sendRedirect("main.jsp");
		}else{
			session.invalidate();
			response.sendRedirect("login.html");
		}
	}else{
		session.invalidate();
		response.sendRedirect("login.html");
	}
	
	
%>