<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
   <title> page5 </title>
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
            <td scope="col" width="20%" height="*"></td>
            <td scope="col" width="80%" height="*">

                <table>
                    <tr>
                        <td>
                            <table border="1" width="600" height="700" align="center" valign="middle" rules="none">
                                <thead border="1">
                                    <tr>
                                        <th colspan="2"><h2>맥스틸 게이밍 마우스 TRON G10, 매트블랙</h2><hr /></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><a href="#"><img src="게이밍마우스1.png" alt="이미지" width="120" height="120"></a></td>
                                        <td align="left">
                                            <p>&nbsp;-&nbsp;강의명&nbsp;:&nbsp;없음</p>
                                            <p>&nbsp;-&nbsp;제품명&nbsp;:&nbsp;맥스틸 게이밍 마우스 TRON G10, 매트블랙</p>
                                            <p>&nbsp;-&nbsp;진행자&nbsp;:&nbsp;최정선</p>
                                            <p>&nbsp;-&nbsp;진행&nbsp;기간&nbsp;:&nbsp;04/05 ~ 04/10</p>
                                            <p>&nbsp;-&nbsp;진행&nbsp;수량&nbsp;:&nbsp;8개&nbsp;이상</p>
                                            <p>&nbsp;-&nbsp;내용&nbsp;:&nbsp;마우스&nbsp;공구합니다!</p>
                                            <p>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;자세한&nbsp;사양은&nbsp;링크&nbsp;남길게요!</p>
                                            <p>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;https://www.coupang.com/vp/products/14663676</p>
                                            <p>&nbsp;-&nbsp;현재 총 신청 수량&nbsp;:&nbsp;3개</p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td><p>&nbsp;신청 수량&nbsp;:&nbsp;<input type="text" size="20" maxlength="255" placeholder="신청수량 입력"> 개  <a href=" 05-1_page.jsp" target="_self"><input type="submit" value="참여"></a></p></td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                        <td width="*" align="center" valign="top">
                                <table width="250" border="1">
                                    <thead>
                                        <tr>
                                            <th><img src="comment.png" alt="img" width="200" height="50" /></th>
                                        </tr>
                                        <tr>
                                            <th>
                                            &nbsp;필터&nbsp;
                                                <select>
                                                    <option value='' selected>-- 전체 --</option>
                                                    <option value='comment'>공지</option>
                                                    <option value='question'>Q&A</option>
                                                </select>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody align="center" valign="middle">
                                        <tr>
                                            <td height="100">
                                                <form method="post">
													<div>
														<p>| Comment 입력 |</p>
													</div>
                                                    <div>
                                                        <textarea name="content" cols="30" rows="5">내용을 입력해주세요.</textarea>
                                                    </div>
                                                    <div>
														&nbsp;타입&nbsp;
                                                        &nbsp;
                                                        <select>
                                                            <option value='' selected>-- type --</option>
                                                            <option value='question'>Q&A</option>
                                                        </select>
                                                        &nbsp;<input type="submit" value="등록">&nbsp;
                                                    </div>
													<div>
														&nbsp;
													</div>
                                                </form>
                                            </td>
                                        </tr>
                                        <tr>
											<td>
												<div>
													<p>[공지]&nbsp;&nbsp;진행자&nbsp;</p>
												</div>
												<div>
													<table border="1" width="250">
														<tr>
															<td>
																<p>많이많이 신청해주세요~!</p>
															</td>
														</tr>
													</table>
												</div>
												<div>
													&nbsp;
												</div>
												<div>
													<img src="arrow.png" alt="img" width="30" height="30" align="left"/>
													<textarea name="content" cols="18" rows="1" valign="middle">댓글을 입력해주세요.</textarea>
													<input type="submit" value="등록">
												</div>
												<div>
													<img src="arrow.png" alt="img" width="30" height="30" align="left"/>
													<p align="left">김소희 : <textarea name="content" cols="18" rows="1" valign="middle">가격 얼마인가요?</textarea>
													<p align="right"><input type="submit" align="right" value="수정">&nbsp;<input type="submit" align="right" value="삭제">
													&nbsp;</p>
												</div>
											</td>
                                        </tr>									
                                    </tbody>
                                </table>
                            </td>
                    </tr>

                </table>

            </td>
        </tr>
    </tbody>




</table>
</body>

</html>