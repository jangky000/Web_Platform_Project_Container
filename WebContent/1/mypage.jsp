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
	</table>	<br>

	<table border="1" align="left" width="21%" height="150px">
		<tr>
			<td align="center"><a href ="mypage.jsp">마이 페이지</a></td>
		</tr>
	</table>

	<form>
		<fieldset align="right">
			<h3 align="left">현재 진행중인 나의 미팅</h3>
			<fieldset align="left">
				1. [동국대] 19학번 새내기 입니다. 누나들과 미팅하고 싶어요
			</fieldset>
			<h3 align="left">마감된 나의 미팅</h3>
			<fieldset align="left">
				1. [동국대] 16학번 귀염둥이들입니다.<br>
				2. [경희대] 16학번 남성분들과 미팅하고 싶습니다.
			</fieldset>
		</fieldset>
	</form>

</body>
</html>