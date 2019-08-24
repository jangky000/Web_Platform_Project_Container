<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

	<title> page6 </title>
</head>
<body>

<table>
	<thead>
	<tr>
		<th scope="col"  width="20%" height="10%">
			<a href="main2.jsp" target="_self">
				<img src="0909.png" alt="LOGO" width="200" height="130">
			</a>
		</th>
		<th scope="col" width="80%" height="10%"></th>

	</tr>
	<tr>
		<td scope="col" width="20%" height="70%"></td>
        <td scope="col" align="center" valign="top" width="80%" height="70%">


            <div>
                <h2><&nbsp;공동구매&nbsp;상품&nbsp;정보></h2>
                <table width="100%" border="2" rules="none">
                    <tr>
                        <td width="20%" align="center">
                            <table height="300">
                                <tr>
                                    <td align="center">
                                        <img src="" border="1" alt="Image" width="100" height="100"><br />
                                        <input type="file" size="5" value="찾아보기" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" valign="bottom">
                                        <a href=" 04_page.jsp" target="_self">
                                        <input type="submit" value="등록" />
                                        </a>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            <p>
                                &nbsp;제품명 : <input type="text" size="25" maxlength="255" placeholder="검색어 입력" />&nbsp;<input type="submit" value="유사제품 조회" />
                            </p>
                            <p>

                                &nbsp;진행기간 : <input type="text" size="5" maxlength="4" placeholder="2000" /> 년 &nbsp;&nbsp;&nbsp;<input type="text" size="3" maxlength="2" placeholder="01" /> 월 &nbsp;&nbsp;&nbsp;<input type="text" size="3" maxlength="2" placeholder="01" /> 일까지

                            </p>
                            <p>
                                &nbsp;진행수량 : <input type="text" size="2" maxlength="4" placeholder="00" /> 개
                            </p>
                            <p>
                                <table>
                                    <tr>
                                        <td valign="top">&nbsp;내용&nbsp;:&nbsp;</td>
                                        <td><textarea  align="center" valign="middle" name="content" cols="50" rows="5"></textarea></td>
                                    </tr>
                                </table>
                            </p>
                            <p>
                                <table>
                                    <tr>
                                        <td valign="top">&nbsp;카테고리&nbsp;:&nbsp;</td>
                                        <td>
                                            <input type="radio" name="chk_info" value="신발" />&nbsp;신발&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="chk_info" value="마우스" />&nbsp;마우스&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="chk_info" value="키보드" />&nbsp;키보드&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="chk_info" value="헤드셋" />&nbsp;헤드셋<br />
                                            <input type="radio" name="chk_info" value="생활용품" />&nbsp;생활용품&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="chk_info" value="양말" />&nbsp;양말&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="chk_info" value="기타" />&nbsp;기타&nbsp;<input type="text" size="10" maxlength="10" placeholder="기타입력" /><!--후에 자바스크립트로 이곳에 입력된것이 전달될 수 있도록 짜야한다-->
                                        </td>
                                    </tr>
                                </table>
                            </p>
                            <p>
                                &nbsp;강의명 : <input type="text" size="40" maxlength="40" placeholder="강의명 입력" />&nbsp;<font color="red">(기타)</font>
                            </p>
                        </td>
                    </tr>
                </table>
            </div>


            <br />
            <div>
                <table border="1" width="100%"  align="center" valign="middle">
                    <thead>
                        <tr>
                            <th colspan="3" width="100%"><h3>조회한&nbsp;유사상품&nbsp;결과입니다!</h3></th>
                        </tr>
                    </thead>
                    <tbody align="center" valign="middle">
                        <tr>
                            <td scope="col" width="10%">번호</td>
                            <td scope="col" width="30%">이미지</td>
                            <td scope="col" width="60%">상세정보</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td><a href="#"><img src="게이밍마우스1.png"></a></td>
                            <td align="left">
                                <p>&nbsp;-&nbsp;제품명&nbsp;:&nbsp;맥스틸&nbsp;게이밍&nbsp;마우스&nbsp;TRON&nbsp;G10,&nbsp;매트블랙</p>
                                <p>&nbsp;-&nbsp;진행자&nbsp;:&nbsp;최정선</p>
                                <p>&nbsp;-&nbsp;진행기간&nbsp;:&nbsp;04/05~04/10</p>
                                <p>&nbsp;-&nbsp;진행수량&nbsp;:&nbsp;8개&nbsp;이상</p>
                            </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td><a href="#"><img src="게이밍마우스2.png"></a></td>
                            <td align="left">
                                <p>&nbsp;-&nbsp;제품명&nbsp;:&nbsp;지클릭커&nbsp;게이밍&nbsp;마우스&nbsp;GM-M250,&nbsp;G10,&nbsp;블랙</p>
                                <p>&nbsp;-&nbsp;진행자&nbsp;:&nbsp;김소희</p>
                                <p>&nbsp;-&nbsp;진행기간&nbsp;:&nbsp;04/01~04/15</p>
                                <p>&nbsp;-&nbsp;진행수량&nbsp;:&nbsp;7개&nbsp;이상</p>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>

        </td>
	</tr>
</table>

</body>
</html>