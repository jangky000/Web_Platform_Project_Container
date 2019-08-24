<%@ page import = "java.sql.ResultSet"%>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.SQLException" %>
<%@ page import = "java.sql.DriverManager" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

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
	//finally {
	//	try {
	//		if(conn != null && !conn.isClosed()) {
	//			conn.close();
	//		}
	//	}
	//	catch(SQLException e){
	//		e.printStackTrace();
	//	}
	//}
	//Connection 객체 생성
	//Connection conn = DBconn.getMySqlConnection();
	
	//out.print("db 연결정보: " + conn);
%>

    
<!DOCTYPE html>
<html>
	<head>
		<META http-equiv=“Content-Type”content=“text/html;charset=euc-kr”>
		<!-- <meta charset="EUC-KR"> -->
		<title>Insert title here</title>
	</head>
	<body>
		Hello World!<br>

		
<%
//여기만 수정해서 사용하면 됨

	//SQL 데이터 추가 수정 삭제 실행할 객체 생성
	Statement stmt = conn.createStatement();
	
	String sql = "select * from user";
	stmt.executeQuery(sql);
	
	// 쿼리 결과를 저장한 메모리 영역을 참조하는 객체
	ResultSet rs = null;
	rs = stmt.executeQuery(sql);
	
	//데이터 가져오기
	if(rs.next()){
		do{
			out.print("<br>");
			out.print(rs.getString("us_id")+"<br>");
			out.print(rs.getString("us_password")+"<br>");
			out.print(rs.getString("us_name")+"<br>");
			out.print(rs.getString("us_grade")+"<br>");
			out.print(rs.getInt("us_age")+"<br>");
			out.print(rs.getString("us_certificate")+"<br>");
			out.print(rs.getString("us_nickname")+"<br>");
			out.print(rs.getCharacterStream("us_sex")+"<br>");
			out.print(rs.getString("us_appeal")+"<br>");
			out.print(rs.getString("us_student_id")+"<br>");
			out.print(rs.getString("us_email")+"<br>");
			out.print(rs.getString("us_phone_number")+"<br>");
			out.print(rs.getString("us_img")+"<br>");
		} while(rs.next());
	} 
	else{
		out.print("검색 결과 없음");
	}
%>

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


<!-- DB를 연결하는 방식: jdbc방식, mybatis 방식 -->