<%@ page language ="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
	<title>두근두근 연결고리</title>
</head>
<body>
	<a href="main1.jsp">
		<img src="logo.jpg" width="250" height="125">
	</a>

	<table border="1", align="center", width="98%">
		<thead>
			<tr>
				<th width="25%"><a href="main1.jsp"> 미팅관리 </a></th>
				<th width="25%"><a href="place.jsp">장소추천</a></th>
				<th width="25%"><a href="meetingTip.jsp">미팅의 정석</a></th>
				<th width="25%"><a href="mypage.jsp">마이페이지</a></th>
			</tr>
		</thead>
	</table>
	<br>

	<table border="1" align="left" width="21%" height="150px">
		<tr>
			<td align="center"><a href ="meetingTip.jsp">의상 추천</a></td>
		</tr>
		<tr>
			<td align="center"><a href ="successReview.jsp">성공 후기</a></td>
		</tr>
		<tr>
			<td align="center"><a href ="myReview.jsp">내가 쓴 후기</a></td>
		</tr>
	</table>

	<form>
	<fieldset align="right">
		<div align="left">
			상대 학교&nbsp;<select> 
				<optgroup>
					<option>동국대</option>
					<option>숭실대</option>
					<option>경희대</option>
				</optgroup>
			</select><br><br>
			제목 <input type="text" name="title" size="100%"  placeholder="제목을 입력해주세요."><br><br>
			<textarea name ="review" rows="20" cols="150"  placeholder="내용을 입력해주세요."></textarea>
		</div>
		<br><br>
		<div  align="right">
			<input type="button" value="목록으로" onclick="location.href='successReview.jsp'">
			<input type="button" value="등록" onclick="location.href='successReview.jsp'">
		</div>
	</fieldset>
	</form>

</body>
</html>