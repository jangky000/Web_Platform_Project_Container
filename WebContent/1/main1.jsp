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
				<th width="25%"><a href="main1.jsp">미팅관리</a></th>
				<th width="25%"><a href="place.jsp">장소추천</a></th>
				<th width="25%"><a href="meetingTip.jsp">미팅의 정석</a></th>
				<th width="25%"><a href="mypage.jsp">마이페이지</a></th>
			</tr>
		</thead>
	</table>
	<br>

	<table border="1" width="21%" height="150px" align="left">
		<tr>
			<td align="center"><a href="main1.jsp">인기 학교 순위</a></td>
		</tr>
		<tr>
			<td align="center"><a href="meeting_search.jsp">미팅 검색</a></td>
		</tr>
		<tr>
			<td align="center"><a href="meeting_my.jsp">나의 미팅</a></td>
		</tr>
	</table>

	<form>
		<fieldset align="right">
			<h1 align="left">인기있는 학교</h1><br>
			
			<table border="1" align="center" width="100%"  height="50%">
				<thead>
					<tr>
						<th>순위</th>
						<th>학교 이름</th>
						<th>미팅 수</th>
					</tr>
				</thead>
				<tr>
					<td align="center">1</td>
					<td align="center">동국대</td>
					<td align="center">50</td>
				</tr>
				<tr>
					<td align="center">2</td>
					<td align="center">국민대</td>
					<td align="center">43</td>
				</tr>
				<tr>
					<td align="center">3</td>
					<td align="center">서강대</td>
					<td align="center">34</td>
				</tr>
				<tr>
					<td align="center">4</td>
					<td align="center">한양대</td>
					<td align="center">25</td>
				</tr>
				<tr>
					<td align="center">5</td>
					<td align="center">고려대</td>
					<td align="center">10</td>
				</tr>
			</table>
			
		</fieldset>
	</form>

</body>
</html>