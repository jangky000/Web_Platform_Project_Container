<%@ page import = "java.sql.ResultSet"%>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.SQLException" %>
<%@ page import = "java.sql.DriverManager" %>

<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("UTF-8"); %>

<%
   //String sess = (String)session.getAttribute("id"); 
   //String id = (String)request.getParameter("id");
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
        <title>enrollment page</title>

    </head>
    <body>
      <div class="enrollment">

<%   
   //파일 입출력
   // request.getRealPath("상대경로") 를 통해 파일을 저장할 절대 경로를 구해온다.
   // 운영체제 및 프로젝트가 위치할 환경에 따라 경로가 다르기 때문에 아래처럼 구해오는게 좋음
   //String uploadPath = request.getRealPath("5/image/");
   ServletContext scontext = getServletContext();
   String uploadPath = scontext.getRealPath("index/id/");
   
   out.println("절대경로 : " + uploadPath + "<br/>");
   
   int maxSize = 1024 * 1024 * 10; // 한번에 올릴 수 있는 파일 용량 : 10M로 제한
   
   String id = ""; // 로그인한 아이디
   String eid = "";
   String pw = "";
   String check_pw = "";
   String name = "";
   String nickname = "";
   String email_address = "";
   String phone_number = "";
   String sex = "";
   int univ = 1;
   int major = 1;
   String student_number = "";
   String grade = "";
   String age = "";
   //String certificate = "";
   //String profile_img="";
   String appeal = "";
   String[] file_path = new String[10];
   file_path[0] = "../index/id/"; // cert
   file_path[1] = "../index/id/"; // img
   int i =0;

   String fileName1 = ""; // 중복처리된 이름
   String originalName1 = ""; // 중복 처리전 실제 원본 이름
   long fileSize = 0; // 파일 사이즈
   String fileType = ""; // 파일 타입
   
   MultipartRequest multi = null;
   
   try{
      // request,파일저장경로,용량,인코딩타입,중복파일명에 대한 기본 정책
      multi = new MultipartRequest(request,uploadPath,maxSize,"utf-8",new DefaultFileRenamePolicy());
      //out.print("try");
      
      id = (String)multi.getParameter("id");
      //out.print(id);
      // form내의 input name="name" 인 녀석 value를 가져옴
      eid = (String)multi.getParameter("eid");
      pw = (String)multi.getParameter("pwd");;
      check_pw = (String)multi.getParameter("check_pwd");
      name = (String)multi.getParameter("name");
      nickname = (String)multi.getParameter("nickname");
      email_address = (String)multi.getParameter("email_address");
      phone_number = multi.getParameter("phone_number");
      sex = multi.getParameter("sex");
      univ = Integer.parseInt(multi.getParameter("univ"));
      major = Integer.parseInt(multi.getParameter("major"));
      student_number = multi.getParameter("student_number");
      grade = multi.getParameter("grade");
      age = multi.getParameter("age");
      //certificate = multi.getParameter("certificate");
      appeal = multi.getParameter("appeal");
      
      // 전송한 전체 파일이름들을 가져옴
      Enumeration files = multi.getFileNames();
      
      while(files.hasMoreElements()){
         // form 태그에서 <input type="file" name="여기에 지정한 이름" />을 가져온다.
         String file1 = (String)files.nextElement(); // 파일 input에 지정한 이름을 가져옴
         // 그에 해당하는 실재 파일 이름을 가져옴
         originalName1 = multi.getOriginalFileName(file1);
         // 파일명이 중복될 경우 중복 정책에 의해 뒤에 1,2,3 처럼 붙어 unique하게 파일명을 생성하는데
         // 이때 생성된 이름을 filesystemName이라 하여 그 이름 정보를 가져온다.(중복에 대한 처리)
         fileName1 = multi.getFilesystemName(file1);   
         file_path[i] = file_path[i] + fileName1;
         //out.print(file_path[i]);
         // 파일 타입 정보를 가져옴
         fileType = multi.getContentType(file1);
         // input file name에 해당하는 실재 파일을 가져옴
         File file = multi.getFile(file1);
         // 그 파일 객체의 크기를 알아냄
         fileSize = file.length();
         i++;
      }
      //out.print(name);
      //out.print(fileName1);
      //out.print(originalName1);
      //out.print(uploadPath+fileName1+"<br>");
      //out.print("<img src="+uploadPath+ fileName1+"></img>"); 안됨
      
   }catch(Exception e){
      e.printStackTrace();
   }

   
   
   //out.print(id);

   //SQL 데이터 추가 수정 삭제 실행할 객체 생성
   
   Statement stmt = conn.createStatement();
   Statement stmt2 = conn.createStatement();
   
   String sql = "SELECT us_id FROM user WHERE us_id='" + eid + "'";
   
   // 쿼리 결과를 저장한 메모리 영역을 참조하는 객체
   ResultSet rs = null;
   String us_id = null;
   
   String id_check ="";
   String pw_check ="";
   out.print("check");
   if(id == null || id.equals("null")){
      //out.print("sql1: " + sql);
      rs = stmt.executeQuery(sql);
      
      if(rs.next()){   
         id_check="아이디가 중복되었습니다.";
         
      } 
      else{
         if(!pw.equals("") && !check_pw.equals("") && pw_check.equals("") && !name.equals("") && !age.equals("") && !nickname.equals("") && !student_number.equals("") && !email_address.equals("") && !phone_number.equals("") && sex != null && grade != null){
            if(file_path[0].equals("id/"))
               file_path[0] = "";
            if(file_path[1].equals("id/"))
               file_path[1] = "";
            sql = "INSERT INTO user VALUES('" + eid +"', '"+ pw +"', '"+ name +"', "+ grade +", " + age + ", '" + file_path[0] + "','" + nickname + "', '" + sex + "', '" + appeal + "', '"+ student_number +"', '" + email_address + "', '" + phone_number + "', '" + file_path[1] + "', " + univ + ", "+ major +");";
            out.print(sql);
         }
         out.print(sql);
         try {
            stmt2.executeUpdate(sql);
            
            response.sendRedirect("index.jsp");
         }catch(Exception e){                                                    
            e.printStackTrace();
            //out.println("삽입 실패");
         }
         finally{
            
         }
                  
         //if(rs2 != null) try{rs2.close();System.out.println("해제성공");}catch(SQLException e){}
      }
      
   }
   
   
   //데이터 입력하기
   if(id != null && !id.equals("null")){
      
      if(!pw.equals("") && !check_pw.equals("") && pw_check.equals("") && !name.equals("") && !age.equals("") && !nickname.equals("") && !student_number.equals("") && !email_address.equals("") && !phone_number.equals("") && sex != null && grade != null){
         //out.print("44");
         if(file_path[0].equals("../index/id/"))
            file_path[0] = "";
         if(file_path[1].equals("../index/id/"))
            file_path[1] = "../index/id/profile_image.jpg";
         //sql = "INSERT INTO user VALUES('" + id +"', '"+ pw +"', '"+ name +"', "+ grade +", " + age + ", '" + cert_path + "','" + nickname + "', '" + sex + "', '" + appeal + "', '"+ student_number +"', '" + email_address + "', '" + phone_number + "', '" + img_path + "', " + univ + ", "+ major +");";
         sql = "UPDATE user SET us_password = '" + pw + "', us_grade='" + grade + "', us_age=" + age + ", us_certificate='" + file_path[0] + "', us_nickname='" + nickname + "', us_sex='" + sex + "', us_appeal='" + appeal + "', us_student_id='"+ student_number + "', us_email='" + email_address + "', us_phone_number='" + phone_number + "', us_img='" + file_path[1] + "', uv_seq=" + univ + ", dp_seq=" + major + " WHERE us_id = '" + eid +"';";

         out.print(sql);
         
         try {
            stmt2.executeUpdate(sql);
            //out.print("2");
            response.sendRedirect("index.jsp");
         }catch(Exception e){                                                    
            e.printStackTrace();
            //out.println("삽입 실패");
         }
         finally{
            
         }
   
      }
      //out.print("33");
   }
   
   
   if(pw.equals(check_pw)){
      pw_check = "";
   }
   else{
      pw_check = "패스워드가 일치하지 않습니다.";
   }
   
   if(eid.equals(""))
      id_check = "아이디를 입력해주세요";
   
   if(pw.equals(""))
      pw_check = "패스워드를 입력해주세요";
   
