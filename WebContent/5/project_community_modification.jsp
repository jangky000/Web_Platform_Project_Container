<%@ page import = "java.sql.ResultSet"%>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.SQLException" %>
<%@ page import = "java.sql.DriverManager" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
   String seq = (String)request.getParameter("seq");
   //String sess = (String)session.getAttribute("id");
   String sess = (String)request.getParameter("id");
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
        <title>project_summary page</title>
        <!-- <meta content = "text/html"; charset="euc-kr"> -->
        <!-- <meta http-equiv='refresh' content='30; url=project_summary.jsp?seq=<%= seq %>'></meta> -->
    </head>
    <body>
      <table>
          <tr>
              <td>
                  <a href="main5.jsp?id=<%=sess%>"><img src="main_logo.PNG" width="150" height="60"></a>
              </td>

              <td width = "58%"></td>

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
                <th align="left"><u><a href="main5.jsp?id=<%=sess%>">프로젝트 둘러보기</a></u></th>
                  <th align="left"><u><a href="project_recruit.jsp?id=<%=sess%>">프로젝트 모집</a></u></th>
                  <th align="left"><u><a href="my_project.jsp?id=<%=sess%>">내 프로젝트</a></u></th>
              </tr>
          </table>
      </div>

      <hr>

 <%
//프로젝트 상세
   //SQL 데이터 추가 수정 삭제 실행할 객체 생성
   Statement stmt = conn.createStatement();
   
   String sql = "SELECT pj_name,pj_img,pj_start,pj_end,pj_team,ct_seq,pj_ref,pj_text  FROM project WHERE pj_seq=" + seq; // 
   //SELECT pj_seq, pj_name, pj_img, pj_start, pj_end, pj_team, ct_seq, pj_ref, pj_text FROM Project WHERE pj_seq=%s;
   //out.print(sql);
   stmt.executeQuery(sql);
   
   // 쿼리 결과를 저장한 메모리 영역을 참조하는 객체
   ResultSet rs = null;
   rs = stmt.executeQuery(sql);   
   
   String[] pj = new String[10];
   //데이터 가져오기
   if(rs.next()){
      pj[0]= rs.getString("pj_name");
      pj[1]= rs.getString("pj_img");
      pj[2]= rs.getString("pj_start");
      pj[3]= rs.getString("pj_end");
      pj[4]= rs.getString("pj_team");
      pj[5]= rs.getString("ct_seq");
      pj[6]= rs.getString("pj_ref");
      pj[7]= rs.getString("pj_text");
      
   } 
   else{
      out.print("검색 결과 없음");
   }
   
   String is_member = "false";
   sql = "SELECT us_id FROM project a JOIN project_member b ON a.pj_seq = b.pj_seq WHERE a.pj_seq=" + seq + " AND b.us_id = '" + sess + "'";
   rs = null;
   rs = stmt.executeQuery(sql);
   
   if(rs.next()){
      is_member = "true";
   }
      
%>

  <!-- 프로젝트 기본정보 -->
  <div>
      <table align="center" width="98%">
          <tr>
              <td colspan="2"><b><u> <%= pj[0] %> </u><img src="project_logo.png" width="30" height="30"/></b><br></td>
              <td align="right"><% if(is_member.equals("true")){out.print("<form action='project_modification.jsp'><input type='submit' value='수정'></form>");} %></td>
          </tr>
          <tr>
              <td><img src="<%= pj[1] %>" width="300" height="200"></td>
              <td width=80%>
                  <ul>
                          <li>프로젝트 시작일 / 종료일: <b><%= pj[2].substring(0,4) %>.<%= pj[2].substring(4,6) %>.<%= pj[2].substring(6,8) %> / <% if(pj[3] != null){out.print(pj[3].substring(0,4) + "." + pj[3].substring(4,6) + "." + pj[3].substring(6,8));} %></b></li>
                          <li>팀 이름: <b><%= pj[4] %></b></li>
                          <li>구성원: <b>
<%
//프로젝트 멤버
   seq = (String)request.getParameter("seq");
   sql="SELECT us_name  FROM project_member a INNER JOIN user b ON a.us_id = b.us_id WHERE pj_seq=" + seq;
   stmt.executeQuery(sql);
   
   rs = null;
   rs = stmt.executeQuery(sql);
   
   //데이터 가져오기
   if(rs.next()){
      do{
         out.print(rs.getString("us_name") + "&nbsp;");
      }while(rs.next());
   } 
   else{
      out.print("멤버 없음");
   }
