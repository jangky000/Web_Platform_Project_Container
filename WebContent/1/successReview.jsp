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
		<h3 align="center">검색 할 학교 <input type="text" name="schoolname" size = "100" value="동국대"> <input type="submit" value="조회"></h3>
			<br><br>
			<table border="1" align="center" width="100%" height="45%">
				<thead>
					<tr>
						<th width="10%">No</th>
						<th width="54%">제목</th>
						<th width="20%">작성 날짜</th>
						<th width="16%">작성자</th>
					</tr>
				</thead>
				<tr>
					<td><center>1</center></td>
					<td><a href="review1.jsp">[동국대] 연결고리를 통해 내 반쪽 찾다.</a></td>
					<td><center>2019-04-15</center></td>
					<td><center>조*정</center></td>
				</tr>
				<tr >
					<td><center>2</center></td>
					<td>[동국대] 꿀잼, 핵잼 미팅이었다!</td>
					<td><center>2019-04-11</center></td>
					<td><center>남*혁</center></td>
				</tr>
				<tr>
					<td><center>3</center></td>
					<td>[동국대] 미팅 성공 했어요~~</td>
					<td><center>2019-04-13</center></td>
					<td><center>강*원</center></td>
				</tr>
				<tr>
					<td><center>4</center></td>
					<td>[동국대] 애프터 받았습니다ㅎㅎ</td>
					<td><center>2019-04-14</center></td>
					<td><center>김*연</center></td>
				</tr>
			</table>
			<br><br>
			<center><input type="button" value="<Prev"> [1] [2] .....[10] <input type="button" value="Next>"></center>
			<br>
			<div  align="right"><input type="button" value="후기 작성" onclick="location.href='reviewForm.jsp'"></div>
	</fieldset>
	</form>

</body>
</html>