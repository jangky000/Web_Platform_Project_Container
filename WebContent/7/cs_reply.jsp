<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>

  <h1>고객 센터 글 답변하기</h1>
  <input type="button" name="main" value="검색 결과로 돌아가기"
  onClick="location.href='result.jsp'">
</head>
<body>
  <table>
    <tr>
      <th>제목</th>
      <td>항상 저희 향연을 이용해 주셔서 감사합니다.</td>
    </tr>
    <tr>
      <th>내용</th>
      <td rowspan="2">항상 저희 향연을 이용해 주셔서 감사합니다.
고객님계서는 놀 곳이 너무 적다고 문의해 주셨는데요~!
점차적으로 장소를 추가할 예정입니다!
앞으로도 많이 이용해 주시면 감사하겠습니다~!!~</td>
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
<input type="button" name="main" value="답변하기" 
onClick="location.href='cscenter.jsp'">
</html>
