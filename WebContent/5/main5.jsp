<%@ page import = "java.sql.ResultSet"%>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.SQLException" %>
<%@ page import = "java.sql.DriverManager" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
 <% request.setCharacterEncoding("euc-kr"); %>

<!-- id생성 -->
<%
	//사용자 정보
	String id = "";


	id = (String)request.getParameter("id");

	
	


%>


    
<!DOCTYPE HTML>

<html>
    <head>
        <title>main page</title>
        <!-- <meta content = "text/html"; charset="euc-kr"> -->
    </head>


    <body>
      <table>
        <tr>
          <td>

              <a href="main5.jsp?id=<%=id%>"><img src="main_logo.PNG" width="150" height="60"></a>

          </td>

        <td width = "58%"></td>

          <td>
            
              <form action="search.jsp">
                  <br>
                  <input type="text"  name ="search" placeholder="검색">
                  <input type="submit" value="검색">
                  <input type="hidden" name = "id" value="<%=id %>">
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

      <hr><br>

 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src='men.jpg' width='40px' height='40px'><b>공모전</b>


          <div style="width:100%; height:400px; overflow:auto">
              <br>
		   <table bordercolor = "green"  width=98% border = "3">
              
         <% 
 			Statement stmt = conn.createStatement();
            Statement stmt2 = conn.createStatement();
            Statement stmt3 = conn.createStatement();
            Statement stmt4 = conn.createStatement();
            Statement stmt5 = conn.createStatement();
            Statement stmt6 = conn.createStatement();
            Statement stmt7 = conn.createStatement();
            Statement stmt8 = conn.createStatement();
            Statement stmt9 = conn.createStatement();
            Statement stmt10 = conn.createStatement();
 		
 			String sql = "select po_area, po_who, po_ins, po_spon, po_peri, po_mon, po_home, po_img from poster";
 			ResultSet res = stmt.executeQuery(sql);
      		String[] re = new String[10];
		while(true){
			if(res.next()){
				re[0]= res.getString("po_area");
            	re[1]= res.getString("po_who");
            	re[2]= res.getString("po_ins");
            	re[3]= res.getString("po_spon");
            	re[4]= res.getString("po_peri");
            	re[5] = res.getString("po_mon");
            	re[6] = res.getString("po_home");
            	re[7] = res.getString("po_img");
            	
		
		
		%>
           
                <tr>
                  <td width = "20%"><img src="<%=re[7] %>" width = "100%" height = "100%" alt=""></td>

                  <td>
                  <ul>
                  		<li> <strong>분야</strong>: <%=re[0] %></li><br>
                  		<li> <strong>응모대상</strong>: <%=re[1] %></li><br>
                  		<li> <strong>주최/주관</strong>: <%=re[2] %></li><br>
                  		<li> <strong>후원/협찬</strong>: <%=re[3] %></li><br>
                  		<li> <strong>접수기간</strong>: <%=re[4] %></li><br>
                  		<li> <strong>총 상금</strong>: <%=re[5] %></li><br>
                  		<li> <strong>홈페이지</strong>: <a href ='<%=re[6] %>'><%=re[6] %></a></li>
                  
                  </ul>
                  
                  </td>
                </tr>
                
   <% 
		}
		else{
			break;
		}
	}
	%>

              </table>
              <br><br>
          </div>


      <br><hr><br>




      <div>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src='trop.jpg' width='40px' height='40px'><b>인기 프로젝트</b>

              <br>

              <table bordercolor = "green"  width=98% border = "2" >
              <%
					//프로젝트 목록
					
						//SQL 데이터 추가 수정 삭제 실행할 객체 생성
						stmt = conn.createStatement();
						
						sql = "SELECT pj_seq,pj_name,pj_img,pj_start,pj_end,pj_team,ct_seq,pj_hit FROM project order by pj_hit desc";
											
						// 쿼리 결과를 저장한 메모리 영역을 참조하는 객체
						ResultSet rs = null;
						rs = stmt.executeQuery(sql);
						
						String[] rp = new String[10];
						int count =0;
						

				
	while(count < 5){		
				if(rs.next()){	
							rp[0] = rs.getString("pj_seq");
							rp[1] = rs.getString("pj_img");
							rp[2] = rs.getString("pj_name");
							rp[3] = rs.getString("pj_start");
							rp[4] = rs.getString("pj_end");
							rp[5] = rs.getString("pj_team");
							rp[6] = rs.getString("ct_seq");
							rp[7] = rs.getString("pj_hit");
							
						//데이터 가져오기
						
					%>
               	  <tr>
					  <th bgcolor="pink"><a href="project_summary.jsp?seq=<%= rp[0] %>&id=<%=id%>"><%= rp[2] %></a></th>
                      <td width = "20%" bgcolor="pink"><b><center>시작일</center></b></td>
					  <td width = "20%" bgcolor="pink"><b><center>팀이름</center></b></td>
					  <td width = "15%" bgcolor="pink"><b><center>구성원</center></b></td>
					  <td width = "15%" bgcolor="pink"><b><center>분야</center></b></td>
					  <td width = "15%" bgcolor="pink"><b><center>조회수</center></b></td>
                      
                  </tr>
                  
			
				
	              <tr>
                  	<td width=25%><a href="project_summary.jsp?seq=<%=rp[0]%>&id=<%=id%>"><img src="<%=rp[1]%>" width="100%" height="200"></a></td>
					<td width = "20%" bgcolor="lightyellow"><b><center><%= rp[3].substring(0,4) %>-<%= rp[3].substring(4,6) %>-<%= rp[3].substring(6,8) %></center></b></td>
					<td width = "20%" bgcolor="lightyellow"><b><center><%=rp[5] %></center></b></td>
			
					<%
						//구성원 
						String a_sql="SELECT us_name FROM project_member a INNER JOIN user b ON a.us_id = b.us_id where pj_seq="+rp[0];
						
						ResultSet rk = null;
						rk = stmt2.executeQuery(a_sql);
						
					%>			
					<td width = "15%" bgcolor="lightyellow"><b><center><%if(rk.next()){ do{out.print(rk.getString("us_name")+"&nbsp;&nbsp;");}while(rk.next());}%></center></b></td>
		  
					 <%
					 	String b_sql="SELECT ct_name  FROM project a INNER JOIN category b ON a.ct_seq = b.ct_seq WHERE pj_seq=" +rp[0];
					 	ResultSet rc = null;
					 	rc = stmt3.executeQuery(b_sql);
					 %> 
		  
					<td width = "15%" bgcolor="lightyellow"><b><center><%if(rc.next()){out.print(rc.getString("ct_name") + "&nbsp;");} %></center></b></td>
					<td width = "15%" bgcolor="lightyellow"><b><center><%=rp[7] %></center></b></td>
         
                  </tr> 
					<%count++;
					}
				} %>

              </table>
              <br>

      </div>





      <br><hr><br>
      <div>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src='cook.jpg' width='40px' height='40px'><b>최근 등록된 프로젝트</b>


              <br>
             
                <table bordercolor = "green"  width=98% border = "2" >
              <%
					//프로젝트 목록
					
						//SQL 데이터 추가 수정 삭제 실행할 객체 생성
						stmt4 = conn.createStatement();
              			
						sql = "SELECT pj_seq,pj_name,pj_img,pj_start,pj_end,pj_team,ct_seq,pj_hit FROM project order by pj_seq desc";
											
						// 쿼리 결과를 저장한 메모리 영역을 참조하는 객체
						ResultSet rv;
						rv = stmt4.executeQuery(sql);
						
						String[] rw = new String[10];
						int n =0;
						

				
	while(n < 5){		
				if(rv.next()){	
							rw[0] = rv.getString("pj_seq");
							rw[1] = rv.getString("pj_img");
							rw[2] = rv.getString("pj_name");
							rw[3] = rv.getString("pj_start");
							rw[4] = rv.getString("pj_end");
							rw[5] = rv.getString("pj_team");
							rw[6] = rv.getString("ct_seq");
							rw[7] = rv.getString("pj_hit");
							
						//데이터 가져오기
						
					%>
               	  <tr>
					  <th bgcolor="azure"><a href="project_summary.jsp?seq=<%= rw[0] %>&id=<%=id%>"><%= rw[2] %></a></th>
                      <td width = "20%" bgcolor="azure"><b><center>시작일</center></b></td>
					  <td width = "20%" bgcolor="azure"><b><center>팀이름</center></b></td>
					  <td width = "15%" bgcolor="azure"><b><center>구성원</center></b></td>
					  <td width = "15%" bgcolor="azure"><b><center>분야</center></b></td>
					  <td width = "15%" bgcolor="azure"><b><center>조회수</center></b></td>
                      
                  </tr>
                  
			
				
	              <tr>
                  	<td width=25%><a href="project_summary.jsp?seq=<%=rw[0]%>&id=<%=id%>"><img src="<%=rw[1]%>" width="100%" height="200"></a></td>
					<td width = "20%" bgcolor="lightyellow"><b><center><%= rw[3].substring(0,4) %>-<%= rw[3].substring(4,6) %>-<%= rw[3].substring(6,8) %></center></b></td>
					<td width = "20%" bgcolor="lightyellow"><b><center><%=rw[5] %></center></b></td>  
			
					<%
						//구성원 
						String l_sql="SELECT us_name FROM project_member a INNER JOIN user b ON a.us_id = b.us_id where pj_seq="+rw[0];
						
						ResultSet rl = null;
						rl = stmt5.executeQuery(l_sql);
						
					%>			
					<td width = "15%" bgcolor="lightyellow"><b><center><%if(rl.next()){ do{out.print(rl.getString("us_name")+"&nbsp;&nbsp;");}while(rl.next());}%></center></b></td>
		  
					 <%
					 	String t_sql="SELECT ct_name  FROM project a INNER JOIN category b ON a.ct_seq = b.ct_seq WHERE pj_seq=" +rw[0];
					 	ResultSet rt = null;
					 	rt = stmt6.executeQuery(t_sql);
					 %> 
		  
					<td width = "15%" bgcolor="lightyellow"><b><center><%if(rt.next()){out.print(rt.getString("ct_name") + "&nbsp;");} %></center></b></td>
					<td width = "15%" bgcolor="lightyellow"><b><center><%=rw[7] %></center></b></td>
         
                  </tr> 
					<%
					n++;
					}
				} %>

              </table>
      </div>
      
      <br><br>
      <hr>

      
  
      
      
      
      
      
    </body>
