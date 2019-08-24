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
			<br>
			<center>
				<h3>검색 할 학교&nbsp;<input type="text" name="school" value="동국대" size="70" />
				<input type="button" value="조회" /><h3>
			</center>
			<br><br>
			
			<table border="1" align="center" width="90%" height="45%">
				<thead>
					<tr>
						<th>No</th>
						<th>장소명</th>
						<th>별점</th>
					</tr>
				</thead>
				<tr>
					<td align="center">1</td>
					<td align="center"><a href="place_recommend_show.jsp">[충무로역] 하얀집</a></td>
					<td align="center">★★★★★</td>
				</tr>
				<tr>
					<td align="center">2</td>
					<td align="center">[충무로역] 남산</td>
					<td align="center">★★★★☆</td>
				</tr>
				<tr>
					<td align="center">3</td>
					<td align="center">[동대문역사문화공원역] 동대문 디자인 플라자</td>
					<td align="center">★★★☆☆</td>
				</tr>
				<tr>
					<td align="center">4</td>
					<td align="center">[혜화역] 낙산공원</td>
					<td align="center">★★☆☆☆</td>
				</tr>
			</table>
			<br><br>
			
			<center>
				<input type="button" value="<Prev" />
				[1] [2] ...... [10]
				<input type="button" value="Next>" /> <br><br>
			</center>

			<div align="right"><input type="button" value="새 글 작성"  onclick = "location.href = 'place_recommend_new.jsp' "/></div>
		</fieldset>
	</form>

</body>
</html>