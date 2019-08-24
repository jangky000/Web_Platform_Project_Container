<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <style>
         td{
             text-align:center;
         }
         
         #l{
            text-align:left;
         }

         #r{
            text-align:right;
            color:yellow;
         }

         #r2{
            text-align:right;
         }
      </style>
   </head>

   <body>
      <center>
         <form>
            <h1><a href="map.jsp">박지성</a></h1>
            <a href="class.jsp">영어영문학과</a><br>
            점수선택: <input type="radio" name="chk_info" value="1">1
            <input type="radio" name="chk_info" value="2">2
            <input type="radio" name="chk_info" value="3">3
            <input type="radio" name="chk_info" value="4">4
            <input type="radio" name="chk_info" value="5">5<input type="submit" value="제출" />
            <br>평점: 4.8점
            
            <table width="50%" bgcolor="skyblue">
               <tr><td id="l">이시대 최고의 교수님인것 같음</td></tr>

               <tr><td id="l">해외강연도 하셨으면..</td></tr>

               <tr><td id="l">첫째.학생들에게 매우 매너있으심</td></tr>
               <tr><td id="l">둘째. 매우 성실하심. 단 한번도 지각하신 기억이 없음</td></tr>
               <tr><td id="l">셋째. 어려운 내용도 이분이 설명하면 거의 바로 이해됨. 진짜 강추!</td></tr>

               <td><td id="r">이 교수님은 그저 빛..</td></tr>
            </table>


            <input type="text" name="text" style="width:50%;" /><br>
            <table width="50%">
               <tr>
                  <td id="l" width="25%">
                     <input type="submit" value="수정" />
                     <input type="submit" value="삭제" />
                  </td>

                  <td width="50%">
                     <a href="main8.jsp"><input type="button" value="초기화면으로" /></a>
                  </td>

                  <td id="r2"><input type="submit" value="저장" /></td>
               </tr>
            </table>
         </form>
      </center>
   </body>
</html>