</html>

<%
	//resultset 해제
	if(rs != null) try{rs.close();System.out.println("해제성공");}catch(SQLException e){}
	//쿼리 구문 객체 해제
	if(stmt != null) try{stmt.close();System.out.println("해제성공");}catch(SQLException e){}
	if(stmt2 != null) try{stmt2.close();System.out.println("해제성공");}catch(SQLException e){}
	if(stmt3 != null) try{stmt3.close();System.out.println("해제성공");}catch(SQLException e){}
	if(stmt4 != null) try{stmt4.close();System.out.println("해제성공");}catch(SQLException e){}
	if(stmt5 != null) try{stmt5.close();System.out.println("해제성공");}catch(SQLException e){}
	if(stmt6 != null) try{stmt6.close();System.out.println("해제성공");}catch(SQLException e){}
	if(stmt7 != null) try{stmt7.close();System.out.println("해제성공");}catch(SQLException e){}
	if(stmt8 != null) try{stmt8.close();System.out.println("해제성공");}catch(SQLException e){}
	if(stmt9 != null) try{stmt9.close();System.out.println("해제성공");}catch(SQLException e){}
	if(stmt10 != null) try{stmt10.close();System.out.println("해제성공");}catch(SQLException e){}
	//커넥션 해제
	if(conn != null) try{conn.close();System.out.println("해제성공");}catch(SQLException e){}
%>
