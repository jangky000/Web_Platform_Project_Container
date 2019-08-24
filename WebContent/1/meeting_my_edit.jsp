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
				<th width="25%"><a href="main1.jsp">미팅관리</a></th>
				<th width="25%"><a href="place.jsp">장소추천</a></th>
				<th width="25%"><a href="meetingTip.jsp">미팅의 정석</a></th>
				<th width="25%"><a href="mypage.jsp">마이페이지</a></th>
			</tr>
		</thead>
	</table>
	<br>

	<table border="1" width="21%" height="150px" align="left">
		<tr>
			<td align="center"><a href="main1.jsp">인기 학교 순위</a></td>
		</tr>
		<tr>
			<td align="center"><a href="meeting_search.jsp">미팅 검색</a></td>
		</tr>
		<tr>
			<td align="center"><a href="meeting_my.jsp">나의 미팅</a></td>
		</tr>
	</table>

	<form>
		<fieldset align="right">
			<br>
				<div align="left">제목&nbsp;<input type="text" name="title" size="100" value=" 16학번 귀염둥이들입니다."/></div>
			<br>
			<fieldset align="left">
				<br>&nbsp;모집 성별 :&nbsp;
				<input type="radio" name="gender" value="man" checked="checked">남성&nbsp;
				<input type="radio" name="gender" value="woman">여성&nbsp;
				<input type="radio" name="gender" value="etc">기타
				<br><br>
				
				&nbsp;모집 인원 :&nbsp;
				<select name="people">
					<option>1</option>
					<option>2</option>
					<option selected>3</option>
					<option>4</option>
					<option>5</option>
				</select>
				<br><br>

				&nbsp;모집 나이 :&nbsp;
				<select name="age">
					<option>20</option>
					<option>21</option>
					<option>22</option>
					<option>23</option>
					<option selected>24</option>
					<option>25</option>
					<option>26</option>
					<option>27</option>
					<option>28</option>
					<option>29</option>
					<option>30</option>
				</select> &nbsp;이상&nbsp;
				<select name="age">
					<option>20</option>
					<option>21</option>
					<option>22</option>
					<option>23</option>
					<option>24</option>
					<option>25</option>
					<option>26</option>
					<option selected>27</option>
					<option>28</option>
					<option>29</option>
					<option>30</option>
				</select> &nbsp;이하
				<br><br>

				&nbsp;마감일자 :&nbsp;<input type="date" name="date" value="2019-04-12"><br><br>

				&nbsp;모집학교 :&nbsp;
				<select name="school">
					<option>가톨릭대학교</option>
					<option>건국대학교</option>
					<option>경기대학교</option>
					<option>경희대학교</option>
					<option>고려대학교</option>
					<option>광운대학교</option>
					<option>국민대학교</option>
					<option>덕성여자대학교</option>
					<option selected>동국대학교</option>
					<option>동덕여자대학교</option>
					<option>명지대학교</option>
					<option>상명대학교</option>
					<option>서강대학교</option>
					<option>서경대학교</option>
					<option>서울대학교</option>
					<option>서울과학기술대학교</option>
					<option>서울교육대학교</option>
					<option>서울여자대학교</option>
					<option>성균관대학교</option>
					<option>성신여자대학교</option>
					<option>세종대학교</option>
					<option>숙명여자대학교</option>
					<option>숭실대학교</option>
					<option>연세대학교</option>
					<option>육군사관학교</option>
					<option>이화여자대학교</option>
					<option>중앙대학교</option>
					<option>한국외국어대학교</option>
					<option>한국체육대학교</option>
					<option>한성대학교</option>
					<option>한양대학교</option>
					<option>홍익대학교</option>
				</select><br><br>
			</fieldset><br>
			<div align="left">
			<textarea name="text" rows="20" cols="160">
안녕하세요:)
저희와 재미있는 미팅하실 분을 구하고 있습니다.
귀엽둥이들과 노실 멋지고 유쾌한 오빠들 기다릴게요~
많은 신청 부탁드립니다!
			</textarea><br><br>
			</div>
			<div align="right">
				<input type="button" value="목록으로"  onclick = "location.href = 'meeting_my.jsp' "/>&nbsp;
				<input type="button" value="수정"  onclick = "location.href = 'meeting_my.jsp' "/>
			</div>
		</fieldset>
	</form>
</body>
</html>