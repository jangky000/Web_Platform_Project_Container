<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
	<head>
		<title>메일 페이지</title>
	</head>
	<body>
		<table border = "1" width = "100%" height = "100%">
			<tr height = "15%">
				<td width = "15%" align = "center">
					<a href="mail_write.html"><input type = "button" value = "메일 쓰기"></a>
				</td>
				<td width = "15%" align = "center">
					<a href ="mail_write_me.html"><input type = "button" value = "내게 쓰기"></a>
				</td>
				<td width = "60%" colspan ="2" align="left">
					<input type="text" size="20"><input type = "button" value = "검색">
				</td>
				<td width = "10%" align = "center">
					<a href = "main6.jsp"><img src ="home.png" width = "50" height = "50"></img></a>
				</td>
			</tr>
			<tr height = "10%">
				<td colspan = "2" rowspan = "4" valign ="top">
					<br><br><br>
					<ul>
						<li><a href="mail_page1.html">받은 메일함(2)</a></li>
						<li><a href="mail_page2.html">보낸 메일함(0)</a></li>
						<li><a href="mail_page3.html">내게 쓴 메일함(0)</a></li>
						<li><a href="mail_page4.html">임시 저장함(0)</a></li>
					</ul>
				</td>
				<td	align="center">
					제목
				</td>
				<td align ="center">
					아이디
				</td>
				<td align="center">
					삭제
				</td>
			</tr>
			<tr height = "5%">
				<td align = "center">
					<a href="mail_page_content.html">흥미있는 스크랩 추천좀.</a>
				</td>
				<td align = "center">
					ss1234
				</td>
				<td align = "center">
					<a href="mail_page_deleted.html"><img src ="delete.png" width ="25" height="25"></img></a>
				</td>
			</tr>
			<tr height = "5%">
				<td align ="center">
					<a href="mail_page_content.html">요즘에 뭐 재밌을만한 스크랩 없어?</a>
				</td>
				<td align ="center">
					dd123
				</td>
				<td align = "center">
					<a href=""><img src ="delete.png" width ="25" height="25"></img></a>
				</td>
			</tr>
			<tr height = "80%">
			
			</tr>
		</table>
	</body>
</html>