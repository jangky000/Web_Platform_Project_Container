<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
<head>
    <title>놀곳 추천 화면</title>
</head>
<body>
    <h5>검색 결과</h5>
 <input type="button" name="main" value="검색 창으로 돌아가기" onClick="location.href='main7.jsp'">
  <input type="button" name="rank" value="랭킹" onClick="location.href='rank_all.jsp'">
  <input type="button" name="cscenter" value="고객센터" onClick="location.href='cscenter.jsp'">
  <input type="button" name="mypage" value="마이페이지" onClick="location.href='mypage1.jsp'">
 <br>
    <table border="1" width ="1600" height="680" align = "center" >
        <tr>
            <td width="400" height="150"><img src="shitang.png" width="400" height="150"></img></td>
            <th rowspan="6"><img src="map.png" width="1200" height="700"></th>
        </tr>
        <tr><td height="100"><img src="name.png" width="400" height="100"></td></tr>
        <tr><td height="10">상세 정보&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input type="button" name="main" value="정보더보기"
  onClick="location.href='result1.jsp'">
  
  
        <tr><td height="110"><p>주소 : 서울특별시 중구 장충동 필동로1길 30</p><p>전화번호 : 02-2260-5252</p></td></tr>
        <tr><td height="10">생생 리얼 리뷰&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
<input type="button" name="main" value="리뷰 더보기" onClick="location.href='review.jsp'">
        <tr><td height="290">리뷰</td></tr>
        
    </table>
    
</body>
