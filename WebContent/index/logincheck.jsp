<%@ page import = "java.sql.ResultSet"%>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.SQLException" %>
<%@ page import = "java.sql.DriverManager" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("euc-kr"); %>

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


<!DOCTYPE HTML>

<html>
    <head>
        <title>login check</title>
    </head>
    <body>
<% 
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	//out.print(id);
	if(id == null || pw == null){
		response.sendRedirect("login.jsp");
	}
%>

<%
//프로젝트 목록

	//SQL 데이터 추가 수정 삭제 실행할 객체 생성
	Statement stmt = conn.createStatement();
	
	String sql = "SELECT us_id, us_password FROM user WHERE us_id='" + id + "'";
	stmt.executeQuery(sql);
	
	// 쿼리 결과를 저장한 메모리 영역을 참조하는 객체
	ResultSet rs = null;
	rs = stmt.executeQuery(sql);
	
	String us_id = null;
	String us_password = null;
	
	String check ="";
	
	//데이터 가져오기
	if(rs.next()){
		//out.print("<br>");
		//out.print(rs.getString("pj_name")+"<br>");
		us_id = rs.getString("us_id");
		us_password = rs.getString("us_password");
			
		//로그인 확인
		if(us_id.equals(id) && us_password.equals(pw)){
			//out.print("<script>alert('패스워드를 확인해주세요'); history.go(-1)</script>");
			//session.setAttribute("id", us_id);
			check ="welcome.jsp?id=" + id;
			//response.sendRedirect("welcome.jsp?id='"+ id + "'");
		}
		else{
			//out.print("로그인");
			check="login.jsp";
			//response.sendRedirect("login.jsp");
			//out.print(us_id+ us_password);
		}

	} 
	else{
		//out.print("<script>alert('ID를 확인해주세요'); history.go(-1)</script>");
		check="login.jsp";
		//response.sendRedirect("login.jsp");
	}
%>

<%
	//resultset 해제
	if(rs != null) try{rs.close();System.out.println("해제성공");}catch(SQLException e){}
	//쿼리 구문 객체 해제
	if(stmt != null) try{stmt.close();System.out.println("해제성공");}catch(SQLException e){}
	//커넥션 해제
	if(conn != null) try{conn.close();System.out.println("해제성공");}catch(SQLException e){}

	response.sendRedirect(check);
%>

    </body>
</html>
