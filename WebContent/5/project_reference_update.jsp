<%@ page import = "java.sql.ResultSet"%>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.SQLException" %>
<%@ page import = "java.sql.DriverManager" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
   //연결
   Connection conn = null;
   try {
      //드라이버 로딩
      Class.forName("com.mysql.cj.jdbc.Driver");
      
      //연결
      String url ="jdbc:mysql://localhost:3306/webdb?useSSL=false&serverTimezone=Asia/Seoul";
      String user = "root";
      String password = "12341234"; //이건 각자 설정값에 따라 다름, 아마 1111로 되어있을 가능성이 크다.
      
      conn = DriverManager.getConnection(url, user, password);
      System.out.println("연결 성공");
      
   } catch (ClassNotFoundException | SQLException e) {
      e.printStackTrace();
   }
   String id = (String)request.getParameter("id");
   String tmp = (String)request.getParameter("seq");
   String ref = (String)request.getParameter("ref");
   String memo = (String)request.getParameter("memo");
   
   

   
   Statement stmt;
   stmt = conn.createStatement();
   
   String sql = "update project set pj_ref='"+ ref + "', pj_text='" + memo+ "' where pj_seq= "+tmp ;
   
   out.print(sql);
   stmt.executeUpdate(sql);
   
%>    
</body>
</html>
