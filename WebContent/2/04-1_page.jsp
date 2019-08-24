<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

	<title> page4-1 </title>
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
	</thead>
    <tbody align="center" valign="middle">
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
                                            <img src="과잠.png" border="1" alt="Image" width="100" height="100"><br />
                                            <input type="file" size="5" value="파일선택" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" valign="bottom">
                                            <a href=" 04_page.jsp" target="_self">
                                            <input type="submit" value="수정" />
                                            </a>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td>
                                <p>
                                    &nbsp;제품명 : <input type="text" size="25" maxlength="255" placeholder="검색어 입력" value="과잠(올블랙)" />&nbsp;<input type="submit" value="유사제품 조회" />
                                </p>
                                <p>

                                    &nbsp;진행기간 : <input type="text" size="5" maxlength="4" placeholder="2000" value="2019" /> 년 &nbsp;&nbsp;&nbsp;<input type="text" size="3" maxlength="2" placeholder="01" value="04" /> 월 &nbsp;&nbsp;&nbsp;<input type="text" size="3" maxlength="2" placeholder="01" value="10" /> 일까지

                                </p>
                                <p>
                                    &nbsp;진행수량 : <input type="text" size="2" maxlength="4" placeholder="00" value="8" /> 개
                                </p>
                                <p>
                                    <table>
                                        <tr>
                                            <td valign="top">&nbsp;내용&nbsp;:&nbsp;</td>
                                            <td>
                                                <textarea name="content" cols="50" rows="5">과잠 공구합니다!
자세한 디자인은 링크 남길게요!
https://www.coupang.com/vp/products/14663676
                                        </textarea>
                                            </td>
                                        </tr>
                                    </table>
                                </p>
                                <p>
                                    <table>
                                        <tr>
                                            <td valign="top">&nbsp;카테고리&nbsp;:&nbsp;</td>
                                            <td>
                                                <input type="radio" name="chk_info" value="신발" />&nbsp;신발&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="chk_info" value="마우스" />&nbsp;마우스&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="chk_info" value="키보드" />&nbsp;키보드&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="chk_info" value="헤드셋" />&nbsp;헤드셋<br />
                                                <input type="radio" name="chk_info" value="생활용품" />&nbsp;생활용품&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="chk_info" value="양말" />&nbsp;양말&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="chk_info" value="기타" checked="checked" />&nbsp;기타&nbsp;<input type="text" size="10" maxlength="10" placeholder="기타입력" /><!--후에 자바스크립트로 이곳에 입력된것이 전달될 수 있도록 짜야한다-->
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
                <div><br /></div>
            </td>
        </tr>
    </tbody>
</table>

</body>
</html>