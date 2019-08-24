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
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
//try {
    //드라이버 로딩
    Connection conn;
    Class.forName("com.mysql.cj.jdbc.Driver");
    
    //연결
    String url ="jdbc:mysql://localhost:3306/webdb?useSSL=false&serverTimezone=Asia/Seoul";
    String user = "root";
    String password = "12341234"; 
    
    conn = DriverManager.getConnection(url, user, password);
    System.out.println("연결 성공");
    Statement stmt = conn.createStatement();

// } catch (ClassNotFoundException | SQLException e) {
//   e.printStackTrace();
// }
	

	//##############################################
	request.setCharacterEncoding("UTF-8");

	String directory = application.getRealPath("5/image/");
	int maxSize = 1024 * 1024 * 100;
	
	
    MultipartRequest multipartRequest 
	= new MultipartRequest(request, directory, maxSize, "UTF-8",
			new DefaultFileRenamePolicy());
    
	String seq = (String)multipartRequest.getParameter("seq");
	String id = (String)multipartRequest.getParameter("id");
	String rp_name = (String)multipartRequest.getParameter("rp_name");
	String rp_start = (String)multipartRequest.getParameter("rp_start");
	String us_name = (String)multipartRequest.getParameter("us_name");
	String us_email = (String)multipartRequest.getParameter("us_email");
	String ct_name = (String)multipartRequest.getParameter("ct_name");
	String rp_text = (String)multipartRequest.getParameter("rp_text");
    String fileName = multipartRequest.getOriginalFileName("file");
    String fileRealName = multipartRequest.getFilesystemName("file");
    
	
	 
    String sql ="update recruit_project set rp_img='image/" + fileRealName + "' where rp_seq ="+seq;
    stmt.executeUpdate(sql);
    
    out.write("sql: "+sql+"\n");
    
    String sql2 = "update recruit_project set rp_name ='" + rp_name + "', rp_start='" + rp_start + "', rp_text ='" +rp_text+"' where rp_seq ="+seq;
    stmt.executeUpdate(sql2);
    
    out.write("sql2: "+sql2+"\n");
    
    String select_us = "select us_id from recruit_project where rp_seq ="+seq;
    ResultSet res = stmt.executeQuery(select_us);
   
   if(res.next()){
   	String query = "update user set us_name= '"+us_name+"',us_email='"+ us_email+"' where us_id='"+res.getString("us_id")+"'";
   		out.write(query);
     	stmt.executeUpdate(query);
    }
    
    out.write("ct_name: "+ct_name+"\n");
    
     String select_query = "select ct_seq from category where ct_name='"+ct_name+"'";
    
    
    ResultSet rs = stmt.executeQuery(select_query);
    if(rs.next()){
    	String sql3 = "update recruit_project set ct_seq ="+rs.getString("ct_seq") +" where rp_seq ="+seq;
    	out.write("sql3: "+sql3+"\n");
    	stmt.executeUpdate(sql3);
    	
    }  
	//new FileDAO().upload(fileName,fileRealName, seq);
	out.write("파일명: " + fileName);
	out.write("실제파일명: " + fileRealName);
	out.write("쿼리문: " + stmt.executeUpdate(sql));
	out.write("seq: " + seq);
	out.write("id: " + id);
%>

</body>
</html>