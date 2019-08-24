<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
   <title> page3-1 </title>
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
        </thead>

        <tbody align="center" valign="middle">
            <tr>
                <td scope="col" width="20%" height="*"></td>
                <td scope="col" width="80%" height="*">
                    <table>
                        <tr>
                            <td width="80%">
                                <table border="1" width="600" height="700" align="center" valign="middle" rules="none">
                                    <!--이니스프리-->
                                    <tr>
                                        <td align="center" valign="middle" colspan="2" height="30"><h2>이니스프리 그린티퓨어 스킨로션</h2><hr /></td>
                                    </tr>
                                    <tr>
                                        <td><img src="이니스프리.JPG" alt="이미지" width="120" height="120"></td>
                                        <td align="left">
                                            <p>&nbsp;-&nbsp;강의명&nbsp;:&nbsp;없음</p>
                                            <p>&nbsp;-&nbsp;제품명&nbsp;:&nbsp;이니스프리&nbsp;그린티퓨어&nbsp;스킨로션</p>
                                            <p>&nbsp;-&nbsp;진행자&nbsp;:&nbsp;최정선</p>
                                            <p>&nbsp;-&nbsp;진행&nbsp;기간&nbsp;:&nbsp;04/05~04/10</p>
                                            <p>&nbsp;-&nbsp;진행 수량&nbsp;:&nbsp;8개&nbsp;이상</p>
                                            <p>&nbsp;-&nbsp;내용&nbsp;:&nbsp;스킨로션&nbsp;공구합니다!</p>
                                            <p>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;자세한&nbsp;사항은&nbsp;링크&nbsp;남길게요!</p>
                                            <p>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;https://www.coupang.com/vp/products/14663676</p>
                                            <p>&nbsp;-&nbsp;최종 신청 수량&nbsp;:&nbsp;10개</p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" height="100" align="center" valign="middle">
                                            <img src="진행완료.png" />
                                        </td>
                                    </tr>
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
																<p>물건 왔습니다! 배부할게요~</p>
																<p>날짜 : 이번주 주말</p>
																<p>장소 : 학림관 1층</p>
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
													<p align="left">김소희 : <textarea name="content" cols="18" rows="1" valign="middle">시간은 언제인가요?</textarea>
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