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
				제목&nbsp;<input type="text" name="title" size="100" value=" [동국대] 16학번 귀염둥이들입니다." /></div>
			<br><br>
			
			<fieldset align="left">
				<br>&nbsp;모집 성별 :&nbsp;남자<br>
				<br>&nbsp;모집 인원 :&nbsp;3명<br>
				<br>&nbsp;모집 나이 :&nbsp;24 이상 27 이하<br>
				<br>&nbsp;마감일자 :&nbsp;2019-04-12<br><br>
			</fieldset><br>
			<div align="left">
			<textarea name="text" cols="150" rows="20">
안녕하세요:)
저희와 재미있는 미팅하실 분을 구하고 있습니다.
귀엽둥이들과 노실 멋지고 유쾌한 오빠들 기다릴게요~
많은 신청 부탁드립니다!
			</textarea></div><br><br>

			<div align="right">
				<input type="button" value="목록으로"  onclick = "location.href = 'meeting_search.jsp' "/>&nbsp;
				<input type="button" value="신청"  onclick = "location.href = 'meeting_search.jsp' "/>
			</div>
		</fieldset>
	</form>

</body>
</html>