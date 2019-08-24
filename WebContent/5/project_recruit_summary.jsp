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


<%
	String id = (String)request.getParameter("id");
	String seq = (String)request.getParameter("seq");
	//String raseq = (String)request.getParameter("raseq");
   
   


%>
<!DOCTYPE HTML>

<html>
    <head>
        <title>project_recruit_summary page</title>
        <!-- <meta content = "text/html"; charset="euc-kr"> -->
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
                        <input type="hidden"  name ="id" value ="<%=id%>">
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

        <br><br>
        
         <%
         //모집 상세
      
         //SQL 데이터 추가 수정 삭제 실행할 객체 생성
         Statement stmt = conn.createStatement();
         String tmp = (String)request.getParameter("seq");
         String sql = "SELECT rp_name,rp_img, rp_start, ct_seq, rp_ref,rp_text,rp_hit FROM recruit_project WHERE rp_seq=" + tmp; // 
         stmt.executeQuery(sql);
         
         // 쿼리 결과를 저장한 메모리 영역을 참조하는 객체
         ResultSet rs = null;
         rs = stmt.executeQuery(sql);   
         
         String[] rp = new String[10];
         //데이터 가져오기
         if(rs.next()){
            rp[0]= rs.getString("rp_name");
            rp[1]= rs.getString("rp_img");
            rp[2]= rs.getString("rp_start");
            rp[3]= rs.getString("ct_seq");
            rp[4]= rs.getString("rp_ref");
            rp[5]= rs.getString("rp_text");
            rp[6]= rs.getString("rp_hit");
            
         } 
         else{
            out.print("검색 결과 없음");
         }
            
			String sql2 = "select us_id from recruit_project where rp_seq="+tmp;
			
			ResultSet rs2 = null;
			rs2 = stmt.executeQuery(sql2);
			
			String rd = "";
			if(rs2.next()){
				rd = rs2.getString("us_id");
			}
			
		Statement stmt2 = conn.createStatement();
		String sql3 = "update recruit_project set rp_hit=rp_hit +1 where rp_seq=" + tmp;

		stmt2.executeUpdate(sql3);	
         
      %>
      
  
        <!-- 프로젝트 기본정보 -->
        <div>
        <form action="recruit_modification.jsp">
            <table align="center" width="98%">
                <tr>
                    <td colspan="2"><b><u><%= rp[0] %></u><img src="project_logo.png" width="30" height="30"/>조회수 <%=rp[6] %></b><br></td>
                   

                    <% if(id.equals(rd)){%>
                    <td align="right"><input type="hidden" name = "id" value = "<%=id%>"><input type="hidden" name = "seq" value = "<%=seq%>"><input type="submit" value="수정"></td>
                    <%} %>
                </tr>
                <tr>
                    <td><img src="<%= rp[1] %>" width="300" height="200"></td>
                    <td width=80%>
                      <ul>
                              <li>프로젝트 예상 시작일:&nbsp;<b><%= rp[2].substring(0,4) %>-<%= rp[2].substring(4,6) %>-<%= rp[2].substring(6,8) %></b></li><br>
                              <% 
                              	tmp = (String)request.getParameter("seq");
                          		sql="SELECT ct_name FROM recruit_project a INNER JOIN category b ON a.ct_seq = b.ct_seq WHERE rp_seq=" + tmp;
                          		stmt.executeQuery(sql);
                          	
                          		rs = null;
	                          	rs = stmt.executeQuery(sql);
	                          	
	                          	//데이터 가져오기
	                          	if(rs.next()){
	                          		//do{
	                          		out.print("<li>카테고리: <b>"+ rs.getString("ct_name")+"</b></li><br>");
	                          		//}while(rs.next());
	                          	} 
	                          	else{
	                          		out.print("<li>카테고리: <b>" + "카테고리 없음" + "</b></li><br>");
	                          	}
	                          	
	                          	sql="SELECT us_name, us_email FROM recruit_project a INNER JOIN user b ON a.us_id = b.us_id WHERE rp_seq=" + tmp;
                          		stmt.executeQuery(sql);
                          	
                          		rs = null;
	                          	rs = stmt.executeQuery(sql);
	                          	
	                          	//데이터 가져오기
	                          	if(rs.next()){
	                          		out.print("<li>모집인: <b>" + rs.getString("us_name") + "</b></li><br>");
	                          		out.print("<li>이메일: <b>" + rs.getString("us_email") + "</b></li>");
	                          	} 
	                          	else{
	                          		out.print("<li>모집인: <b>" + "모집인 정보 없음" + "</b></li>");
	                          	}
	                          	
                              %>
                             
                              
                      </ul>

                    </td>
                    <td></td>
                </tr>
            </table>
          </form>
        </div>

        <br><br>

        <!-- 프로젝트 상세 -->
        <div>
            <!-- 프로젝트 하위 메뉴 -->
            <div>
                <table  width="400">
                    <tr>
                      <th align="left" id = "menu"><u><a href="#summary">프로젝트 개요</a></u></th>
                      <th align="left"><u><a href="#join">참여 신청</a></u></th>


                    </tr>
                </table>
            </div>
            <br><br>
            <strong id = "summary"><프로젝트 개요></strong>

            <hr>


            <div>
            
            <% if(id.equals(rd)){%>
		            <form action = "recruit_summary_modification.jsp">
		                <table  width="98%" align="center">
		                    <tr>
		
		                        <th align="right"><input type="submit" value="수정"></th>
		                    </tr>
		
		
		                </table>
		                
						<input type= 'hidden' name='ref' value='<%=rp[4]%>'>
		            	<input type= 'hidden' name='memo' value='<%=rp[5]%>'>
		            	<input type= 'hidden' name='seq' value='<%=tmp%>'>
		            	<input type="hidden" name = "id" value = "<%=id%>">
		            	
		            	
		            </form>
			<% }%>
            </div>

            <div>
            
            	
            	
            
                <table  width="98%" align="center">
                    <tr>
                        <th align="left" width=80%><u>Reference</u></th>

                    </tr>
                    <tr>
                        <td colspan="2">
                            <ul>
                                <li><%= rp[4] %></li>
                            </ul>
                        </td>
                    </tr>
                </table>
                
                
                <table width = "100%">
                    <tr>
                        <td bgcolor="lightgreen">
                            <blockquote>
                                   <%= rp[5] %><br>
                            </blockquote>
                        </td>
                    </tr>
                </table>
                <br><br><br>
                <a href="#menu">Go to the menu</a>
            </div>

            <div>
                <br><br><br>
                <h4 id = "join"><참여 신청></h4>

                <hr>
                

