<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Input Page</title>

</head>

<body>

	<h1>
		<center>졸업 YES or NO</center>
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
				<b><font size="5" font color="DodgerBlue"> 사용자가 응시한 영어
						종목과 성적을 입력해주세요!</b></font>
			</center>


			<br> <br>
			<center>
				&nbsp; <font size="4"> 영어 종목을 선택하세요 </font> &nbsp; &nbsp; <select
					id='english_select' name="english_test_name">
					<option value="TOEIC">TOEIC</option>
					<option value="TOEFL(PBT)">TOEFL(PBT)</option>
					<option value="TOEFL(CBT)">TOEFL(CBT)</option>
					<option value="TOEFL(IBT)">TOEFL(IBT)</option>
					<option value="TEPS">TEPS</option>
					<option value="IELTS">IELTS</option>
					<option value="TOEIC Speaking">TOEIC Speaking</option>
					<option value="TEPS Speaking">TEPS Speaking</option>
					<option value="OPIc">OPIc</option>
					<option value="none">공인영어성적없음</option>
				</select> <br> <br> &nbsp; &nbsp; <font size="4"> 영어 성적을
					입력하세요: </font> &nbsp; &nbsp; <input id='english_score'
					name='english_score' type="number" class='english_score_input'>
			</center>


			<br> <br>

		<center>
			<b> <a href="main3.jsp" class="button button5">&nbsp;&nbsp;이&nbsp;전&nbsp;&nbsp;</a>
				&nbsp;&nbsp;&nbsp;&nbsp; <a href="Input_Score_Page.jsp"
				class="button button5" input type="submit">
					&nbsp;&nbsp;다&nbsp;음&nbsp;&nbsp;</a>
			</b>
		</center>
</body>
</html>