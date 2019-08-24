<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
  
 <% request.setCharacterEncoding("euc-kr"); %>
    
<%

   String id = (String)request.getParameter("id");
   //String strProfile = (String)request.getParameter("profile");
   String strTmp = (String)request.getParameter("seq");
   String us_ids[] = request.getParameterValues("us_id");
   
   Class.forName("com.mysql.jdbc.Driver");
   
   Connection conn = null;
   String url ="jdbc:mysql://localhost:3306/webdb?useSSL=false&serverTimezone=Asia/Seoul";
   String user = "root";
   String password = "12341234";
   
   conn = DriverManager.getConnection(url,user,password);
   Statement stmt = conn.createStatement();
   
   String select_query = null;
   String insert_project_query = null;
   String select_project_query = null;
   String insert_member_query = null;
   String delete_applier_query = null;
   String delete_rp_query = null;
   
   //int nrows;
   
   select_query = "select rp_seq, ct_seq, rp_name, rp_img, rp_start, rp_ref, rp_text from recruit_project where rp_seq=" + strTmp;
   out.print("recruit_project 정보 가져오기<br>");
   out.print("sql: " + select_query + "<br>");
   ResultSet rs = stmt.executeQuery(select_query);
   ResultSet rs2 = null;
   
   if(rs.next()){
		insert_project_query = "insert into project(ct_seq, pj_name, pj_img, pj_start, pj_ref, pj_text) values(" +  rs.getString("ct_seq")+ ", '" + rs.getString("rp_name") + "', '" + rs.getString("rp_img") + "', '" + rs.getString("rp_start") + "', '" + rs.getString("rp_ref") + "', '" + rs.getString("rp_text") + "')";
		out.print("프로젝트 insert 부분");
		out.print("sql: " + insert_project_query + "<br>");
		out.print("결과: " + stmt.executeUpdate(insert_project_query));
		
		
		select_project_query = "select pj_seq from project order by pj_seq desc limit 1";
		out.print("pj_seq 번호 찾기");
		out.print("sql: "+ select_project_query + "<br>");
		rs2 = stmt.executeQuery(select_project_query);
		//
		if(rs2.next()){
			String pjseq=rs2.getString("pj_seq");
			
			insert_member_query = "insert into project_member(pj_seq, us_id) values(" + pjseq +",'"+ id +"')";
			out.print("멤버 입력 <br>");
			out.print("sql: "+ insert_member_query +"<br>");
			out.print("결과: " + stmt.executeUpdate(insert_member_query)+"<br>");
			
			for(String us_id : us_ids){
				insert_member_query = "insert into project_member(pj_seq, us_id) values("+pjseq +",'"+ us_id +"')";
				out.print("멤버 입력 <br>");
				out.print("sql: "+ insert_member_query +"<br>");
				out.print("결과: " + stmt.executeUpdate(insert_member_query)+"<br>");
			}
			//삭제
			delete_applier_query = "delete from recruit_project_applier where rp_seq=" + strTmp;
			out.print("지원자 삭제 <br>");
			out.print("sql: "+ delete_applier_query +"<br>");
			out.print("결과: " + stmt.executeUpdate(delete_applier_query)+"<br>");
			
			delete_rp_query = "delete from recruit_project where rp_seq=" + strTmp;
			out.print("모집 삭제 <br>");
			out.print("sql: "+ delete_rp_query +"<br>");
			out.print("결과: " + stmt.executeUpdate(delete_rp_query)+"<br>");
		}
		
   }	
   
   else{
	   //검색 결과 없음
   }
   
   
   //out.print("결과: " + stmt.executeUpdate(query));
   
   
   if(stmt != null) try{stmt.close();System.out.println("해제성공");}catch(SQLException e){}	
   if(conn != null) try{conn.close();System.out.println("해제성공");}catch(SQLException e){}
%>    
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--<meta http-equiv='refresh' content='5; url=project_recruit.jsp?id=<id >'></meta>  -->


<title>Processing</title>
</head>
<body>
</body>
</html>