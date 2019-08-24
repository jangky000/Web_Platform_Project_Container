<%@ page import = "java.sql.ResultSet"%>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.SQLException" %>
<%@ page import = "java.sql.DriverManager" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("euc-kr"); %>

<%
	String id = (String) request.getParameter("id");
	
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
        <title>header</title>

    </head>


    <body>
      <table  bordercolor="green" width ="100%" height=""align="center">
         <tr>
             <td bordercolor = "green" colspan = "3" >
	             <a href="index.jsp" target="main" onclick="parent.header.location.href='welcome.jsp?id=<%= id %>'"><img src="logo.png" width="100%" height="80%"></a>
             </td>

             <td width = 45% align="center">
             	<a href="../1/main1.jsp?id=<%= id %>" target="main">Team1</a>&nbsp;&nbsp;&nbsp;
             	<a href="../2/main2.jsp?id=<%= id %>" target="main">Team2</a>&nbsp;&nbsp;&nbsp;
             	<a href="../3/main3.jsp?id=<%= id %>" target="main">Team3</a>&nbsp;&nbsp;&nbsp;
             	<a href="../4/main4.jsp?id=<%= id %>" target="main">Team4</a>&nbsp;&nbsp;&nbsp;
             	<a href="../5/main5.jsp?id=<%= id %>" target="main">Team5</a>&nbsp;&nbsp;&nbsp;
             	<a href="../6/main6.jsp?id=<%= id %>" target="main">Team6</a>&nbsp;&nbsp;&nbsp;
             	<a href="../7/main7.jsp?id=<%= id %>" target="main">Team7</a>&nbsp;&nbsp;&nbsp;
             	<a href="../8/main8.jsp?id=<%= id %>" target="main">Team8</a>
             </td>
             <td>
             <%
				//사용자 정보
				//String id = "";
				//String id = (String) request.getParameter("id");
				//out.print(id);
				if(id == null){
					out.print("회원정보 없음 ");
				}
				
				//SQL 데이터 추가 수정 삭제 실행할 객체 생성
				Statement stmt = conn.createStatement();
				
				String sql = "SELECT us_name FROM user WHERE us_id='" + id + "'";
				stmt.executeQuery(sql);
				
				// 쿼리 결과를 저장한 메모리 영역을 참조하는 객체
				ResultSet rs = null;
				rs = stmt.executeQuery(sql);
				
				//데이터 가져오기
				if(rs.next()){
						out.print("<Strong>" + rs.getString("us_name") + "</strong>님, 학생 웹플랫폼에 오신것을 환영합니다.");
						//out.print(rs.getString("pj_name")+"<br>");
				} 
				else{
					out.print("세션 정보 없음");
				}
			%>
             </td>
             <td><a href="enrollment.jsp?id=<%= id %>" target="main"><input type="submit" value="개인정보 수정"></a></td>
             <!-- <td><form action="logout.jsp"><input type="submit" value="로그아웃"></form></td> -->
             <td><a href="index.jsp" target="main" onclick="parent.header.location.href='login.jsp'"><input type="submit" value="로그아웃"></a></td>
          </tr>
        </table>
    </body>

</html>


<%
	//resultset 해제
	if(rs != null) try{rs.close();System.out.println("해제성공");}catch(SQLException e){}
	//쿼리 구문 객체 해제
	if(stmt != null) try{stmt.close();System.out.println("해제성공");}catch(SQLException e){}
	//커넥션 해제
	if(conn != null) try{conn.close();System.out.println("해제성공");}catch(SQLException e){}
%>