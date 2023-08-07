<%@page import="org.json.JSONObject"%>
<%@page import="org.json.JSONArray"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<c:import 
	var="data"
	url="https://data.moa.gov.tw/Service/OpenData/ODwsv/ODwsvAgriculturalProduce.aspx">
</c:import>
<%
	String json = (String)pageContext.getAttribute("data");

	Class.forName("com.mysql.cj.jdbc.Driver");
	Properties prop = new Properties();
	prop.put("user", "root");
	prop.put("password", "root");
	Connection conn = DriverManager.getConnection(
			"jdbc:mysql://localhost/iii", prop);
	String sql = "INSERT INTO gift (name,feature,country)" + 
			" VALUES (?,?,?)";
	PreparedStatement pstmt = conn.prepareStatement(sql);


	JSONArray root = new JSONArray(json);
	for (int i=0; i<root.length(); i++){
		JSONObject row = root.getJSONObject(i);
		//out.print(row.getString("Name") + "<br />");
		
		pstmt.setString(1, row.getString("Name"));
		pstmt.setString(2, row.getString("Feature"));
		pstmt.setString(3, row.getString("County"));
		pstmt.executeUpdate();
		
	}
	
	out.print("Finish");

%>