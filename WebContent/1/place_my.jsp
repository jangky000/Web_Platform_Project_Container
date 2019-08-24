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
		<h3 align="left">내가 쓴 글</h3>
			<br><br>
			<table border="1" align="center" width="100%" height="45%">
				<thead>
					<tr>
						<th width="10%">선택</th>
						<th width="10%">No</th>
						<th width="60%">장소명</th>
						<th width="20%">별점</th>
					</tr>
				</thead>
				<tr>
					<td><center><input type="checkbox" name="myreview1" value="1"></center></td>
					<td><center>1</center></td>
					<td><a href="myplace1.jsp">[충무로역] 하얀집</a></td>
					<td><center>★★★★★</center></td>
					
				</tr>
				<tr>
					<td><center><input type="checkbox" name="myreview1" value="1"></center></td>
					<td><center>2</center></td>
					<td>[혜화역] 꾼노리</a></td>
					<td><center>★★★★☆</center></td>
				</tr>
			</table>
			<br><br>
			<center><input type="button" value="<Prev"> [1] <input type="button" value="Next>"></center>
			<br>
			<div  align="right">
				<input type="button" value="수정" onclick="location.href='myPlaceChange.jsp'">
				<input type="button" value="삭제" >
			</div>
	</fieldset>
	</form>

</body>
</html>