%>
</b>
                          </li>
                          <li>카테고리: <b>
<%
//프로젝트 카테고리
   seq = (String)request.getParameter("seq");
   sql="SELECT ct_name  FROM project a INNER JOIN category b ON a.ct_seq = b.ct_seq WHERE pj_seq=" + seq;
   stmt.executeQuery(sql);
   
   rs = null;
   rs = stmt.executeQuery(sql);
   
   //데이터 가져오기
   if(rs.next()){
      //do{
      out.print(rs.getString("ct_name") + "&nbsp;");
      //}while(rs.next());
   } 
   else{
      out.print("카테고리 없음");
   }
%>                    
                  </b></li>
                  </ul>
              </td>
              <td></td>
          </tr>
      </table>
  </div>

  <br><br>

  <!-- 프로젝트 상세 -->
  <div>
      <!-- 프로젝트 하위 메뉴 -->
      <div>
          <table  width="400">
              <tr>
                  <th align="left" id = "menu"><u><a href="#summary">프로젝트 개요</a></u></th>
                  <th align="left"><u><a href="#data">데이터 세트</a></u></th>
                  <th align="left"><u><a href="#community">커뮤니티</a></u></th>
              </tr>
          </table>
      </div>
      <br><br>
      <strong id = "summary"><프로젝트 개요></strong>
      <hr>

      <!-- 프로젝트 개요 -->
          
                  <form action = "project_summary_modification.jsp">
                      <table  width="98%" align="center">
                          <tr>
                              <th align="right"><% if(is_member.equals("true")){out.print("<input type='submit' value='수정'>");}%></th>
                          </tr>
      
      
                      </table>
                      
                  <input type= 'hidden' name='ref' value='<%=pj[6]%>'>
                     <input type= 'hidden' name='memo' value='<%=pj[7]%>'>
                     <input type= 'hidden' name='id' value='<%=sess%>'>
                     <input type= 'hidden' name='seq' value='<%=seq%>'>
                     
                     
                  </form>
      


      <div>
          <table  width="98%" align="center">
              <tr>
                  <th align="left" width=80%><u>Reference</u></th>
                  
              </tr>
              <tr>
                  <td colspan="2">
                      <ul>
                          <li><%= pj[6] %></li>
                      </ul>
                  </td>
              </tr>
          </table>

          <br><br>





          <table>
              <tr>
                  <td bgcolor="lightgreen">
                      <blockquote>
                             <%= pj[7] %><br>
                      </blockquote>
                  </td>
              </tr>
          </table>

            <br><br><br>
          <a href="#menu">Go to the menu</a>

      </div>

  </div>

  <br><br><br><br><br>

  <!-- 프로젝트 상세 -->
  <div>

    <strong id= "data"><데이터 세트></strong>
      <hr>

  <!-- 프로젝트 데이터 세트 -->
  <div>
      <table  width="98%" align="center">
          <tr>
              <th align="right"><a href ="project_data_modification.jsp?seq=<%= seq %>&id=<%= sess%>"><% if(is_member.equals("true")){out.print("<input type='button' value='수정'>");}%></a></th>
          </tr>
      </table>

      <blockquote>
          <table border="1"  width="90%" height="200" align="left">
              <tr>
                  <td width="30%" bgcolor="lightgray"><b>파일명</b></td>
                  <td bgcolor="lightgray"><b>메모</b></td>
                  <td width="30%" bgcolor="lightgray"><b>날짜</b></td>
              </tr>
<%
//프로젝트 데이터
   seq = (String)request.getParameter("seq");
   sql="SELECT pd_file, pd_note, pd_date FROM project_data WHERE pj_seq=" + seq;
   stmt.executeQuery(sql);
   
   rs = null;
   rs = stmt.executeQuery(sql);
   
   //데이터 가져오기
   if(rs.next()){
      do{
         out.print("<tr>");
         out.print("<td>" + rs.getString("pd_file") + "</td>");
         out.print("<td>" + rs.getString("pd_note") + "</td>");
         out.print("<td>" + rs.getString("pd_date") + "</td>");
         out.print("</tr>");
      }while(rs.next());
   } 
   else{
      out.print("<tr>");
      out.print("<td>자료 없음</td>");
      out.print("<td>자료 없음</td>");
      out.print("<td>자료 없음</td>");
      out.print("</tr>");
   }
%>
          </table>

      </blockquote>

  </div>

