<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Input Page Target</title>

</head>

<body>

	<h1>
		<center>목표 학점</center>
	</h1>


	<center>
			<br> <br>
			<center>
				<b><font size="5" font color="DodgerBlue"> 사용자의 소속학과와
						입학년도를 선택해주세요!</b></font>
			</center>

			<br> <br>
			<center>
				<font size="4"> 학과를 선택하세요 </font> &nbsp;&nbsp; <select name="dept">
					<option value="">학과</option>
					<option value="멀티미디어공학과">멀티미디어공학과</option>
				</select> <br> <br> <font size="4"> 입학년도를 선택하세요 </font> <select
					name="year">
					<option value="">입학년도</option>
					<option value="2013">2013</option>
					<option value="2014">2014</option>
					<option value="2015">2015</option>
					<option value="2016">2016</option>
					<option value="2017">2017</option>
					<option value="2018">2018</option>
					<option value="2019">2019</option>
				</select>
			</center>



			<br> <br> <br> <br>
			<center>
				<b><font size="5" font color="DodgerBlue"> 유드림스에서 사용자의
						성적파일을 입력해주세요!</b></font>
			</center>


			<br> <br>
			<center>
				<font size="4">성적표 파일을 입력하세요 </font> &nbsp;&nbsp; <input type="file"
					name='grade_card' accept=".xls"> <br> <br> <font
					size="4"><성적표 파일을 가져오는 법></font> <a href="InfoPage.jsp"
					target="_blank"> <font color="red">(클릭)</font></a>
			</center>


			<br> <br> <br> <br>
			<center>
				<b><font size="5" font color="DodgerBlue"> 목표 학점을 입력하세요!</b></font><br>
				<b><font size="4" font color="DodgerBlue"> (최대 소수점 둘째
						자리까지)</b>
			</center>



			<br> <br>
			<center>
				<input id='target_score' placeholder='4.0' name='target_score'
					type="text" class='target_score_input'>
			</center>


			<br> <br>

		<center>
			<b> <a href="main3.jsp" class="button button5">&nbsp;&nbsp;이&nbsp;전&nbsp;&nbsp;</a>
				&nbsp;&nbsp;&nbsp;&nbsp; <a href="Target_Input_Score.jsp"
				class="button button5" input type="submit">
					&nbsp;&nbsp;다&nbsp;음&nbsp;&nbsp;</a>
			</b>
		</center>
</body>
</html>
