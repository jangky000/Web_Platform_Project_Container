<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>Team_student_selection</title>
</head>
<div align="center">
<body>
  <table border="1" id="timetable1" width="600" height="500">
		<tr><td><table border="0" id="timetable1.5" width="600">
			<thead>
				<tr>
					<th><h1>&nbsp;학생 목록</h1></th>
					<th><img src="updown_logo.png" width="200" height="130"></th>
				</tr>
			</thead>
		</table></td></tr>

	<!--<tbody>-->
  <tr valign="top">
		<td>
    <table border="0" id="timetable2" width="600">
			<thead align ="center">
				<tr>
					<td></td>
	        <td><h3>&nbsp;&nbsp;이름&nbsp;&nbsp;</h3></td>
					<td><h3>&nbsp;&nbsp;학번&nbsp;&nbsp;</h3></td>
	      </tr>
			</thead>
    <tbody align = "center">
			<tr>
				<td><input name="checkbox" value="checkbox" type="checkbox" /></td>
        <td>&nbsp;&nbsp;김민석&nbsp;&nbsp;</td>
				<td>&nbsp;&nbsp;201411**42&nbsp;&nbsp;</td>
      </tr>
			<tr>
				<td><input name="checkbox" value="checkbox" type="checkbox" /></td>
        <td>&nbsp;&nbsp;김지훈&nbsp;&nbsp;</td>
				<td>&nbsp;&nbsp;201411**65&nbsp;&nbsp;</td>
      </tr>
			<tr>
				<td><input name="checkbox" value="checkbox" type="checkbox" /></td>
        <td>&nbsp;&nbsp;홍길동&nbsp;&nbsp;</td>
				<td>&nbsp;&nbsp;201611**33&nbsp;&nbsp;</td>
      </tr>
    </tbody>
    </table>
    </td>
	</tr>
	<!--</tbody>-->

	<tr><td>
		<table border="0" id="timetable3" width="600">
			<tfoot align="center">
				<tr>
					<td><button>제출</button></td>
				</tr>
			</tfoot>
		</table>
	</td></tr>

  </table>
</body>
</div>
</html>
