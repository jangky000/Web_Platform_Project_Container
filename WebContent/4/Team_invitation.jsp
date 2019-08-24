<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>Team_invitation</title>
</head>
<div align="center">
<body>
  <table border="1" id="timetable1" width="600" height="500">
		<tr><td><table border="0" id="timetable1.5" width="600">
			<thead>
				<tr>
					<th><h1>&nbsp;팀 초대</h1></th>
					<th><img src="updown_logo.png" width="200" height="130"></th>
				</tr>
			</thead>
		</table></td></tr>
  <tr valign="top">
		<td>
    <table border="0" id="timetable2" width="600">
    <tbody align = "center">
      <tr>
        <td><h3>&nbsp;&nbsp;수강 과목 목록&nbsp;&nbsp;</h3></td>
        <td>
					<select name="subject">
						<option value="">과목선택</option>
						<option value="웹플랫폼개발">웹플랫폼개발</option>
						<option value="종합설계">종합설계</option>
						<option value="파이썬프로그래밍">파이썬프로그래밍</option>
					</select>
				</td>
      </tr>
      <tr>
        <td><h3>&nbsp;&nbsp;팀 명 입력&nbsp;&nbsp;</h3></td>
        <td><input id="team_name" type="text" /></td>
      </tr>
			<tr>
        <td><h3>&nbsp;&nbsp;학생 목록&nbsp;&nbsp;</h3></td>
        <td><button onclick="location.href = 'Team_student_selection.jsp'">학생 선택 페이지 이동</button></td>
      </tr>
			<tr>
        <td><h3>&nbsp;&nbsp;이름&nbsp;&nbsp;</h3></td>
				<td><h3>&nbsp;&nbsp;학번&nbsp;&nbsp;</h3></td>
      </tr>
			<tr>
        <td>&nbsp;&nbsp;김민석&nbsp;&nbsp;</td>
				<td>&nbsp;&nbsp;201411**42&nbsp;&nbsp;</td>
        <td><button>삭제</button></td>
      </tr>
    </tbody>
		<tfoot>
			<td></td>
			<td></td>
			<td><br></br><button>요청하기</button></td>
		</tfoot>
    </table>
    </td>
	</tr>
  </table>
</body>
</div>
</html>
