<%@ page import="java.io.File" %>
<%@ page import = "java.sql.ResultSet"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import = "java.sql.Statement" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	Connection conn;
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	//연결
	String url ="jdbc:mysql://localhost:3306/webdb?useSSL=false&serverTimezone=Asia/Seoul";
	String user = "root";
	String password = "12341234"; 
	
	conn = DriverManager.getConnection(url, user, password);
	System.out.println("연결 성공");
	Statement stmt = conn.createStatement();
	String id = (String)request.getParameter("id");
	String seq = (String)request.getParameter("seq");
	
	String sql ="delete from recruit_project where rp_seq ="+seq;
	out.write(sql);
    stmt.executeUpdate(sql);
%>


</body>
</html>