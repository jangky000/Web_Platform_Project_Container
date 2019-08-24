<%@ page import = "java.sql.ResultSet"%>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.SQLException" %>
<%@ page import = "java.sql.DriverManager" %>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("euc-kr"); %>

<%
   String id = (String)request.getParameter("id");
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
        <title>my project page</title>
        <!-- <meta content = "text/html"; charset="euc-kr"> -->
    </head>



    <body>


      <table>
        <tr>
          <td>
              <a href = "main5.jsp?id=<%=id%>"><img src="main_logo.PNG" width="150" height="60"></a>

          </td>

          <td width = "58%"></td>

        <td>

          <center>
            <form action="search.jsp">
                <br>
                <input type="text"  name ="search" placeholder="검색">
                <input type="submit" value="검색">
                 <input type="hidden" name = "id" value="<%=id %>">
            </form>
          </center>
        </td>

      </tr>
    </table>

    <div>
        <table  width="400">
            <tr>
              <th align="left"><u><a href="main5.jsp?id=<%=id%>">프로젝트 둘러보기</a></u></th>
              <th align="left"><u><a href="project_recruit.jsp?id=<%=id %>">프로젝트 모집</a></u></th>
              <th align="left"><u><a href="my_project.jsp?id=<%=id %>">내 프로젝트</a></u></th>
            </tr>
        </table>
    </div>

<hr><br>

<%
   
   //SQL 데이터 추가 수정 삭제 실행할 객체 생성
   Statement stmt = conn.createStatement();
   
   String sql = "SELECT us_id, us_name, us_grade, us_email, us_img, dp_name, us_appeal, uv_name FROM user a JOIN (select uv_seq, uv_name, dp_seq, dp_name from department c Join university d) b ON a.dp_seq = b.dp_seq AND a.uv_seq = b.uv_seq WHERE a.us_id = '"+ id +"'";
   //stmt.executeQuery(sql);
   
   // 쿼리 결과를 저장한 메모리 영역을 참조하는 객체
   ResultSet rs = null;
   rs = stmt.executeQuery(sql);
   
   //데이터 가져오기
   if(rs.next()){
      out.print("<table width='95%' align='center'>");
      out.print("<tr><td colspan='2'><h3>프로필</h3></td></tr>");
      out.print("<tr>");
      out.print("<td colspan='2' width='200' height='200'><img src='" + rs.getString("us_img") + "' width='200' height='200'></td>");
      out.print("</tr>");
      out.print("<tr>");
      out.print("<td colspan='2'> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>"+rs.getString("us_name") +"(" + rs.getString("us_id") +")</b>&nbsp;&nbsp;</td>");
      out.print("</tr>");
      out.print("<tr>");
      out.print("<td>&nbsp;&nbsp;<img src='icon_school.jpg' width='25' height='25'></td>");
      out.print("<td><br> &nbsp;" + rs.getString("uv_name") + " / " + rs.getString("dp_name") + " / " + rs.getString("us_grade") + "학년 &nbsp;&nbsp;</td>");
      out.print("</tr>");
      out.print("<tr>");
      out.print("<td width ='25'>&nbsp;&nbsp;<img src='icon_email.jpg' width='25' height='25'></td>");
      out.print("<td><br> &nbsp;" + rs.getString("us_email") + "&nbsp;&nbsp;</td>");
      out.print("</tr>");
      out.print("<tr>");
      out.print("<td width='25'>&nbsp;&nbsp;<img src='icon_appeal.jpg' width='25' height='25'></td>");
      out.print("<td><br> &nbsp;" + rs.getString("us_appeal") + "&nbsp;&nbsp;</td>");
      out.print("</tr>");
      out.print("</table>");

   } 
   else{
      out.print("세션 정보 없음");
   }
   
   sql = "SELECT a.pj_seq,pj_name,pj_img  FROM project a JOIN project_member b ON a.pj_seq = b.pj_seq WHERE us_id = '" + id + "';";
   rs = stmt.executeQuery(sql);
   
   String[] pj_seq = new String[16];
   String[] pj_name = new String[16];
   String[] pj_img = new String[16];
   int pj_count = 0;
   //데이터 가져오기
   if(rs.next()){
      do{
         //out.print("<br>");
         //out.print(rs.getString("pj_name")+"<br>");
         pj_seq[pj_count] = rs.getString("pj_seq");
         pj_name[pj_count] = rs.getString("pj_name")+"<br>";
         pj_img[pj_count] = rs.getString("pj_img");
         pj_count++;
      } while(rs.next());
   } 
   else{
      //out.print("참여한 프로젝트 없음");
   }
   
   sql = "SELECT a.rp_seq,rp_name,rp_img  FROM recruit_project a JOIN recruit_project_applier b ON a.rp_seq = b.rp_seq WHERE b.us_id = '" + id + "' ;"; 
   rs = stmt.executeQuery(sql);
   
   String[] rp_seq = new String[16];
   String[] rp_name = new String[16];
   String[] rp_img = new String[16];
   int rp_count = 0;
   //데이터 가져오기
   if(rs.next()){
      do{
         rp_seq[rp_count] = rs.getString("rp_seq");
         rp_name[rp_count] = rs.getString("rp_name")+"<br>";
         rp_img[rp_count] = rs.getString("rp_img");
         rp_count++;
      } while(rs.next());
   } 
   else{
      //out.print("신청한 프로젝트 없음");
   }
