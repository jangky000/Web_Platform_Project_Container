<%@ page import = "java.sql.ResultSet"%>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.SQLException" %>
<%@ page import = "java.sql.DriverManager" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("euc-kr"); %>

<%    //사용자 정보
   //String sess = (String) session.getAttribute("id");
   String sess = (String)request.getParameter("id");
   String seq = (String)request.getParameter("comment");
%>

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
%>
<%
   //SQL 데이터 추가 수정 삭제 실행할 객체 생성
   Statement stmt = conn.createStatement();
   
   String sql = "";
   
   //sql = "SELECT us_name, us_grade, us_email, us_img, dp_name FROM user a JOIN department b ON a.dp_seq = b.dp_seq WHERE a.us_id = '"+ id +"'";
   //stmt.executeQuery(sql);
   
   // 쿼리 결과를 저장한 메모리 영역을 참조하는 객체
   //ResultSet rs = null;

   if( request.getParameter("comment") != null){
      if(request.getParameter("comment_insert") != null){
         //sql = "DELETE FROM user WHERE us_id = '" + sess + "';";
         sql = "INSERT INTO project_community(pj_seq, us_id, pc_text) VALUES ("+ request.getParameter("comment") +", '" + sess + "', '" + request.getParameter("comment_insert") + "');";
         out.print("코멘트 입력");
         out.print("<br>sql: "+sql);
         out.print("<br>결과: " + stmt.executeUpdate(sql));
         //response.sendRedirect("hidden.jsp");
      }
      if(request.getParameter("comment_update") != null){
         //sql = "DELETE FROM user WHERE us_id = '" + sess + "';";
         sql = "UPDATE project_community SET pc_text = '" + request.getParameter("comment_text") + "' WHERE pc_seq = "+ request.getParameter("comment_update") + ";";
         out.print("코멘트 수정");
         out.print("<br>sql: "+sql);
         out.print("<br>결과: " + stmt.executeUpdate(sql));
         //session.invalidate();
         //response.sendRedirect("hidden.jsp");
         //need_refresh="true";
      }
      if(request.getParameter("comment_delete") != null){
         sql = "DELETE FROM project_community WHERE pc_seq = " + request.getParameter("comment_delete") + ";";
         //sql = "INSERT INTO project_community(pj_seq, us_id, pc_text) VALUES ("+ request.getParameter("comment") +", '" + sess + "', '" + request.getParameter("comment_insert") + "');";
         out.print("코멘트 삭제");
         out.print("<br>sql: "+sql);
         out.print("<br>결과: " + stmt.executeUpdate(sql));
         //session.invalidate();
         //response.sendRedirect("hidden.jsp");
         //need_refresh="true";
      }
   }
   
%>
<%
   //resultset 해제
   //if(rs != null) try{rs.close();System.out.println("해제성공");}catch(SQLException e){}
   //쿼리 구문 객체 해제
   if(stmt != null) try{stmt.close();System.out.println("해제성공");}catch(SQLException e){}
   //커넥션 해제
   if(conn != null) try{conn.close();System.out.println("해제성공");}catch(SQLException e){}
%>


<!DOCTYPE HTML>

<html>
    <head>
       
    </head>
   <body>
    <!--  <meta http-equiv='refresh' content='5; url=project_summary.jsp?id=<sess >&seq=< seq >'></meta><body onload="parent.hidden.location.href='hidden.jsp?sql='"> -->
    </body>
</html>