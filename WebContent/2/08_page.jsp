<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<title> page8 </title>
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
            <td scope="col" width="20%" height="*" align="center" valign="middle"></td>
            <td scope="col" align="left" valign="top" width="80%" height="*">
                <div>
                    <p>
                        &ensp;대학 :
                        <select height="25" name='categories'>
                            <option value='' selected>-- 선택 --</option>
                            <option value='college'>공과대학</option>
                            <option value='college'>이과대학</option>
                            <option value='college'>문과대학</option>
                            <option value='college'>경영대학</option>
                        </select>&ensp;학과 :
                        <select height="25" name='categories'>
                            <option value='' selected>-- 선택 --</option>
                            <option value='major'>멀티미디어공학과</option>
                            <option value='major'>산업시스템공학과</option>
                            <option value='major'>컴퓨터공학과</option>
                            <option value='major'>신소재공학과</option>
                            <option value='major'>건설환경공학과</option>
                            <option value='major'>화학생명공학과</option>
                            <option value='major'>전자전기공학과</option>
                        </select>
                    </p>
                    <table border="1" width="100%" align="center" valign="middle">
                        <thead>
                            <tr>
                                <th scope="col" width="10%">순위</th>
                                <th scope="col" width="30%">이미지</th>
                                <th scope="col" width="60%">제품명</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><img src="순위1.png"></td>
                                <td align="center" valign="middle"><a href="#"><img src="맥스틸.png"></a></td>
                                <td align="left">
                                    <p>&ensp;맥스틸 게이밍 마우스 TRON G10, 매트블랙</p>
                                </td>
                            </tr>
                            <tr>
                                <td><img src="순위2.png"></td>
                                <td align="center" valign="middle"><a href="#"><img src="페가수스.JPG"></a></td>
                                <td align="left">
                                    <p>&ensp;게인워드 RTX 2060 페가수스 D6 6GB</p>
                                </td>
                            </tr>
                            <tr>
                                <td><img src="순위3.png"></td>
                                <td align="center" valign="middle"><a href="#"><img src="플렉스터.JPG"></a></td>
                                <td align="left">
                                    <p>&ensp;플렉스터 Plextor M8VC 256GB</p>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </td>
        </tr>
    </tbody>
</table>

</body>
</html>
