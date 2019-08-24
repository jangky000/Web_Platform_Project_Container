<%@ page import = "java.sql.ResultSet"%>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.SQLException" %>
<%@ page import = "java.sql.DriverManager" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% request.setCharacterEncoding("euc-kr"); %>
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
	String id = (String)request.getParameter("id");
%>
    
<!DOCTYPE HTML>

<html>
    <head>
        <title>project_recruit page</title>
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

        <hr>

        <br><br><br>
        <div>

            <table>
                <tr>
                    <td><b> <h3>&nbsp;&nbsp;현재 모집 중인 프로젝트</h3> </b></td>
                    <td></td><td></td><td width ="75%"></td><td>  </td><td></td>
                    <td><form action="recruit_creation.jsp"><input type='hidden' name='id' value='<%=id %>'><input type="submit" value="프로젝트 모집하기"></form><td>
                </tr>
            </table>
            <div>
                <br>
                <%
					//프로젝트 모집
					
					
					//SQL 데이터 추가 수정 삭제 실행할 객체 생성
					Statement stmt = conn.createStatement();
                	
                	//한페이지에 최대 16개의 게시물을 가져옴
					String sql = "SELECT rp_seq, rp_name, rp_img FROM recruit_project ORDER BY rp_seq DESC LIMIT 16;"; // 
					
					stmt.executeQuery(sql);
					
					// 쿼리 결과를 저장한 메모리 영역을 참조하는 객체
					ResultSet rs = null;
					rs = stmt.executeQuery(sql);	
					
					String[] rp_seq = new String[16];
					String[] rp_name = new String[16];
					String[] rp_img = new String[16];
					int rp_count = 0;
					//데이터 가져오기
					if(rs.next()){
						do{
							//out.print("<br>");
							//out.print(rs.getString("pj_name")+"<br>");
							rp_seq[rp_count] = rs.getString("rp_seq");
							rp_name[rp_count] = rs.getString("rp_name")+"<br>";
							rp_img[rp_count] = rs.getString("rp_img");
							rp_count++;
						} while(rs.next());
					} 
					else{
						out.print("모집 프로젝트 없음");
					}
						
				%>
                <table width=98%>
                <% 
                int row = 0;
                while(rp_count > 0){
                	if(rp_count < 4){
                		out.print("<tr>");
                		for(int i=0; i<rp_count; i++){
                    		out.print("<td><a href='project_recruit_summary.jsp" + "?seq=" + rp_seq[row*4+i] + "&id="+id+ "'><img src='" + rp_img[row*4+i] + "'" + "width='380px' height='200'></a></td>");
                		}
                		out.print("</tr>");
                		out.print("<tr>");
                		for(int i=0; i<rp_count; i++){
                    		out.print("<th bgcolor='lightgray'><a href='project_recruit_summary.jsp" + "?seq=" + rp_seq[row*4+i] +"&id="+id+ "'>" + rp_name[row*4+i] + "</a></th>");
                		}
                		out.print("</tr>");
                		rp_count=0;
                		break;
                	}
                	else{
                		out.print("<tr>");
                		for(int i=0; i<4; i++){
                    		out.print("<td><a href='project_recruit_summary.jsp" + "?seq=" + rp_seq[row*4+i]+ "&id="+id+ "'><img src='" + rp_img[row*4+i] + "'" + "width='380px' height='200'></a></td>");
                		}
                		out.print("</tr>");
                		out.print("<tr>");
                		for(int i=0; i<4; i++){
                    		out.print("<th bgcolor='lightgray'><a href='project_recruit_summary.jsp" + "?seq=" + rp_seq[row*4+i] + "&id="+id+ "'>" + rp_name[row*4+i] + "</a></th>");
                		}
                		out.print("</tr>");
                		rp_count -= 4;
                		row++;
                	}
                }
                %>
                    
                </table>
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

