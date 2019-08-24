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
			<br><div align="left">
				제목&nbsp;<input type="text" name="title" size="100" value="  [동국대] 16학번 귀염둥이들입니다."  />
			<br><br>
			
			<textarea name="text" cols="150" rows="20">
안녕하세요:)
저희와 재미있는 미팅하실 분을 구하고 있습니다.
귀엽둥이들과 노실 멋지고 유쾌한 오빠들 기다릴게요~
많은 신청 부탁드립니다!
			</textarea><br><br></div>

			<div align="right">
				<input type="button" value="목록으로"  onclick = "location.href = 'meeting_my.jsp' "/>
			</div>
			<h1 align="left">내가 받은 신청</h1><br>

			<table border="1" align="center" width="100%" height="25%">
				<thead>
					<tr>
						<th>No</th>
						<th>이름</th>
						<th>나이</th>
						<th></th>
					</tr>
				</thead>
				<tr>
					<td align="center">1</td>
					<td align="center">남*혁</td>
					<td align="center">25</td>
					<td align="center"><input type="button"  value="수락">&nbsp;<input type="button"  value="거절"></td>
				</tr>
				<tr>
					<td align="center">2</td>
					<td align="center">강*원</td>
					<td align="center">23</td>
					<td align="center"><input type="button"  value="수락">&nbsp;<input type="button" value="거절"></td>
				</tr>
			</table>
		</fieldset>
	</form>

</body>
</html>