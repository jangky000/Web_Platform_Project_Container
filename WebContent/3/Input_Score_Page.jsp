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
		<center>���� YES or NO</center>
	</h1>


	<center>
			<br>
			<br>
			<center>
				<b><font size="5" font color="DodgerBlue"> ���� �������� ���� ������
						�����ϰ� ���� ���</b></font>
			</center>

			<br>
			<br>
			<br>
			<br>
			<center>
				<b><font size="4" font color="black""> �߰��ϰ� ���� ������
						��ȸ�غ�����!</b></font>
			</center>


			<br>
			<br>
			<center>
				<input id='search_class' placeholder="���α׷��ֱ���" name='search_class'
					type="text" class='search_class_input'> <input
					type="button" value="��ȸ" onClick="window.open('���α׷��ֽð�ǥ.htm')">
			</center>
			<br>
			<br>

			<hr color=gray size="2px">
			<br>
			<br>&nbsp;&nbsp;&nbsp;&nbsp;
			<center>
				<b><font size="4" font color="black"> �߰��ϰ� ���� ������ �м����¹�ȣ��
						�Է��ϼ���!</b></font>
			</center>
			<br>
			<br> <font size="4"> �м� ���� ��ȣ �Է�: </font> <input id='class_1'
				name='class_1' type='text' class='class_1'> <select
				name="year">
				<option value="">���� ����</option>
				<option value="A+">A+</option>
				<option value="A0">A0</option>
				<option value="B+">B+</option>
				<option value="B0">B0</option>
				<option value="C+">C+</option>
				<option value="C0">C0</option>
				<option value="D+">D+</option>
				<option value="D0">D0</option>
				<option value="F">F</option>
			</select> <input type='submit' value='�Է�'> <br>
			<br>
			<br>
			<br>
	</center>

	<center>
		<b> <a href="InputPage.jsp" class="button button5">&nbsp;&nbsp;��&nbsp;��&nbsp;&nbsp;</a>
			&nbsp;&nbsp;&nbsp;&nbsp; <a href="GraduationSuccessPage.jsp"
			class="button button5" input type="submit">
				&nbsp;&nbsp;����&nbsp;����&nbsp;Ȯ��!&nbsp;&nbsp;</a>
		</b>
	</center>
</body>
</html>