%>



<br><br>
<hr>
<br>
<div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>내가 참여한 프로젝트</b>

    <div align="center">
        <br>

        <table bordercolor = " green" width=98%>
           <% 
               int row = 0;
                while(pj_count >= 0){
                   if(pj_count < 4){
                      out.print("<tr>");
                      for(int i=0; i<pj_count; i++){
                          out.print("<td width='25%'><a href='project_summary.jsp" + "?id="+id+"&seq=" + pj_seq[row*4+i] + "'><img src='" + pj_img[row*4+i] + "'" + "width='350px' height='200'></a></td>");
                      }
                      for(int i=0; i<4-pj_count; i++){
                         out.print("<td width='350px' height='200px'></td>");
                      }
                      out.print("</tr>");
                      out.print("<tr>");
                      for(int i=0; i<pj_count; i++){
                          out.print("<th width='25%' bgcolor='lightgray'><a href='project_summary.jsp" + "?id="+id+"&seq=" + pj_seq[row*4+i] +"'>" + pj_name[row*4+i] + "</a></th>");
                      }
                      for(int i=0; i<4-pj_count; i++){
                         out.print("<td></td>");
                      }
                      out.print("</tr>");
                      pj_count=0;
                      break;
                   }
                   else{
                      out.print("<tr>");
                      for(int i=0; i<4; i++){
                          out.print("<td><a href='project_summary.jsp" + "?id="+id+"&seq=" + pj_seq[row*4+i] + "'><img src='" + pj_img[row*4+i] + "'" + "width='350px' height='200'></a></td>");
                      }
                      out.print("</tr>");
                      out.print("<tr>");
                      for(int i=0; i<4; i++){
                          out.print("<th bgcolor='lightgray'><a href='project_summary.jsp" + "?id="+id+"&seq=" + pj_seq[row*4+i] +"'>" + pj_name[row*4+i] + "</a></th>");
                      }
                      out.print("</tr>");
                      pj_count -= 4;
                      row++;
                   }
                }
           %>    
           </table>
         <br>
    </div>
</div>

<br><hr><br>
<div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>내가 신청 중인 프로젝트</b>

    <div align="center" >
        <br>
        <table bordercolor = " green" width=98%>
           <% 
               int row2 = 0;
                while(rp_count >= 0){
                   if(rp_count < 4){
                      out.print("<tr>");
                      for(int i=0; i<rp_count; i++){
                          out.print("<td width='25%'><a href='project_recruit_summary.jsp" + "?id="+id+"&seq=" + rp_seq[row2*4+i] + "'><img src='" + rp_img[row2*4+i] + "'" + "width='350px' height='200'></a></td>");
                      }
                      for(int i=0; i<4-rp_count; i++){
                         out.print("<td width='350px' height='200px'></td>");
                      }
                      out.print("</tr>");
                      out.print("<tr>");
                      for(int i=0; i<rp_count; i++){
                          out.print("<th width='25%' bgcolor='lightgray'><a href='project_recruit_summary.jsp" + "?id="+id+"&seq=" + rp_seq[row2*4+i] +"'>" + rp_name[row2*4+i] + "</a></th>");
                      }
                      for(int i=0; i<4-rp_count; i++){
                         out.print("<td></td>");
                      }
                      out.print("</tr>");
                      rp_count=0;
                      break;
                   }
                   else{
                      out.print("<tr>");
                      for(int i=0; i<4; i++){
                          out.print("<td><a href='project_recruit_summary.jsp" + "?id="+id+"&seq=" + rp_seq[row2*4+i] + "'><img src='" + rp_img[row2*4+i] + "'" + "width='350px' height='200'></a></td>");
                      }
                      out.print("</tr>");
                      out.print("<tr>");
                      for(int i=0; i<4; i++){
                          out.print("<th bgcolor='lightgray'><a href='project_recruit_summary.jsp" + "?id="+id+"&seq=" + rp_seq[row2*4+i] +"'>" + rp_name[row2*4+i] + "</a></th>");
                      }
                      out.print("</tr>");
                      rp_count -= 4;
                      row++;
                   }
                }
           %>
                    
         </table>
          <br>
        <br>
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