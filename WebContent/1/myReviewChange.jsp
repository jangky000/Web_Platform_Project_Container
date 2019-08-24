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
		<div align="left">상대 학교
			<select> 
				<optgroup>
					<option selected>동국대</option>
					<option>숭실대</option>
					<option>경희대</option>
				</optgroup>
			</select><br><br>
			제목 <input type="text" name="title" size="100%" value="연결고리통해 내 반쪽 찾다."><br><br>
			<textarea name ="review" rows="20" cols="150" >
안녕하세요.
얼마전에 미팅한 16학번 귀염둥이 중 하나입니다.
연결고리에서 미팅을 해봤는데 그미팅에서 저의 이상형이 나왔어요~
추천해주신 하얀집도 정말 좋은 곳이더라구요!
미팅 게임은 꼭 귓속말 게임을 하세요 여러분~~
정말 감사합니다.
			</textarea>
		</div>
		<br><br>
		<div  align="right">
			<input type="button" value="목록으로" onclick="location.href='myReview.jsp'">
			<input type="button" value="수정" onclick="location.href='myReview.jsp'">
		</div>
	</fieldset>
	</form>

</body>
</html>