<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Main Page</title>

</head>

<body>
	<h1>
		<center>졸업 YES or NO</center>
	</h1>

	<center>
		<fieldset>
			<br>
				<font size="4" font color="DodgerBlue"> &nbsp;&nbsp;<b>공지사항</b></font>


			<hr width="100%">
			이 페이지는 동국대학교 학생들을 위한 졸업검증페이지입니다. 현재
				졸업 검증 기능은 멀티미디어공학과 학생만 이용이 가능합니다. 그 외의 기능인 목표 학점 도달하기, 학점계산기는 모두
				이용가능합니다.

			<br>
				<font size="4" font color="DodgerBlue"> &nbsp;&nbsp;<b>서비스
						이용 예시</b></font>

			<hr width="100%">
				<b>-졸업검증페이지-</b>
			졸업검증 페이지는 사용자의 입학년도를 입력하고, 유드림스에서
				현재까지 수강한 과목들의 성적과 정보를 입력해야 합니다. 또한 사용자가 응시한 어학시험과 성적을 입력하면, 졸업검증
				프로그램이 해당 학년에 맞는 졸업조건을 통해서 졸업이 가능한지 불가능한지 알려줍니다. 졸업이 불가능할 경우, 추가적으로
				들어야하는 과목을 알려줍니다.


				<b>-목표학점도달하기-</b>
사용자가 졸업할 때의 목표학점을 입력하고, 졸업검증페이지에서
				추가적으로 들어야 할 강의를 입력하고, 예상학점을 입력합니다. 그 후 사용자의 졸업예정 학점이 계산되어 나오고, 사용자는
				자신 학점을 수정하면서 목표학점을 달성하기 위해 임의의 강의에 어떤 학점을 받아야 하는지 확인할 수 있습니다.



				<b>-학점계산기-</b>

이번 학기에 듣는 강의와 성적을 입력하면, 계산된 성적을
				확인해주는 학점 계산기입니다.
			<br> <br> <a href="InputPage.jsp" class="button button5">졸업
				검증 시작</a> &nbsp;&nbsp; <a href="InputPage_Target.jsp"
				class="button button5">목표 학점 도달하기</a> &nbsp;&nbsp; <a
				href="Score_Cal.jsp" class="button button5">학점 계산기</a>

		</fieldset>
	</center>
</body>
</html>