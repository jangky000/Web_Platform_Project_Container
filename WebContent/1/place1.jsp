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
			</tr>		</thead>
	</table>
	<br>

	<table border="1" width="21%" height="150px" align="left">
		<tr>
			<td align="center"><a href="place.jsp">TOP 10 장소</a></td>
		</tr>
		<tr>
			<td align="center"><a href="place_recommend.jsp">장소 추천</a></td>
		</tr>
		<tr>
			<td align="center"><a href="place_my.jsp">나의 장소</a></td>
		</tr>
	</table>

	<form>
	<fieldset align="right">
		<h1 align="left">[충무로역] 하얀집 ★★★★★</h1>
		<fieldset height="550px" align="left">
		<img src="하얀집.jpg" width="500" height="500" align="left">
		[주소] 서울특별시 중구 충무로5가 서애로 12-20<br><br>
		[설명] 하얀집은 동국대 다니는 학생들에게 추천하는 미팅 맛집이다.
 		<br><br>
		</fieldset><br>
		<div  align="right">
			<input type="button" value="목록으로" onclick="location.href='place_recommend.jsp'">
		</div>
	</fieldset>
	</form>

</body>
</html>