<% 
            stmt = conn.createStatement();
            tmp = (String)request.getParameter("seq");
            sql = "select us_id from recruit_project where rp_seq ="+tmp;
         
            stmt.executeQuery(sql);
         
            // 쿼리 결과를 저장한 메모리 영역을 참조하는 객체
            rs = null;
            rs = stmt.executeQuery(sql);   
         
               
      
            String[] ri = new String[2];
            //데이터 가져오기
            if(rs.next()){
               ri[0]= rs.getString("us_id");
            
            }
            else{
            
            }
                  
            //ri= rs.getString("us_id");
   
               
         
            
    
            
         
         
   		if(!id.equals(ri[0])){ 
		%>
                <% tmp=(String)request.getParameter("seq"); %>
                 <table width='55%'><tr><td align="right"><form action="recruit_apply_click_sinchung.jsp" ><input type = "hidden" name = "id" value ="<%=id %>"><input type = "hidden" name = "seq" value ="<%=tmp %>"><input type="submit" value="참여신청"></form></td></tr></table>
         </div>
         <%} %>
         
         
         <%
         	if(id.equals(ri[0])){
         		out.print("<form action='apply_completed.jsp' target='hidden'>");
         		out.print("<input type='submit' value='모집 완료'><br><br>");
         	}
         %>    
