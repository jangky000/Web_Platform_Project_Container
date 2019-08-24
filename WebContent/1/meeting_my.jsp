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
			<h1 align="left">내가 쓴 글</h1><br>
			
			<table border="1", align="center", width="90%", height="25%">
				<thead>
					<tr>
						<th>선택</th>
						<th>No</th>
						<th>제목</th>
						<th>작성날짜</th>
					</tr>
				</thead>
				<tr>
					<td align="center"><input type="checkbox" name="select1" value="select1"></td>
					<td align="center">1</td>
					<td align="center"><a href="meeting_my_show.jsp">[동국대] 16학번 귀염둥이들입니다.</a></td>
					<td align="center">2019-04-15</td>
				</tr>
				<tr>
					<td align="center"><input type="checkbox" name="select2" value="select2"></td>
					<td align="center">2</td>
					<td align="center">[경희대] 16학번 남성분들과 미팅하고 싶습니다.</td>
					<td align="center">2019-04-11</td>
				</tr>
			</table>
			<br><br>
			
			<center>
				<input type="button" value="<Prev" />
				[1]
				<input type="button" value="Next>" /> <br><br>
			</center>

			<div align="right">
				<input type="button" value="수정"  onclick = "location.href = 'meeting_my_edit.jsp' "/>&nbsp;
				<input type="button" value="삭제">
			</div>
		</fieldset>
	</form>

</body>
</html>