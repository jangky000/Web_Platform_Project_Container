<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Input Score Page</title>
</head>

<body>

	<h1>
		<center>졸업 YES or NO</center>
	</h1>


	<center>
			<br>
			<br>
			<center>
				<b><font size="5" font color="DodgerBlue"> 아직 수료하지 않은 수업을
						포함하고 싶은 경우</b></font>
			</center>

			<br>
			<br>
			<br>
			<br>
			<center>
				<b><font size="4" font color="black""> 추가하고 싶은 성적을
						조회해보세요!</b></font>
			</center>


			<br>
			<br>
			<center>
				<input id='search_class' placeholder="프로그래밍기초" name='search_class'
					type="text" class='search_class_input'> <input
					type="button" value="조회" onClick="window.open('프로그래밍시간표.htm')">
			</center>
			<br>
			<br>

			<hr color=gray size="2px">
			<br>
			<br>&nbsp;&nbsp;&nbsp;&nbsp;
			<center>
				<b><font size="4" font color="black"> 추가하고 싶은 성적의 학수강좌번호를
						입력하세요!</b></font>
			</center>
			<br>
			<br> <font size="4"> 학수 강좌 번호 입력: </font> <input id='class_1'
				name='class_1' type='text' class='class_1'> <select
				name="year">
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
			</select> <input type='submit' value='입력'> <br>
			<br>
			<br>
			<br>
	</center>

	<center>
		<b> <a href="InputPage.jsp" class="button button5">&nbsp;&nbsp;이&nbsp;전&nbsp;&nbsp;</a>
			&nbsp;&nbsp;&nbsp;&nbsp; <a href="GraduationSuccessPage.jsp"
			class="button button5" input type="submit">
				&nbsp;&nbsp;졸업&nbsp;여부&nbsp;확인!&nbsp;&nbsp;</a>
		</b>
	</center>
</body>
</html>