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
			<br>
			<center>
				<h3>검색 할 학교&nbsp;<input type="text" name="school" value="동국대" size="70" />
				<input type="button" value="검색" /></h3>
			</center>
			<br><input type="button" value="랜덤소개팅" />
			<br><br>
			
			<table border="1" align="center" width="90%" height:45%;">
				<thead>
					<tr>
						<th>No</th>
						<th>제목</th>
						<th>작성날짜</th>
						<th>작성자</th>
						<th>마감일자</th>
						<th>모집인원</th>
						<th>신청인원</th>
					</tr>
				</thead>
				<tr>
					<td align="center">1</td>
					<td align="center"><a href="meeting_search_show.jsp">[동국대] 16학번 귀염둥이들입니다.</a></td>
					<td align="center">조*정</td>
					<td align="center">2019-04-11</td>
					<td align="center">2019-05-12</td>
					<td align="center">4</td>
					<td align="center">5</td>
				</tr>
				<tr>
					<td align="center">2</td>
					<td align="center">[동국대] 군필자와 미팅하실 분 구함.. </td>
					<td align="center">남*혁</td>
					<td align="center">2019-04-12</td>
					<td align="center">2019-05-14</td>
					<td align="center">3</td>
					<td align="center">6</td>
				</tr>
				<tr>
					<td align="center">3</td>
					<td align="center">[동국대] 17학번 동국대 남자입니다~ </td>
					<td align="center">강*원</td>
					<td align="center">2019-04-13</td>
					<td align="center">2019-05-15</td>
					<td align="center">2</td>
					<td align="center">8</td>
				</tr>
				<tr>
					<td align="center">4</td>
					<td align="center">[동국대] 19학번 새내기 3명이랑 미팅하실 분! </td>
					<td align="center">김*연</td>
					<td align="center">2019-04-14</td>
					<td align="center">2019-05-25</td>
					<td align="center">5</td>
					<td align="center">1</td>
				</tr>
			</table>
			<br><br>
			
			<center>
				<input type="button" value="<Prev" />
				[1] [2] ...... [10]
				<input type="button" value="Next>" /> <br><br>
			</center>

			<div align="right"><input type="button" value="새 글 작성"  onclick = "location.href = 'meeting_search_new.jsp' "/></div>
		</fieldset>
	</form>

</body>
</html>