<%@ page import = "java.sql.ResultSet"%>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.SQLException" %>
<%@ page import = "java.sql.DriverManager" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String seq = (String)request.getParameter("seq");
	String id = (String)request.getParameter("id");
	//String sess = (String)session.getAttribute("id");

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
//프로젝트 상세

	//SQL 데이터 추가 수정 삭제 실행할 객체 생성
	Statement stmt = conn.createStatement();
	
	String sql = "select rp_name, rp_start, us_name, us_email,rp_img, rp_text from recruit_project a, user b where a.us_id = b.us_id and a.us_id ='" + id+"' and rp_seq ="+seq;  

	
	
	// 쿼리 결과를 저장한 메모리 영역을 참조하는 객체
	ResultSet rs = null;
	rs = stmt.executeQuery(sql);	
	
	String[] rp = new String[10];
	//데이터 가져오기
	if(rs.next()){
		rp[0]= rs.getString("rp_name");
		rp[1]= rs.getString("rp_start");
		rp[2]= rs.getString("us_name");
		rp[3]= rs.getString("us_email");
		rp[4]= rs.getString("rp_img");
		rp[5]= rs.getString("rp_text");

	} 
	else{
		out.print("검색 결과 없음");
	}
	
	
	
	Statement stmt2 = conn.createStatement();
	String sql2 = "select ct_name from category";  

	
	
	// 쿼리 결과를 저장한 메모리 영역을 참조하는 객체
	ResultSet res = null;
	res = stmt.executeQuery(sql2);
	
	String rc = new String();

	
	Statement stmt3 = conn.createStatement();
	String sql3 = "select  ct_seq from category order by ct_seq desc limit 1";  

	
	
	// 쿼리 결과를 저장한 메모리 영역을 참조하는 객체
	ResultSet rls = null;
	rls = stmt3.executeQuery(sql3);
	
	String rl = new String();
	//데이터 가져오기
	if(rls.next()){
		rl = rls.getString("ct_seq");
	} 
	else{
		out.print("검색 결과 없음");
	}
	int num = Integer.parseInt(rl);
	
	
	
	
	
	Statement stmt4 = conn.createStatement();
	String sql4 = "select ct_name from recruit_project a, category b where a.ct_seq = b.ct_seq and us_id='"+id+"' and rp_seq="+seq;  

	// 쿼리 결과를 저장한 메모리 영역을 참조하는 객체
	ResultSet rn = null;
	rn = stmt4.executeQuery(sql4);
	
	String rv = new String();
	//데이터 가져오기
	if(rn.next()){
		rv = rn.getString("ct_name");
	} 
	else{
		out.print("검색 결과 없음");
	}
%>


<!DOCTYPE HTML>

<html>
    <head>
        <title>project_make_recruit_modification page</title>
        <meta charset = "utf-8">

    </head>
    <body>
      <table>
        <tr>
          <td>
            <a href="main5.jsp?id=<%=id%>"><img src="main_logo.PNG" width="150" height="60"></a>
          </td>

          <td width = "300"></td>
          <td>
            <form action="search.jsp">
              <br>
              <input type="text"  name ="search" placeholder="검색">
              <input type="submit" value="검색">
            </form>
          </td>
        </tr>
      </table>

      <div>
          <table  width="400">
              <tr>
                <th align="left"><u><a href="main5.jsp?id=<%=id%>">프로젝트 둘러보기</a></u></th>
                  <th align="left"><u><a href="project_recruit.jsp?id=<%=id%>">프로젝트 모집</a></u></th>
                  <th align="left"><u><a href="my_project.jsp?id=<%=id%>">내 프로젝트</a></u></th>
              </tr>
          </table>
      </div>

      <hr>

      <h1>프로젝트 모집 정보 수정</h1>
<form action ="upload_action.jsp" enctype="multipart/form-data" method ="post" target='hidden'>
      <table>
        <tr>
          <td width = 860></td>
          
          <td>
            <input type="submit" value="저장"> <input type="hidden" name ="id" value ="<%=id %>"> <input type="hidden" name="seq" value ="<%=seq %>">
           </td>
        </tr>
      </table>
    <table border = "2">
      
        <tr>
          <td bgcolor="skyblue"><center>프로젝트명 </center></td>
          <td width = "75%">
            <input size="100%" type="text" name = "rp_name"  value= "<%=rp[0] %>" ></td>
        </tr>

        <tr>
          <td bgcolor="skyblue"><center>예상 시작일 </center></td>
          <td>
            <input type="text" size="100%" name = "rp_start" value ="<%=rp[1] %>">
          </td>
        </tr>

        <tr>
          <td bgcolor="skyblue"> <center> 프로젝트 등록인 </center></td>
          <td>
            <input type="text" size="100%" name = "us_name" value ="<%=rp[2] %>">
          </td>
        </tr>

        <tr>
          <td bgcolor="skyblue"><center>이메일</center></td>

          <td>
            <input type="text" size = "100%" name = "us_email" value ="<%=rp[3] %>">
          </td>
        </tr>

        <tr>
          <td bgcolor="skyblue"><center>프로젝트 이미지</center></td>
          <td>
              <input type="file" name = "file" >
          </td>
        </tr>

        <tr>
          <td bgcolor="skyblue"><center>카테고리</center></td>
          <td>
            <select name="ct_name">
			<%for(int i =0; i<num; i++){ 
				//데이터 가져오기
				if(res.next()){
					rc = res.getString("ct_name");
					if(!rc.equals(rv)){
			%>
					<option> <%=rc %> </option>
					<%}else{%>
						<option selected="selected"> <%=rc %></option>
	<%
					}
			    } 
				else{
					out.print("검색 결과 없음");
				}     
	%> 
              
          	<%} %>
              
            </select>
          </td>
        </tr>

        <tr>
          <td bgcolor="skyblue"><center>프로젝트 설명</center></td>
          <td>
            <textarea rows ="10" cols = "100%" name=rp_text><%=rp[5] %> </textarea>
          </td>
        </tr>
     
    </table>
    
   </form>
   
   <form action="recruit_delete.jsp" target='hidden'>
   <table>
   	<tr>
   		<td width = 770></td>
   		<td><input type="submit" value ="프로젝트 모집 삭제"><input type="hidden" name ="id" value ="<%=id %>"> <input type="hidden" name="seq" value ="<%=seq %>"></td>
   	</tr>
   </table>
   </form>
  </body>
</html>
