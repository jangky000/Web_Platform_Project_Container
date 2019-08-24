<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String id = request.getParameter("id"); %>
<!DOCTYPE HTML>

<html>
    <head>
        <title>project_modification page</title>
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

      <h1>프로젝트 수정</h1>

      <table>
        <tr>
          <td width = 800></td>
          <td>
            <input type="submit" value="저장">
            <input type="submit" value="삭제">
          <td>
        </tr>
      </table>
    <table border = "2">
      <form>
        <tr>
          <td bgcolor="skyblue"><center>프로젝트명</center></td>

          <td width = "75%"><input size="100%" type="text" name = "project_id" value = "뇌파 기반 외부환경 제어 인터페이스 개발" ></td>
        </tr>

        <tr>
          <td bgcolor="skyblue"><center>프로젝트 시작일 / 종료일</center></td>
            <td>
              <input type="text" name = "project_plan_start"> ~ <input type="text" name = "project_plan_end">
            </td>
        </tr>

        <tr>
          <td bgcolor="skyblue"><center> 팀이름</center></td>
          <td>
            <input type="text" size="100%" name = "project_team_name">
          </td>
        </tr>

        <tr>
          <td bgcolor="skyblue"><center>구성원</center></td>
          <td>
            <input type="text" size = "10%" name = "project_team_name">
            <input type="text" size = "10%" name = "project_team_name">
            <input type="text" size = "10%" name = "project_team_name">
            <input type="text" size = "10%" name = "project_team_name">
            <input type="text" size = "10%" name = "project_team_name">
          </td>
        </tr>
        <tr>
          <td bgcolor="skyblue"><center>프로젝트 이미지</center></td>
            <td>
              <input type="file">
            </td>
        </tr>
        <tr>
          <td bgcolor="skyblue"><center>카테고리</center></td>
          <td>
            <select >
              <option> 컴퓨터시스템 및 이론</option>
              <option> 병렬 및 분산컴퓨팅</option>
              <option> 통신시스템</option>
              <option> 모바일컴퓨팅</option>
              <option> 정보보호</option>
              <option> 컴퓨터교육</option>
              <option> 인터넷응용</option>
              <option> 정보시스템</option>
              <option> 소프트웨어공학</option>
              <option> 데이터베이스</option>
              <option> 인공지능</option>
              <option> 멀티미디어처리</option>
              <option> 웹사이언스</option>
              <option> 인간과컴퓨터상호작용</option>
              <option> 사물인터넷</option>
            </select>
          </td>
        </tr>

        <tr>
          <td bgcolor="skyblue"><center>프로젝트 설명</center></td>
            <td>
              <textarea rows ="10" cols = "100%"> </textarea>
            </td>
        </tr>
      </form>
    </table>
  </body>
</html>