%>
         <div align="center">
             <form action="enrollment_check.jsp" method="POST" enctype="Multipart/form-data">
               <table border = "0" width="40%">
                  <tr>
                     <td align="center" width="80%"><h1><% if(id ==null || id.equals("null")){out.print("회원가입");}else{out.print("개인정보 수정");} %></h1></td>
                     <td align="right"><br><br><input type="submit" value="<% if(id==null || id.equals("null")){out.print("가입");}else{out.print("수정 완료");} %>"></td>
                  </tr>
               </table>
               
               <% if(id==null || id.equals("null")){}else{ out.print("<input type='hidden' name=id value='" + id + "'>");} %>
               
               <table border = "2" width="40%">
                   <tr>
                       <td bgcolor = "yellow"><center>아이디</center></td>
                       <td><input type="text" name = "eid" value="<% out.print(eid); %>"> <% out.print("<b>"+id_check+"</b>"); %> </td>
                   </tr>
                   <tr>
                       <td bgcolor = "yellow"><center>비밀번호</center></td>
                       <td><input type="password" name = "pwd" value="<% out.print(pw); %>"> <% out.print("<b>" + pw_check+"</b>"); %> </td>
                   </tr>
                   <tr>
                       <td bgcolor = "yellow"><center>비밀번호 확인</center></td>
                       <td><input type="password" name = "check_pwd" value="<% out.print(check_pw); %>"></td>
                   </tr>
                   <tr>
                       <td bgcolor = "yellow"><center>이름</center></td>
                       <td><input type="text" name = "name" value="<% out.print(name); %>"><% if(name.equals("")){ out.print(" <b>이름을 기입하세요</b>"); } %></td>
                   </tr>
                   <tr>
                       <td bgcolor = "yellow"><center>닉네임</center></td>
                       <td><input type="text" name = "nickname" value="<% out.print(nickname); %>"><% if(nickname.equals("")){ out.print(" <b>별명을 기입하세요</b>"); } %></td>
                   </tr>
                   <tr>
                       <td bgcolor = "yellow"><center>이메일</center></td>
                       <td><input type="email" name="email_address" value="<% out.print(email_address); %>"><% if(email_address.equals("")){ out.print(" <b>이메일을 입력하세요</b>"); } %></td>
                   </tr>
                   <tr>
                       <td bgcolor = "yellow"><center>핸드폰번호</center></td>
                       <td><input type="text" name ="phone_number" value="<% out.print(phone_number); %>"><% if(phone_number.equals("")){ out.print(" <b>핸드폰 번호를 입력하세요</b>"); } %></td>
                   </tr>
                   <tr>
                       <td bgcolor = "yellow"><center>성별</center></td>
                       <td><input type="radio" name="sex" value="M" <% if(sex != null && sex.equals("M")){out.print("checked");} %>>남 <input type="radio" name="sex" value="F" <% if(sex != null && sex.equals("F")){out.print("checked");} %>>여   <% if(sex==null){ out.print("<b>성별을 체크해주세요.</b>"); } %></td>
                   </tr>
                   <tr>
                       <td bgcolor = "yellow"><center>대학교</center></td>
                       <td>
                          <select name="univ">
                             <% 
                             //if(stmt != null){
                                String sql2 = "SELECT uv_seq, uv_name FROM university";
                                out.print(sql2);
                                rs = stmt.executeQuery(sql2);
                                int i2 =1;
                                while(rs.next()){
                                   out.print("<option value='" + i2 + "'");
                                   if(univ == i2){out.print("selected='selected'");}
                                   out.print("> " + rs.getString("uv_name") + "</option>");
                                   i2++;
                                }
                                //if(rs != null) try{rs.close();System.out.println("해제성공");}catch(SQLException e){}
                                
                             //}
                             %>
                        </select>
                       </td>
                   </tr>
                   <tr>
                       <td bgcolor = "yellow"><center>학과</center></td>
                       <td>
                          <select name="major">
                           <% 
                              //if(stmt != null){
                                 String sql3 = "SELECT dp_seq, dp_name FROM department";
                                   out.print(sql3);
                                 rs = stmt.executeQuery(sql3);
                                   int i3 = 1;
                                   while(rs.next()){
                                      out.print("<option value='" + i3 + "'");
                                      if(major == i3){out.print("selected='selected'");}
                                      out.print("> " + rs.getString("dp_name") + "</option>");
                                      i3++;
                                   }
                                   //if(rs3 != null) try{rs3.close();System.out.println("해제성공");}catch(SQLException e){}
                              //}
                           %>
                        </select>
                   </tr>
                   <tr>
                       <td bgcolor = "yellow"><center>학번</center></td>
                       <td><input type="text" name="student_number" value="<% out.print(student_number); %>"><% if(student_number.equals("")){ out.print(" <b>학번을 입력해주세요</b>"); } %></td>
                   </tr>
                   <tr>
                       <td bgcolor = "yellow"><center>학년</center></td>
                       <td><input type="radio" name="grade" value="1" <% if(grade != null && grade.equals("1")){out.print("checked");} %>>1학년 <input type="radio" name="grade" value="2" <% if(grade != null && grade.equals("2")){out.print("checked");} %>>2학년 <input type="radio" name="grade" value="3" <% if(grade != null && grade.equals("3")){out.print("checked");} %>>3학년 <input type="radio"name="grade" value="4" <% if(grade != null && grade.equals("4")){out.print("checked");} %>>4학년   <% if(grade==null){ out.print("<b>학년을 체크해주세요.</b>"); } %></td>
                   </tr>
                   <tr>
                       <td bgcolor = "yellow"><center>나이</center></td>
                       <td><input type="text" name = "age" value="<% out.print(age); %>"><% if(age.equals("")){ out.print(" <b>나이를 입력해주세요</b>"); } %></td>
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
                       <td><textarea rows="5"  cols ="60"name = "appeal" placeholder="<% out.print(appeal); %>"></textarea> </td>
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
      <% 
         //resultset 해제
         if(rs != null) try{rs.close();System.out.println("해제성공");}catch(SQLException e){}
         //쿼리 구문 객체 해제
         if(stmt != null) try{stmt.close();System.out.println("해제성공");}catch(SQLException e){}
         if(stmt2 != null) try{stmt2.close();System.out.println("해제성공");}catch(SQLException e){}
         //커넥션 해제
         if(conn != null) try{conn.close();System.out.println("해제성공");}catch(SQLException e){}
      
      %>
    </body>
</html>