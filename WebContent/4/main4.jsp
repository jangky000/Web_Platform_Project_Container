<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
    <title>MainMenu</title>
</head>
<body>
    <div align="center">
        <table border="1" width="600" height="500">
            <thead>
                <tr>
                    <td>
                        <table border="0" width="600">
                            <thead>
                                <tr align="center">
                                    <td>
                                        <h1>파일관리</h1>
                                    </td>
                                    <td>
                                        <img src="updown_logo.png" width="200" height="130" />
                                    </td>
                                </tr>
                            </thead>
                        </table>
                    </td>
                </tr>
            </thead>
            <tr valign="top"><td>
              <table border="0" id="timetable2" width="600">
              <tbody align = "center">
                <tr>
                  <td><h2>수업 관리</h2></td>
                  <td><h2>팀 관리</h2></td>
                  <td><h2>파일 관리</h2></td>
                </tr>
                <tr>
                  <td><button onclick="location.href = 'Class_folder_usage.jsp'">과목 데이터<br>사용량</button></td>
                  <td><button onclick="location.href = 'Team_verification.jsp'">팀 확인</button></td>
                  <td><button onclick="location.href = 'file_management.jsp'">수강 과목<br>폴더 조회</button></td>
                </tr>
                <tr>
                  <td><button onclick="location.href = 'class_view.jsp'">수강 과목<br>추가/삭제</button></td>
                  <td><button onclick="location.href = 'Team_invitation.jsp'">팀 초대</button></td>
                </tr>
          			<tr>
                  <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                  <td><button onclick="location.href = 'Team_request_verification.jsp'">팀 요청<br>확인</button></td>
                  <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                </tr>
                </tbody>
                </table>
              </td></tr>
        </table>
    </div>
</body>
</html>
