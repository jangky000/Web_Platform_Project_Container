<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>

  <h1>고객 센터 글 답변 수정하기</h1>
  <input type="button" name="main" value="검색 결과로 돌아가기" onClick="location.href='result.jsp'">
</head>
<body>
  <table>
    <tr>
      <th>제목</th>
      <td>비밀번호를 잊어버렸어요.</td>
    </tr>
    <tr>
      <th>내용</th>
      <td rowspan="2">비밀번호를 잊어버렸어요 알려주세요...</td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <th>내용 입력</th>
      <td rowspan="2"><textarea name="content" rows="10" style="width:650%;"></textarea></td>
    </tr>
    <tr>
      <td><td>
    </tr>
    <tr>
      <th>이메일</th>
      <td><textarea name="content" rows="1" style="width:650%;"></textarea></td>
    </tr>
  </table>

</body>
<input type="button" name="main" value="수정하기"
onClick="location.href='cscenter.jsp'">
