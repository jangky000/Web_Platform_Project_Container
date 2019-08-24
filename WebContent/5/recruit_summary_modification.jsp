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
   //사용자 정보
   String id = "";

   try{
      id = (String) request.getParameter("id");
   } finally{
      if(id == null){
         out.print("세션이 조회되지 않음");
      }
   }
   
   


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
                    </form>
                </td>
            </tr>
        </table>
        <div>
            <table  width="400">
                <tr>
                  <th align="left"><u><a href="main5.jsp">프로젝트 둘러보기</a></u></th>
                  <th align="left"><u><a href="project_recruit.jsp">프로젝트 모집</a></u></th>
                  <th align="left"><u><a href="my_project.jsp">내 프로젝트</a></u></th>
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
         String sql = "SELECT rp_name,rp_img, rp_start, ct_seq, rp_ref,rp_text FROM recruit_project WHERE rp_seq=" + tmp; // 
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
            
         } 
         else{
            out.print("검색 결과 없음");
         }
            
      %>
        <!-- 프로젝트 기본정보 -->
        <div>
            <table align="center" width="98%">
                <tr>
                    <td colspan="2"><b><u><%= rp[0] %></u><img src="project_logo.png" width="30" height="30"/></b><br></td>
                    <td align="right"><form action="recruit_modification.jsp"><input type="submit" value="수정"></form></td>
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



              <form action="reference_update.jsp"> 
              <input type= 'hidden' name='seq' value='<%=tmp%>'>   
                   <table  width="98%" align="center">
                       <tr>
   
                           <th align="right"><input type="submit" value="저장"></th>
                       </tr>

                   </table>
                   

              <table  width="98%" align="center">
                    <tr>
                        <th align="left" width=80%><u>Reference</u></th>

                    </tr>
                    <tr>
                        <td colspan="2">
                            <ul>
                                <li><input type = 'text' name = 'ref' size = '100%' value='<%= rp[4] %>'></li>
                            </ul>
                        </td>
                    </tr>
                </table>
                
                
                <table width = "100%">
                    <tr>
                        <td bgcolor="lightgreen">
                            <blockquote>
                                   <textarea name="memo" cols="220" rows="5"><%= rp[5] %></textarea><br>
                            </blockquote>
                        </td>
                    </tr>
                </table>
         </form>
         
         
         
                <br><br><br>
                <a href="#menu">Go to the menu</a>
            </div>

            <div>
                <br><br><br>
                <strong id = "join"><참여 신청></strong>

                <hr>


                <div>
                    <table  width="98%" align="center">
                        <tr>

                            <th align="right"><form><input type="submit" value="참여신청"></form></th>
                        </tr>


                    </table>


                </div>

                <div>
                  <table>
                    <tr>
                      <td><input type="image" src="paper.jpg" ></td>
                      <td><a href="">김oo / 멀티미디어공학과 / 4학년</a></td>

                    </tr>

                    <tr>
                      <td><input type="image" src="paper.jpg" ></td>
                      <td><a href="">박oo / 정보통신공학과 / 3학년</a></td>

                    </tr>

                    <tr>
                      <td><input type="image" src="paper.jpg" ></td>
                      <td><a href ="">이oo / 컴퓨터공학과 / 4학년</a></td>

                    </tr>
                  </table>
                </div>

            </div>
            <br><br><br>
            <a href="#menu">Go to the menu</a>

        </div>
    </body>
</html>