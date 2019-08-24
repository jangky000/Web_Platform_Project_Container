<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Target Input Score</title>

</head>

<body>

	<h1>
		<center>졸업 YES or NO</center>
	</h1>


	<center>
			<br>
			<br>
			<center>
				<b><font size="5" font color="DodgerBlue"> 학점 계산기</b></font>
			</center>
			<br>
			<br>
			<br>
			<center>
				<b><font size="4" font color="black"> 추가하고 싶은 과목 조회</b></font>
			</center>
			<br>
			<center>
				<input id='search_class' placeholder="프로그래밍기초" name='search_class'
					type="text" class='search_class_input'> <input
					type="button" value="조회" onClick="window.open('프로그래밍시간표.htm')">
			</center>
			<br>
			<br> <input type="button" value="추가하기" style="float: right;">
			<br>
			<hr id="table_1">
			<table>
				<tr>
					<th>과목</th>
					<th>점수</th>
					<th>학점</th>
					<th>전공</th>
				</tr>
				<tr>
					<td><input type="text" name="text" size="20"></td>
					<td><select name="year">
							<option value="">예상 성적</option>
							<option value="A+">A+</option>
							<option value="A0">A0</option>
							<option value="B+">B+</option>
							<option value="B0">B0</option>
							<option value="C+">C+</option>
							<option value="C0">C0</option>
							<option value="D+">D+</option>
							<option value="D0">D0</option>
							<option value="F">F</option>
					</select></td>
					<td><input type="number" name="text" size="5"></td>
					<td><input type="checkbox" name="text" size="20"></td>
				</tr>
				<tr>
					<td><input type="text" name="text" size="20"></td>
					<td><select name="year">
							<option value="">예상 성적</option>
							<option value="A+">A+</option>
							<option value="A0">A0</option>
							<option value="B+">B+</option>
							<option value="B0">B0</option>
							<option value="C+">C+</option>
							<option value="C0">C0</option>
							<option value="D+">D+</option>
							<option value="D0">D0</option>
							<option value="F">F</option>
					</select></td>
					<td><input type="number" name="text" size="5"></td>
					<td><input type="checkbox" name="text" size="20"></td>
				</tr>
				<tr>
					<td><input type="text" name="text" size="20"></td>
					<td><select name="year">
							<option value="">예상 성적</option>
							<option value="A+">A+</option>
							<option value="A0">A0</option>
							<option value="B+">B+</option>
							<option value="B0">B0</option>
							<option value="C+">C+</option>
							<option value="C0">C0</option>
							<option value="D+">D+</option>
							<option value="D0">D0</option>
							<option value="F">F</option>
					</select></td>
					<td><input type="number" name="text" size="5"></td>
					<td><input type="checkbox" name="text" size="20"></td>
				</tr>
				<tr>
					<td><input type="text" name="text" size="20"></td>
					<td><select name="year">
							<option value="">예상 성적</option>
							<option value="A+">A+</option>
							<option value="A0">A0</option>
							<option value="B+">B+</option>
							<option value="B0">B0</option>
							<option value="C+">C+</option>
							<option value="C0">C0</option>
							<option value="D+">D+</option>
							<option value="D0">D0</option>
							<option value="F">F</option>
					</select></td>
					<td><input type="number" name="text" size="5"></td>
					<td><input type="checkbox" name="text" size="20"></td>
				</tr>
				<tr>
					<td><input type="text" name="text" size="20"></td>
					<td><select name="year">
							<option value="">예상 성적</option>
							<option value="A+">A+</option>
							<option value="A0">A0</option>
							<option value="B+">B+</option>
							<option value="B0">B0</option>
							<option value="C+">C+</option>
							<option value="C0">C0</option>
							<option value="D+">D+</option>
							<option value="D0">D0</option>
							<option value="F">F</option>
					</select></td>
					<td><input type="number" name="text" size="5"></td>
					<td><input type="checkbox" name="text" size="20"></td>
				</tr>
				<tr>
					<td><input type="text" name="text" size="20"></td>
					<td><select name="year">
							<option value="">예상 성적</option>
							<option value="A+">A+</option>
							<option value="A0">A0</option>
							<option value="B+">B+</option>
							<option value="B0">B0</option>
							<option value="C+">C+</option>
							<option value="C0">C0</option>
							<option value="D+">D+</option>
							<option value="D0">D0</option>
							<option value="F">F</option>
					</select></td>
					<td><input type="number" name="text" size="5"></td>
					<td><input type="checkbox" name="text" size="20"></td>
				</tr>
			</table>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
	</center>

	<center>
		<b> <a href="main3.jsp" class="button button5">&nbsp;&nbsp;이&nbsp;전&nbsp;&nbsp;</a>
			&nbsp;&nbsp;&nbsp;&nbsp; <a href="Score_Result.jsp"
			class="button button5" input type="submit">
				&nbsp;&nbsp;계&nbsp;산&nbsp;&nbsp;</a>
		</b>
	</center>
</body>
</html>