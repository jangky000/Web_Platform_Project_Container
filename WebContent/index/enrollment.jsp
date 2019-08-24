<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "java.sql.ResultSet"%>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.SQLException" %>
<%@ page import = "java.sql.DriverManager" %>

<% 
	//String sess = (String)session.getAttribute("id"); 
	String id = (String)request.getParameter("id");
	//out.print(id);
	//out.print(sess);
	String us_id = "";
	String us_password = "";
	String us_name = "";
	String us_grade = "";
	String us_age = "";
	String us_nickname = "";
	String us_appeal = "";
	String us_student_id = "";
	String us_email = "";
	String us_phone_number = "";
	String us_sex = "";
	int us_univ = 1;
	int us_major = 1;
	
	
	request.setCharacterEncoding("euc-kr");	
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
	//SQL 데이터 추가 수정 삭제 실행할 객체 생성
	Statement stmt = conn.createStatement();
	
	String sql = "SELECT us_id, us_password, us_name, us_grade, us_age, us_nickname, us_appeal, us_student_id, us_email, us_phone_number, us_sex, uv_seq, dp_seq  FROM user WHERE us_id = '"+ id +"'";
	stmt.executeQuery(sql);
	
	// 쿼리 결과를 저장한 메모리 영역을 참조하는 객체
	ResultSet rs = null;
	rs = stmt.executeQuery(sql);
	
	
	//데이터 가져오기
	if(rs.next()){
		us_id=rs.getString("us_id");
		us_password=rs.getString("us_password");
		us_name=rs.getString("us_name");
		us_grade=rs.getString("us_grade");
		us_age=rs.getString("us_age");
		us_nickname=rs.getString("us_nickname");
		us_appeal=rs.getString("us_appeal");
		us_student_id=rs.getString("us_student_id");
		us_email=rs.getString("us_email");
		us_phone_number=rs.getString("us_phone_number");
		us_sex= rs.getString("us_sex");
		us_univ=rs.getInt("uv_seq");
		us_major=rs.getInt("dp_seq");
		out.print(us_univ);
		out.print(us_major);
		
	} 
	else{
		//out.print("검색 결과 없음");
	}
	
%>


<!DOCTYPE HTML>


