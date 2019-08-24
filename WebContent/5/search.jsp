<%@ page import = "java.sql.ResultSet"%>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.SQLException" %>
<%@ page import = "java.sql.DriverManager" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
   String sess = request.getParameter("id");
   String search = (String)request.getParameter("search");
   String PR = (String)request.getParameter("PR");
   String HL = (String)request.getParameter("HL");
   
   
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
        <title>search page</title>
        <!-- <meta content = "text/html"; charset="euc-kr"> -->
    </head>


    <body>
      <table>
        <tr>
          <td>

              <a href="main5.jsp?id=<%=sess%>"><img src="main_logo.PNG" width="150" height="60"></a>

          </td>

        <td width = "58%"></td>

          <td>
            <center>
              <form action="search.jsp">
                  <br>
                  <input type="hidden" name="id" value="<%=sess%>">
                  <input type="text"  name ="search" placeholder="검색">
                  <input type="submit" value="검색">
              </form>
            </center>
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

      <hr><br>
      
      <div>
         <form action='search.jsp'>
            <input type="hidden" name="id" value="<%=sess %>">
            <input type="hidden" name="search" value="<%=search %>">
          <table border="0" width="100%" align="center">
              <tr>
                  <td width ="100px" align="ㅣleft">
                  <ul><li><h2>"<%= search%>" 프로젝트 검색 결과입니다.</h2>
                     <ul><li><b>검색 설정: &nbsp;&nbsp;</b>
                     <select name="PR">
                        <option value = 0 <% if(PR!=null && PR.equals("0")){out.print("selected = 'selected'");} %>>프로젝트</option>
                        <option value = 1 <% if(PR!=null && PR.equals("1")){out.print("selected = 'selected'");} %>>모집</option>
                     </select>
                     <select name="HL">
                        <option value = 0 <% if(HL!=null && HL.equals("0")){out.print("selected = 'selected'");} %>>조회수</option>
                        <option value = 1 <% if(HL!=null && HL.equals("1")){out.print("selected = 'selected'");} %>>최신순</option>
                     </select>
                     <input type="submit" value="재검색"></li></ul></li></ul>
                  </td>                  
              </tr>
          </table>
      </div>

      


