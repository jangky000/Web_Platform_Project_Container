<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
	String id = (String)request.getParameter("id");
%>
<!DOCTYPE HTML>

<html>
    <head>
        <title>recruit creation page</title>
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
                <th align="left"><u><a href="main5.jsp">프로젝트 둘러보기</a></u></th>
                <th align="left"><u><a href="project_recruit.jsp">프로젝트 모집</a></u></th>
                <th align="left"><u><a href="my_project.jsp">내 프로젝트</a></u></th>
              </tr>
          </table>
      </div>

      <hr>

	<center>
      <h1>프로젝트 모집하기</h1>

	<form action="recruit_upload.jsp" method="POST" enctype="Multipart/form-data" target='hidden'>
		<input type='hidden' name='id' value='<%=id %>'>
      <table>
        <tr>
          <td width = 850></td>
          <td>
            <input type="submit" value="등록"/>
           <td>
        </tr>
      </table>
      
	    <table border = "2">
	      
	        <tr>
	          <td bgcolor="skyblue"><center>프로젝트명 </center></td>
	          <td width = "75%">
	            <input size="100%" type="text" name = "rp_name"  ></td>
	        </tr>
	
	        <tr>
	          <td bgcolor="skyblue"><center>예상 시작일 </center></td>
	          <td>
	            <input type="text" size="100%" name = "rp_start">
	          </td>
	        </tr>
	
	        <tr>
	          <td bgcolor="skyblue"> <center> 프로젝트 등록인 </center></td>
	          <td>
	            <input type="text" size="100%" name = "rp_user">
	          </td>
	        </tr>
	
	        <tr>
	          <td bgcolor="skyblue"><center>이메일</center></td>
	
	          <td>
	            <input type="text" size = "100%" name = "email">
	          </td>
	        </tr>
	
	        <tr>
	          <td bgcolor="skyblue"><center>프로젝트 이미지</center></td>
	          <td>
	              <input type="file" name="filename">
	          </td>
	        </tr>
	
	        <tr>
	          <td bgcolor="skyblue"><center>카테고리</center></td>
	          <td>
	            <select name="category">
	              <option value="1"> 컴퓨터시스템 및 이론</option>
	              <option value="2"> 병렬 및 분산컴퓨팅</option>
	              <option value="3"> 통신시스템</option>
	              <option value="4"> 모바일컴퓨팅</option>
	              <option value="5"> 정보보호</option>
	              <option value="6"> 컴퓨터교육</option>
	              <option value="7"> 인터넷응용</option>
	              <option value="8"> 정보시스템</option>
	              <option value="9"> 소프트웨어공학</option>
	              <option value="10"> 데이터베이스</option>
	              <option value="11"> 인공지능</option>
	              <option value="12"> 멀티미디어처리</option>
	              <option value="13"> 웹사이언스</option>
	              <option value="14"> 인간과컴퓨터상호작용</option>
	              <option value="15"> 사물인터넷</option>
	            </select>
	          </td>
	        </tr>
	
	        <tr>
	          <td bgcolor="skyblue"><center>프로젝트 설명</center></td>
	          <td>
	            <textarea name="rp_text" rows ="10" cols = "100%"> </textarea>
	          </td>
	        </tr>
	      </table>
	    </form>
    </center>
  </body>
</html>
