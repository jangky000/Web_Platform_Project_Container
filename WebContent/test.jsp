<%@ page import = "java.sql.ResultSet"%>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.SQLException" %>
<%@ page import = "java.sql.DriverManager" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	//����
	Connection conn = null;
	try {
		//����̹� �ε�
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		//����
		String url ="jdbc:mysql://localhost:3306/webdb?useSSL=false&serverTimezone=Asia/Seoul";
		String user = "root";
		String password = "12341234"; //�̰� ���� �������� ���� �ٸ�, �Ƹ� 1111�� �Ǿ����� ���ɼ��� ũ��.
		
		conn = DriverManager.getConnection(url, user, password);
		System.out.println("���� ����");
		
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
	//Connection ��ü ����
	//Connection conn = DBconn.getMySqlConnection();
	
	//out.print("db ��������: " + conn);
%>

    
<!DOCTYPE html>
<html>
	<head>
		<META http-equiv=��Content-Type��content=��text/html;charset=euc-kr��>
		<!-- <meta charset="EUC-KR"> -->
		<title>Insert title here</title>
	</head>
	<body>
		Hello World!<br>

		
<%
//���⸸ �����ؼ� ����ϸ� ��

	//SQL ������ �߰� ���� ���� ������ ��ü ����
	Statement stmt = conn.createStatement();
	
	String sql = "select * from user";
	stmt.executeQuery(sql);
	
	// ���� ����� ������ �޸� ������ �����ϴ� ��ü
	ResultSet rs = null;
	rs = stmt.executeQuery(sql);
	
	//������ ��������
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
		out.print("�˻� ��� ����");
	}
%>

	</body>
</html>

<%
	//resultset ����
	if(rs != null) try{rs.close();System.out.println("��������");}catch(SQLException e){}
	//���� ���� ��ü ����
	if(stmt != null) try{stmt.close();System.out.println("��������");}catch(SQLException e){}
	//Ŀ�ؼ� ����
	if(conn != null) try{conn.close();System.out.println("��������");}catch(SQLException e){}
%>


<!-- DB�� �����ϴ� ���: jdbc���, mybatis ��� -->