<%
   //검색

   //SQL 데이터 추가 수정 삭제 실행할 객체 생성
   Statement stmt = conn.createStatement();
   //쿼리 결과를 저장한 메모리 영역을 참조하는 객체
   ResultSet rs = null;
   
   //out.print("search: "+search);
   
   
   if(search.equals("")){
      out.print("<table align ='center'>");
      out.print("<tr>");
      out.print("<td>");
      out.print("<img src='search_no.jpg' width='400px' height='400px'><br>");
      out.print("<h1>\"검색어를 입력하세요\"</h1>");
      out.print("</td>");
      out.print("</tr>");
      out.print("</table>");
   }
   else if((PR == null && HL == null) || PR.equals("0") ){
      String sql = "SELECT pj_seq, pj_img, pj_name,ct_name, pj_start, pj_text FROM (SELECT ct_seq, pj_seq, pj_name, pj_img, pj_text, pj_start, pj_hit FROM project  WHERE pj_name LIKE '%" + search + "%') a JOIN category b ON a.ct_seq = b.ct_seq ORDER BY pj_hit DESC;"; 
      if(PR!= null && HL != null && HL.equals("1")){
         sql = "SELECT pj_seq, pj_img, pj_name,ct_name, pj_start, pj_text FROM (SELECT ct_seq, pj_seq, pj_name, pj_img, pj_text, pj_start, pj_hit FROM project  WHERE pj_name LIKE '%" + search + "%') a JOIN category b ON a.ct_seq = b.ct_seq ORDER BY pj_seq DESC;";
      }
      //out.print(sql);
      stmt.executeQuery(sql);
      rs = stmt.executeQuery(sql);   
      
      
      //데이터 가져오기
      if(rs.next()){
         do{
            //out.print("<br>");
            //out.print(rs.getString("pj_name")+"<br>");
            out.print("<table border = '0' width='95%' align='center'>");
            out.print("<tr>");
            out.print("<td width = '220px'><img src='" + rs.getString("pj_img") + "' width = '200px' height = '120px' alt=''></td>");
            out.print("<td>");
            out.print("<hr>");
            out.print("<a href='project_summary.jsp?id=" + sess + "&seq=" + rs.getString("pj_seq") + "'><h3>"+ rs.getString("pj_name") +"</h3></a>");
            out.print("<a href='project_summary.jsp?id=" + sess + "&seq=" + rs.getString("pj_seq") + "'>"+ "project_summary.jsp?id=" + sess + "&seq=" + rs.getString("pj_seq") + "</a><br>");
            out.print(rs.getString("pj_start").substring(0,4) +"."+ rs.getString("pj_start").substring(4,6) +"."+ rs.getString("pj_start").substring(6,8));
            out.print("&nbsp;&nbsp;&nbsp;<b>[" + rs.getString("ct_name") + "]</b><br>");
            if(rs.getString("pj_text").length() > 100)
               out.print(rs.getString("pj_text").substring(0, 100) + "...");   
            else
               out.print(rs.getString("pj_text"));
            out.print("</tr>");
            out.print("</table>");
         } while(rs.next());
      } 
      else{
         out.print("<table align ='center'>");
         out.print("<tr>");
         out.print("<td>");
         out.print("<img src='search_no.jpg' width='400px' height='400px'><br>");
         out.print("<h1>\"" + search + "\"와(과) 일치하는 검색 결과가 없습니다</h1>");
         out.print("<ul>");
         out.print("<li>모든 단어의 철자가 정확한지 확인하세요</li>");
         out.print("<li>다른 검색어를 사용해 보세요</li>");
         out.print("<li>더 일반적인 검색어를 사용해보세요</li>");
         out.print("</ul>");
         out.print("</td>");
         out.print("</tr>");
         out.print("</table>");
      }
   }
   else if(PR!=null && HL!=null && PR.equals("1") ){
      String sql = "SELECT rp_img, rp_seq, rp_name,rp_start,ct_name,rp_text FROM (SELECT ct_seq, rp_seq, rp_name, rp_img, rp_text, rp_start, rp_hit FROM recruit_project  WHERE rp_name LIKE '%" + search + "%') a JOIN category b ON a.ct_seq = b.ct_seq ORDER BY rp_hit DESC;"; 
      if(PR!= null && HL != null && HL.equals("1")){
         sql = "SELECT rp_img, rp_seq, rp_name,rp_start,ct_name,rp_text FROM (SELECT ct_seq, rp_seq, rp_name, rp_img, rp_text, rp_start, rp_hit FROM recruit_project  WHERE rp_name LIKE '%" + search + "%') a JOIN category b ON a.ct_seq = b.ct_seq ORDER BY rp_seq DESC;";
      }
      //out.print(sql);
      stmt.executeQuery(sql);
      rs = stmt.executeQuery(sql);   
      
      
      //데이터 가져오기
      if(rs.next()){
         do{
            //out.print("<br>");
            //out.print(rs.getString("pj_name")+"<br>");
            out.print("<table border = '0' width='95%' align='center'>");
            out.print("<tr>");
            out.print("<td width = '220px'><img src='" + rs.getString("rp_img") + "' width = '200px' height = '120px' alt=''></td>");
            out.print("<td>");
            out.print("<hr>");
            out.print("<a href='project_recruit_summary.jsp?id=" + sess + "&seq=" + rs.getString("rp_seq") + "'><h3>"+ rs.getString("rp_name") +"</h3></a>");
            out.print("<a href='project_recruit_summary.jsp?id=" + sess + "&seq=" + rs.getString("rp_seq") + "'>"+ "project_recruit_summary.jsp?id=" + sess + "&seq=" + rs.getString("rp_seq") + "</a><br>");
            out.print(rs.getString("rp_start").substring(0,4) +"."+ rs.getString("rp_start").substring(4,6) +"."+ rs.getString("rp_start").substring(6,8));
            out.print("&nbsp;&nbsp;&nbsp;<b>[" + rs.getString("ct_name") + "]</b><br>");
            if(rs.getString("rp_text").length() > 100)
               out.print(rs.getString("rp_text").substring(0, 100) + "...");   
            else
               out.print(rs.getString("rp_text"));
            out.print("</tr>");
            out.print("</table>");
         } while(rs.next());
      } 
      else{
         out.print("<table align ='center'>");
         out.print("<tr>");
         out.print("<td>");
         out.print("<img src='search_no.jpg' width='400px' height='400px'><br>");
         out.print("<h1>\"" + search + "\"와(과) 일치하는 검색 결과가 없습니다</h1>");
         out.print("<ul>");
         out.print("<li>모든 단어의 철자가 정확한지 확인하세요</li>");
         out.print("<li>다른 검색어를 사용해 보세요</li>");
         out.print("<li>더 일반적인 검색어를 사용해보세요</li>");
         out.print("</ul>");
         out.print("</td>");
         out.print("</tr>");
         out.print("</table>");
      }
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

