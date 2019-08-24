<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>

	<title> page3 </title>
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
	<!--회원정보-->
		<td width="20%" height="90%"></td>
        <td align="left" valign="top" width="80%" height="90%">
            <div>
                <table width="100%">
                    <thead>
                        <tr>
                            <th scope="col" width="30%" height="30%"></th>
                            <th scope="col" width="70%" height="30%" align="left"><h2>&nbsp;<&nbsp;회원정보&nbsp;></&nbsp;회원정보&nbsp;></h2></th>
                        </tr>
                    </thead>

                    <tbody align="center" valign="middle">
                        <tr>
                            <td height="70%" align="center" valign="top"><br /><br /><img src="사람.png" alt="이미지" width="80" height="80"></td>
                            <td height="70%" align="left" valign="top">
                                <p>&nbsp;아이디&nbsp;:&nbsp;dongguk0909</p>
                                <p>&nbsp;학교&nbsp;:&nbsp;동국대학교</p>
                                <p>&nbsp;학과&nbsp;:&nbsp;멀티미디어공학과</p>
                                <p>&nbsp;관심상품&nbsp;:&nbsp;<input type="text" size="25" maxlength="255" placeholder="관심상품 입력"><input type="submit" value="enter"></p>
                                <p><pre>	     1.게이밍&nbsp;마우스</pre></p>
                                <p><pre>	     2.공학용&nbsp;계산기</pre></p>
                                <p>&nbsp;시간표&nbsp;:&nbsp;<a href="#timetable"><input type="submit" value="enter"></a></p>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div>
                <table width="100%">
                    <thead>
                        <tr>
							<hr />
                            <th colspan="11" align="left" valign="middle"><h2>&nbsp;<&nbsp;나의&nbsp;공구&nbsp;현황&nbsp;></h2><hr /></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr height="80" align="center">
                            <td width="160">참여중인&nbsp;공구</td>
                            <td width="80"><a href=" 05-1_page.jsp" target="_self"><img border="1" src="게이밍마우스.png" alt="이미지" width="40" height="40"></a></td>
                            <td width="80"><a href=" 05-1_page.jsp" target="_self"><img border="1" src="우산.JPG" alt="이미지" width="40" height="40"></a><a href="=#"><img src="수정.JPG" alt="이미지" width="10" height="10"></a></td>
                            <td width="80"><a href=" 05-1_page.jsp" target="_self"><img border="1" src="에어팟.JPG" alt="이미지" width="40" height="40"></a><a href="=#"><img src="삭제.JPG" alt="이미지" width="10" height="10"></a></td>
                            <td width="80"></td>
                            <td width="80"></td>
                            <td width="80"></td>
                            <td width="80"></td>
                            <td width="80"></td>
                            <td width="80"></td>
                            <td width="80"></td>
						</tr>
                        <tr height="80" align="center">
                            <td>진행중인&nbsp;공구</td>
                            <td width="80"></td>
                            <td width="80"></td>
                            <td width="80"></td>
                            <td width="80"></td>
                            <td width="80"></td>
                            <td width="80"></td>
                            <td width="80"></td>
                            <td width="80"></td>
                            <td width="80"></td>
                            <td width="80"></td>
                        </tr>
                        <tr height="80" align="center">
                            <td>참여했던&nbsp;공구</td>
                            <td width="80"></td>
                            <td width="80"></td>
                            <td width="80"></td>
                            <td width="80"></td>
                            <td width="80"></td>
                            <td width="80"></td>
                            <td width="80"></td>
                            <td width="80"></td>
                            <td width="80"></td>
                            <td width="80"></td>
                        </tr>
                        <tr height="80" align="center">
                            <td>진행했던&nbsp;공구</td>
                            <td width="80">
                                <a href=" 03-2_page.jsp" target="_self"><img border="1" src="이니스프리.JPG" alt="이미지" width="40" height="40"></a>
                                <a href="=#"><img src="삭제.png" alt="이미지" width="10" height="10"></a>
                            </td>
                            <td width="80"></td>
                            <td width="80"></td>
                            <td width="80"></td>
                            <td width="80"></td>
                            <td width="80"></td>
                            <td width="80"></td>
                            <td width="80"></td>
                            <td width="80"></td>
                            <td width="80"></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <br />
            <br />
            <br />
            <br />
            <div><hr /><a name="timetable"></a><h2>&nbsp;<&nbsp;나의&nbsp;시간표&nbsp;></h2></div>
            <div>
                <div>
                    <form method="post">
                        요일 &nbsp;
                        <select>
                            <option value='' selected>-- 요일 --</option>
                            <option value='Mon'>월</option>
                            <option value='Tue'>화</option>
                            <option value='Wed'>수</option>
                            <option value='Thu'>목</option>
                            <option value='Fri'>금</option>
                        </select>
                        &nbsp;&nbsp;
                        시간 &nbsp;
                        <select>
                            <option value='' selected>-- 시작 --</option>
                            <option value='1'>9:00-9:30</option>
                            <option value='2'>9:30-10:00</option>
                            <option value='3'>10:00-10:30</option>
                            <option value='4'>10:30-11:00</option>
                            <option value='5'>11:00-11:30</option>
                            <option value='6'>11:30-12:00</option>
                            <option value='7'>12:00-12:30</option>
                            <option value='8'>12:30-13:00</option>
                            <option value='9'>13:00-13:30</option>
                            <option value='10'>13:30-14:00</option>
                            <option value='11'>14:00-14:30</option>
                            <option value='12'>14:30-15:00</option>
                            <option value='13'>15:00-15:30</option>
                            <option value='14'>15:30-16:00</option>
                            <option value='15'>16:00-16:30</option>
                            <option value='16'>16:30-17:00</option>
                            <option value='17'>17:00-17:30</option>
                            <option value='18'>17:30-18:00</option>
                            <option value='19'>18:00-18:30</option>
                            <option value='20'>18:30-19:00</option>
                            <option value='21'>19:00-19:30</option>
                            <option value='22'>19:30-20:00</option>
                        </select>
                        &nbsp;~&nbsp;
                        <select>
                            <option value='' selected>-- 끝 --</option>
                            <option value='1'>9:00-9:30</option>
                            <option value='2'>9:30-10:00</option>
                            <option value='3'>10:00-10:30</option>
                            <option value='4'>10:30-11:00</option>
                            <option value='5'>11:00-11:30</option>
                            <option value='6'>11:30-12:00</option>
                            <option value='7'>12:00-12:30</option>
                            <option value='8'>12:30-13:00</option>
                            <option value='9'>13:00-13:30</option>
                            <option value='10'>13:30-14:00</option>
                            <option value='11'>14:00-14:30</option>
                            <option value='12'>14:30-15:00</option>
                            <option value='13'>15:00-15:30</option>
                            <option value='14'>15:30-16:00</option>
                            <option value='15'>16:00-16:30</option>
                            <option value='16'>16:30-17:00</option>
                            <option value='17'>17:00-17:30</option>
                            <option value='18'>17:30-18:00</option>
                            <option value='19'>18:00-18:30</option>
                            <option value='20'>18:30-19:00</option>
                            <option value='21'>19:00-19:30</option>
                            <option value='22'>19:30-20:00</option>
                        </select>
                        &nbsp;&nbsp;
                        과목 &nbsp;
                        <input type="text" size="25" maxlength="255" placeholder="과목 입력">
                        &nbsp;&nbsp;
                        <input type="submit" value="등록" />
                    </form>
                </div>
                <br/>
                <div>
                    <form method="post">
                        요일 &nbsp;
                        <select>
                            <option value='' selected>-- 요일 --</option>
                            <option value='Mon'>월</option>
                            <option value='Tue'>화</option>
                            <option value='Wed'>수</option>
                            <option value='Thu'>목</option>
                            <option value='Fri'>금</option>
                        </select>
                        &nbsp;&nbsp;
                        시간 &nbsp;
                        <select>
                            <option value='' selected>-- 시작 --</option>
                            <option value='1'>9:00-9:30</option>
                            <option value='2'>9:30-10:00</option>
                            <option value='3'>10:00-10:30</option>
                            <option value='4'>10:30-11:00</option>
                            <option value='5'>11:00-11:30</option>
                            <option value='6'>11:30-12:00</option>
                            <option value='7'>12:00-12:30</option>
                            <option value='8'>12:30-13:00</option>
                            <option value='9'>13:00-13:30</option>
                            <option value='10'>13:30-14:00</option>
                            <option value='11'>14:00-14:30</option>
                            <option value='12'>14:30-15:00</option>
                            <option value='13'>15:00-15:30</option>
                            <option value='14'>15:30-16:00</option>
                            <option value='15'>16:00-16:30</option>
                            <option value='16'>16:30-17:00</option>
                            <option value='17'>17:00-17:30</option>
                            <option value='18'>17:30-18:00</option>
                            <option value='19'>18:00-18:30</option>
                            <option value='20'>18:30-19:00</option>
                            <option value='21'>19:00-19:30</option>
                            <option value='22'>19:30-20:00</option>
                        </select>
                        &nbsp;~&nbsp;
                        <select>
                            <option value='' selected>-- 끝 --</option>
                            <option value='1'>9:00-9:30</option>
                            <option value='2'>9:30-10:00</option>
                            <option value='3'>10:00-10:30</option>
                            <option value='4'>10:30-11:00</option>
                            <option value='5'>11:00-11:30</option>
                            <option value='6'>11:30-12:00</option>
                            <option value='7'>12:00-12:30</option>
                            <option value='8'>12:30-13:00</option>
                            <option value='9'>13:00-13:30</option>
                            <option value='10'>13:30-14:00</option>
                            <option value='11'>14:00-14:30</option>
                            <option value='12'>14:30-15:00</option>
                            <option value='13'>15:00-15:30</option>
                            <option value='14'>15:30-16:00</option>
                            <option value='15'>16:00-16:30</option>
                            <option value='16'>16:30-17:00</option>
                            <option value='17'>17:00-17:30</option>
                            <option value='18'>17:30-18:00</option>
                            <option value='19'>18:00-18:30</option>
                            <option value='20'>18:30-19:00</option>
                            <option value='21'>19:00-19:30</option>
                            <option value='22'>19:30-20:00</option>
                        </select>
                        &nbsp;&nbsp;
                        <input type="submit" value="삭제" />&nbsp;&nbsp;<input type="submit" value="전체삭제" />
                    </form>
                </div>
            </div>
                <br />
                <div>
                    <table border="1" width="80%">
                        <thead>
                            
                            <tr>
                                <th width="15%"></th>
                                <th width="15%">Mon</th>
                                <th width="15%">Tue</th>
                                <th width="15%">Wed</th>
                                <th width="15%">Thu</th>
                                <th width="15%">Fri</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th> 9:00-9:30 </th>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <th> 9:30-10:00 </th>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <th> 10:00-10:30 </th>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <th> 10:30-11:00 </th>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <th> 11:00-11:30 </th>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <th> 11:30-12:00 </th>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <th> 12:00-12:30 </th>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <th> 12:30-13:00 </th>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <th> 13:00-13:30 </th>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <th> 13:30-14:00 </th>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <th> 14:00-14:30 </th>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <th> 14:30-15:00 </th>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <th> 15:00-15:30 </th>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <th> 15:30-16:00 </th>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <th> 16:00-16:30 </th>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <th> 16:30-17:00 </th>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <th> 17:00-17:30 </th>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <th> 17:30-18:00 </th>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <th> 18:00-18:30 </th>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <th> 18:30-19:00 </th>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <th> 19:00-19:30 </th>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <th> 19:30-20:00 </th>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                        </tbody>
                    </table>

                </div>
</td>
	</tr>

</table>

</body>
</html>