<html>
    <head>
        <title>enrollment page</title>

    </head>
    <body>
      <div class="enrollment">
		<div align="center">
          <form action="enrollment_check.jsp" method="POST" enctype="Multipart/form-data">
            <table border = "0" width="40%">
            	<tr>
            		<td align="center" width="90%"><h1><% if(id == null){out.print("회원가입");}else{out.print("개인정보 수정");} %></h1></td>
            		<td align="right"><br><br><input type="hidden" name="id" value="<%=id %>"><input type="submit" value="<% if(id == null){out.print("가입");}else{out.print("수정 완료");} %>"></td>
            	</tr>
            </table>
            <% 
            	
            %>
            <table border = "2" width="40%">
                <tr>
                    <td bgcolor = "yellow"><center>아이디</center></td>
                    <td width="60%"><input type="text" name = "eid" value="<% if(id != null){out.print(us_id);} %>"></td>
                </tr>
                <tr>
                    <td bgcolor = "yellow"><center>비밀번호</center></td>
                    <td><input type="password" name = "pwd" value="<% if(id != null){out.print(us_password);} %>"></td>
                </tr>
                <tr>
                    <td bgcolor = "yellow"><center>비밀번호 확인</center></td>
                    <td><input type="password" name = "check_pwd" value="<% if(id != null){out.print(us_password);} %>"></td>
                </tr>
                <tr>
                    <td bgcolor = "yellow"><center>이름</center></td>
                    <td><input type="text" name = "name" value="<% if(id != null){out.print(us_name);} %>"></td>
                </tr>
                <tr>
                    <td bgcolor = "yellow"><center>닉네임</center></td>
                    <td><input type="text" name = "nickname" value="<% if(id != null){out.print(us_nickname);} %>"></td>
                </tr>
                <tr>
                    <td bgcolor = "yellow"><center>이메일</center></td>
                    <td><input type="email" name="email_address" value="<% if(id != null){out.print(us_email);} %>"></td>
                </tr>
                <tr>
                    <td bgcolor = "yellow"><center>핸드폰번호</center></td>
                    <td><input type="text" name ="phone_number" value="<% if(id != null){out.print(us_phone_number);} %>"></td>
                </tr>
                <tr>
                    <td bgcolor = "yellow"><center>성별</center></td>
                    <td><input type="radio" name="sex" value="M" <% if(us_sex.equals("M")){out.print("checked");} %>>남 <input type="radio" name="sex" value="F" <% if(us_sex.equals("F")){out.print("checked");} %>>여</td>
                </tr>
                <tr>
                    <td bgcolor = "yellow"><center>대학교</center></td>
                    <td>
	                    <select name="univ">
			              <% 
			              		String sql2 = "SELECT uv_seq, uv_name FROM university";
			              		ResultSet rs2 = stmt.executeQuery(sql2);
			              		int i2 =1;
			              		while(rs2.next()){
			              			out.print("<option value='" + i2 + "'");
			              			if(us_univ==i2){out.print("selected='selected'");}
		              				out.print("> " + rs2.getString("uv_name") + "</option>");
			              			i2++;
			              		}
			              		if(rs2 != null) try{rs2.close();System.out.println("해제성공");}catch(SQLException e){}
			            		
			              	%>
			            </select>
                    </td>
                </tr>
                <tr>
                    <td bgcolor = "yellow"><center>학과</center></td>
                    <td>
                    	<select name="major">
			              <% 
			              		String sql3 = "SELECT dp_seq, dp_name FROM department";
			              		ResultSet rs3 = stmt.executeQuery(sql3);
			              		int i3 = 1;
			              		while(rs3.next()){
			              			out.print("<option value='" + i3 + "'");
			              			if(us_major==i3){out.print("selected='selected'");}
		              				out.print("> " + rs3.getString("dp_name") + "</option>");
			              			i3++;
			              		}
			              		if(rs3 != null) try{rs3.close();System.out.println("해제성공");}catch(SQLException e){}
			            	%>
			            </select>
                </tr>
                <tr>
                    <td bgcolor = "yellow"><center>학번</center></td>
                    <td><input type="text" name="student_number" value="<% if(id != null){out.print(us_student_id);} %>"></td>
                </tr>
                <tr>
                    <td bgcolor = "yellow"><center>학년</center></td>
                    <td><input type="radio" name="grade" value="1" <% if(us_grade.equals("1")){out.print("checked");} %>>1학년 <input type="radio" name="grade" value="2" <% if(us_grade.equals("2")){out.print("checked");} %>>2학년 <input type="radio" name="grade" value="3" <% if(us_grade.equals("3")){out.print("checked");} %>>3학년 <input type="radio"name="grade" value="4" <% if(us_grade.equals("4")){out.print("checked");} %>>4학년</td>
                </tr>
                <tr>
                    <td bgcolor = "yellow"><center>나이</center></td>
                    <td><input type="text" name = "age" value="<% if(id != null){out.print(us_age);} %>"></td>
                </tr>
                <tr>
                    <td bgcolor = "yellow"><center>재학증명서/학생증</center></td>
                    <td><input type="file" name = "certificate"></td>
                </tr>
                <tr>
                    <td bgcolor = "yellow"><center>프로필 이미지</center></td>
                    <td><input type="file" name = "profile_img"></td>
                </tr>
                <tr>
                    <td bgcolor = "yellow"><center>어필멘트</center></td>
                    <td><textarea rows="5"  cols ="60"name = "appeal" placeholder="<% if(id != null){out.print(us_appeal); }else{out.print("자기소개를 해주세요");} %>"></textarea></td>
                </tr>
            </table>
          </form>
          <% 
          	if(id != null){
          		out.print("<table border = '0' width='40%'>");
          		out.print("<tr>");
          		out.print("<td align='right'>");
          		out.print("<a href='login.jsp' target='header' onclick=\"parent.main.location.href='index.jsp';parent.hidden.location.href='hidden.jsp?id="+ id +"&secession=true'\">");
          		out.print("<input type='submit' value='회원 탈퇴'>");
          		out.print("</td>");
          		out.print("</tr>");
          		out.print("</table>");
          		out.print("<br>");
          		out.print("<br>");	
          	}
          %>
		</div>
      </div>
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