</div>

<br><br><br><br><br><br><br><br><br><br><br><br><br>


<a href="#menu">Go to the menu</a>
<br><br><br><br><br><br>

<!-- 프로젝트 상세 -->
<div>

    <strong id = community><커뮤니티></strong>
    <hr>

    <!-- 프로젝트 커뮤니티 -->
    <div>
<%
//프로젝트 커뮤니티
   seq = (String)request.getParameter("seq");
   sql="SELECT us_img, pc_text, a.us_id, pc_seq FROM project_community a INNER JOIN user b ON a.us_id = b.us_id WHERE pj_seq=" + seq;
   stmt.executeQuery(sql);
   
   rs = null;
   rs = stmt.executeQuery(sql);
   
   //데이터 가져오기
   if(rs.next()){
      do{
         out.print("<div>");
         out.print("<table bordercolor = \"green\" width=\"98%\" align=\"center\">");
         if(sess.equals(rs.getString("a.us_id"))){
            if(rs.getString("pc_seq").equals((String)request.getParameter("pc_seq"))){
               out.print("<tr>");
               
               out.print("<td width=\"70\">");
               out.print("<img src=\"" + rs.getString("us_img") + "\" width=\"50\" height=\"50\">");
               out.print("</td>");
               
               out.print("<td>");
               out.print("<form action='executeUpdate.jsp' target='hidden'>");
               out.print("<textarea name='comment_text' cols='200' rows='2'>" + rs.getString("pc_text") + "</textarea>");
               out.print("<input type='hidden' name='id' value='" + sess + "'>");
               out.print("<input type='hidden' name='comment' value='" + seq + "'>");
               out.print("<input type='hidden' name='comment_update' value='" + rs.getString("pc_seq") + "'>");
               out.print("<input type='submit' value='코멘트 수정'>");
               out.print("</form>");
               out.print("</td>");
               
               out.print("<td>");
               out.print("<form action='executeUpdate.jsp' target='hidden'>");
               out.print("<input type='hidden' name='id' value='" + sess + "'>");
               out.print("<input type='hidden' name='comment' value='" + seq + "'>");
               out.print("<input type='hidden' name='comment_delete' value=" + rs.getString("pc_seq") + ">");
               out.print("<input type='submit' value='삭제'>");
               out.print("</form>");
               out.print("</td>");
               
               out.print("</tr>");
            }
            else{
               out.print("<tr>");
               out.print("<td width=\"70\"><img src=\"" + rs.getString("us_img") + "\" width=\"50\" height=\"50\"></td>");
               out.print("<td>" + rs.getString("pc_text") + "</td>");
               out.print("</tr>");
               
               out.print("<tr>");
               out.print("<td></td>");
               out.print("<td align='right'>");
                   out.print("<form action='project_community_modification.jsp'>");
                   //out.print(tmp);
                   out.print("<input type='hidden' name='id' value='" + sess + "'>");
                    out.print("<input type='hidden' name='seq' value='" + seq + "'>");
                   out.print("<input type='hidden' name='pc_seq' value='" + rs.getString("pc_seq") + "'>");
                   out.print("<input type='submit' value='코멘트 수정'>");
                   out.print("</form></td>");
               out.print("</tr>");
            }
            
         } 
         else{
            out.print("<tr>");
            out.print("<td width=\"70\"><img src=\"" + rs.getString("us_img") + "\" width=\"50\" height=\"50\"></td>");
            out.print("<td>" + rs.getString("pc_text") + "</td>");
            out.print("<td></td>");
            out.print("</tr>");
            
         }
         out.print("</table>");
         out.print("<br>");
         out.print("</div>");
      }while(rs.next());
   } 
   else{
      //out.print("<tr>");
      //out.print("<td>코멘트 없음</td>");
      //out.print("</tr>");
   }
%>

        <br>
        <!-- 커뮤니티 글 입력하기 -->
        <div>
            <form action="executeUpdate.jsp">
                &nbsp;&nbsp;
                <input type="hidden" name='id' value=<%= sess %>>
                <input type="hidden" name='comment' value=<%=seq%>>
                <textarea name="comment_insert" rows="5" cols='200'"></textarea>
                <input type="submit" value="코멘트 입력" onclick="parent.hidden.location.href='hidden.jsp?check=코멘트입력'">
            </form>
        </div>
    </div>
</div>
<br><br><br>
<a href="#menu">Go to the menu</a>

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