<%
         //SQL 데이터 추가 수정 삭제 실행할 객체 생성
         stmt = conn.createStatement();
         tmp = (String)request.getParameter("seq");
         sql = "select ra_seq, us_name, us_student_id, dp_name, ra_text,a.us_id from user a, recruit_project_applier b, department c where a.us_id = b.us_id and a.dp_seq = c.dp_seq and b.rp_seq="+tmp + " order by ra_seq asc";
         
         rs = stmt.executeQuery(sql);   
         
         rp = new String[10];
         //데이터 가져오기
   while(true){    
         if(rs.next()){
            rp[0]= rs.getString("us_name");
            rp[1]= rs.getString("us_student_id");
            rp[2]= rs.getString("dp_name");
            rp[3]= rs.getString("ra_text");
            rp[4]= rs.getString("a.us_id");
            rp[5] = rs.getString("ra_seq");
%>
      		<!-- 모집 체크 박스 -->
           
                  
                      <%  
                      	 if(id.equals(ri[0])){
                      		 out.print("<table><tr>");
                      		 out.print("<td width='40px'><input type='image' src='paper.jpg' width='30px' height='40px'></td>");
                      		 out.print("<td>");
                      		 out.print(rp[0] + " / " + rp[2] + " / " + rp[1]); 
                      		 out.print("<input type='checkbox' name='us_id' value=" + rp[4] + ">");
                      		 out.print("</td>");
                      		 out.print("</tr></table>");
                      	}
                      %>
                     
            <%
            	if(id.equals(rp[4])){
            		out.print("<form action='recruit_apply_click_modification.jsp'>");
            		out.print("<table width='55%'><tr><td align='right'>");
            		out.print("<td width='40px'><input type='image' src='paper.jpg' width='30px' height='40px'></td>");
             		out.print("<td>");
             		out.print(rp[0] + " / " + rp[2] + " / " + rp[1]); 
             		out.print("</td>");
             		out.print("<td>");
            		out.print("<input type=\"hidden\" name=\"id\" value='" + id + "'>");
            		out.print("<input type=\"hidden\" name=\"seq\" value='" + seq + "'>");
            		out.print("<input type=\"hidden\" name=\"raseq\" value='" + rp[5] + "'>");
            		out.print("<input type=\"submit\" value=\"수정\">");
            		out.print("</td>");
            	}
            	else if(!id.equals(ri[0])){
            		out.print("<table width='55%'><tr><td align='right'>");
            		out.print("<td width='40px'><input type='image' src='paper.jpg' width='30px' height='40px'></td>");
             		out.print("<td>");
             		out.print(rp[0] + " / " + rp[2] + " / " + rp[1]); 
             		out.print("</td>");
             		out.print("<td></td></tr></table>");
            	}
            %>
            
                
                <table border = "2">
                    <tr>
                    <td width = "19%" bgcolor = "yellow">이름</td>
                    <td width = "700"><%=rp[0] %></td>
                    </tr>


                    <tr>
                    <td  bgcolor = "yellow">학번</td>
                    <td><%=rp[1] %></td>
                    </tr>


                    <tr>
                    <td bgcolor = "yellow">학과</td>
                    <td><%=rp[2] %></td>
                    </tr>


                    <tr>
                    <td  bgcolor = "yellow">역량</td>
                    <td width = "700"><%=rp[3] %></td>
                    </tr>

                </table>
			<br><hr><br>
			                    
<%            }
            else{
            
            break;
         }
            
}%>
<%
        if(id.equals(ri[0])){
         	out.print("<input type='hidden' name='id' value=" + id + ">");
         	out.print("<input type='hidden' name='seq' value=" + seq + ">");
         	//out.print("<input type='hidden' name='id' value" + id + ">");
         	out.print("</form>");
         }
%>
            
            <br><br><br>
            <a href="#menu">Go to the menu</a>

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