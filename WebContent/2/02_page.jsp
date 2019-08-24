<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

	<title> page2 </title>
</head>
<body>

<table>
	<thead>
		<tr>
			<th scope="col" width="20%" height="10%">
				<a href="main2.jsp" target="_self">
					<img src="0909.png" alt="LOGO" width="200" height="130">
				 </a>
			</th>
			<th scope="col" width="80%" height="10%"></th>
		</tr>
	<tr>
		<td scope="col" width="20%" height="70%"></td>
		<td scope="col" align="center" valign="middle" width="80%" height="70%">	
			<h2><img src="마우스 이미지.png" align="center" alt="사진" width="80" height="80" title="마우스">&nbsp;&nbsp;마우스</h2>
			<br/>
			<table border="1" height="300" align="center" valign="middle">
				<thead>
				<tr>
					<th scope="col" width="50">번호</th>
					<th scope="col" width="150">이미지</th>
					<th scope="col" width="600">상세정보</th>
				</tr>
				</thead>
				<tbody align="center" valign="middle">
				<tr>
					<td align="center" valign="middle">1</td>
					<td align="center" valign="middle"><a href=" 05_page.jsp" target="_self"><img src="게이밍마우스1.png" alt="이미지" width="70" height="70"></a></td>
					<td align="left">
						<p>&nbsp;-&nbsp;제품명&nbsp;:&nbsp;맥스틸&nbsp;게이밍&nbsp;마우스&nbsp;TRON&nbsp;G10,&nbsp;매트블랙</p>
						<p>&nbsp;-&nbsp;진행자&nbsp;:&nbsp;최정선</p>
						<p>&nbsp;-&nbsp;진행기간&nbsp;:&nbsp;04/05~04/10</p>
						<p>&nbsp;-&nbsp;진행수량&nbsp;:&nbsp;8개&nbsp;이상</p>
					</td>
				</tr>
				<tr>
					<td align="center" valign="middle">2</td>
					<td align="center" valign="middle"><a href=" 05_page.jsp" target="_self"><img src="게이밍마우스2.png" alt="이미지" width="70" height="70"></a></td>
					<td align="left">
						<p>&nbsp;-&nbsp;제품명&nbsp;:&nbsp;지클릭커&nbsp;게이밍&nbsp;마우스&nbsp;GM-M250,&nbsp;G10,&nbsp;블랙</p>
						<p>&nbsp;-&nbsp;진행자&nbsp;:&nbsp;김소희</p>
						<p>&nbsp;-&nbsp;진행기간&nbsp;:&nbsp;04/01~04/15</p>
						<p>&nbsp;-&nbsp;진행수량&nbsp;:&nbsp;10개&nbsp;이상</p>
					</td>
				</tr>
				<tr>
					<td align="center" valign="middle">3</td>
					<td align="center" valign="middle"><a href=" 05_page.jsp" target="_self"><img src="게이밍마우스3.png" alt="이미지" width="70" height="70"></a></td>
					<td align="left">
						<p>&nbsp;-&nbsp;제품명&nbsp;:&nbsp;맥스틸&nbsp;RGB&nbsp;일루미네이션&nbsp;게이밍&nbsp;유선&nbsp;마우스,&nbsp;TRON&nbsp;G60,&nbsp;혼합색상</p>
						<p>&nbsp;-&nbsp;진행자&nbsp;:&nbsp;최은지</p>
						<p>&nbsp;-&nbsp;진행기간&nbsp;:&nbsp;03/27~04/15</p>
						<p>&nbsp;-&nbsp;진행수량&nbsp;:&nbsp;6개&nbsp;이상</p>
					</td>
				</tr>
				</tbody>
			</table>
			<br/>
		</td>
	</tr>	
	<tr>
		<td scope="col" width="20%" height="20%"></td>
		<td scope="col" align="left" valign="top" width="80%" height="20%">
			<!--페이지네이션-->
			<!--게시판 하단에 위치한 일련의 숫자버튼-->
			<hr/>
			<div>
				<ul>
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
				</ul>
			</div>
			<hr/>
			<div align="center" valign="middle">
				<select height="25" name='select'>
					<option value='' selected>-- 선택 --</option>
					<option value='product'>제품명</option>
					<option value='host'>진행자</option>
				</select>
				<input type="text" size="25" maxlength="255" placeholder="검색어 입력">
				<input type="submit" value="search">
			</div>
		</td>
	</tr>
</table>

</body>
</html>