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
		<center>��ǥ ����</center>
	</h1>


	<center>
			<br> <br>
			<center>
				<b><font size="5" font color="DodgerBlue"> ������� �Ҽ��а���
						���г⵵�� �������ּ���!</b></font>
			</center>

			<br> <br>
			<center>
				<font size="4"> �а��� �����ϼ��� </font> &nbsp;&nbsp; <select name="dept">
					<option value="">�а�</option>
					<option value="��Ƽ�̵����а�">��Ƽ�̵����а�</option>
				</select> <br> <br> <font size="4"> ���г⵵�� �����ϼ��� </font> <select
					name="year">
					<option value="">���г⵵</option>
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
				<b><font size="5" font color="DodgerBlue"> ���帲������ �������
						���������� �Է����ּ���!</b></font>
			</center>


			<br> <br>
			<center>
				<font size="4">����ǥ ������ �Է��ϼ��� </font> &nbsp;&nbsp; <input type="file"
					name='grade_card' accept=".xls"> <br> <br> <font
					size="4"><����ǥ ������ �������� ��></font> <a href="InfoPage.jsp"
					target="_blank"> <font color="red">(Ŭ��)</font></a>
			</center>


			<br> <br> <br> <br>
			<center>
				<b><font size="5" font color="DodgerBlue"> ��ǥ ������ �Է��ϼ���!</b></font><br>
				<b><font size="4" font color="DodgerBlue"> (�ִ� �Ҽ��� ��°
						�ڸ�����)</b>
			</center>



			<br> <br>
			<center>
				<input id='target_score' placeholder='4.0' name='target_score'
					type="text" class='target_score_input'>
			</center>


			<br> <br>

		<center>
			<b> <a href="main3.jsp" class="button button5">&nbsp;&nbsp;��&nbsp;��&nbsp;&nbsp;</a>
				&nbsp;&nbsp;&nbsp;&nbsp; <a href="Target_Input_Score.jsp"
				class="button button5" input type="submit">
					&nbsp;&nbsp;��&nbsp;��&nbsp;&nbsp;</a>
			</b>
		</center>
</body>
</html>
