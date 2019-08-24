<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
  
 <% request.setCharacterEncoding("euc-kr"); %>
    
<%

   String id = (String)request.getParameter("id");
   //String strProfile = (String)request.getParameter("profile");
   String strTmp = (String)request.getParameter("seq");
   String raseq = (String)request.getParameter("raseq");
   
   Class.forName("com.mysql.jdbc.Driver");
   
   Connection conn = null;
   String url ="jdbc:mysql://localhost:3306/webdb?useSSL=false&serverTimezone=Asia/Seoul";
   String user = "root";
   String password = "12341234";
   
   conn = DriverManager.getConnection(url,user,password);
   Statement stmt;
   stmt = conn.createStatement();
   
   String query = null;
   //int nrows;
   
   query = "delete from recruit_project_applier where ra_seq="+raseq;
   out.print("sql: " + query);
   out.print("결과: " + stmt.executeUpdate(query));
   
   
   if(stmt != null) try{stmt.close();System.out.println("해제성공");}catch(SQLException e){}	
   if(conn != null) try{conn.close();System.out.println("해제성공");}catch(SQLException e){}
%>    
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <meta http-equiv='refresh' content='5; url=project_recruit_summary.jsp?id=<%=id %>&seq=<%= strTmp %>'></meta> -->

<title>Processing</title>
</head>
<body>
</body>
</html>