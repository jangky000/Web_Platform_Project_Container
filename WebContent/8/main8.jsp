<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <style>
         #t{
            margin: 0px;
            padding: 0px;
            height: 100%;
            width: 100%;
         }
      
         div{
            border: 3px solid black;
         }

         td{
            text-align:center;
         }
      </style>
   </head>

   <body>
      <table id ="t" border=0>
         <tr height="50%">
            <td width="10%">
               <center>실시간 평점 순위</center>
                  <div>
                     <center>
                        <ul id="ticker">
                           <li><a href="chat.jsp"> <span>1.</span> 박지성 ↑</a></li>
                           <li><a href="chat.jsp"> <span>2.</span> 김연아 -</a></li>
                           <li><a href="chat.jsp"> <span>3.</span> 송종국 ↑</a></li>
                           <li><a href="chat.jsp"> <span>4.</span> 기성용 ↑</a></li>
                           <li><a href="chat.jsp"> <span>5.</span> 차두리 -</a></li>
                           <li><a href="chat.jsp"> <span>6.</span> 이천수 -</a></li>
                           <li><a href="chat.jsp"> <span>7.</span> 차범근 ↓</a></li>
                           <li><a href="chat.jsp"> <span>8.</span> 김영희 ↓</a></li>
                           <li><a href="chat.jsp"> <span>9.</span> 김철수 ↓</a></li>
                           <li><a href="chat.jsp"> <span>10.</span> 홍길동 ↓</a></li>
                        </ul>
                     <center>
                  </div>
               </td>
         
            <td width="80%">
               
               <center>
                  <h1>Gyogle</h1><br><br>
         
                  <form>
                     <input type="text" name="text" style="width:70%;" />
                     <a href="search.jsp"><input type="button" value="검색" /></a>
                  </form>
               </center>
            </td>
            
            <td></td>
         </tr>
      
         <tr>
            <td colspan=3>
               <hr>
               <center>
                  <br><br>
                  <h2>내 평가관리</h2>
                  <table border=1 width="50%">
                     <tr><td>교원명</td><td>내용</td><td>삭제</td></tr>
                     <tr><td><a href="chat.jsp">김연아</a></td><td>사담을 너무 많이 하심</td><td>X</td></tr>
                     <tr><td><a href="chat.jsp">김영희</a></td><td>커피를 정말 좋아하세요.</td><td>X</td></tr>
                     <tr><td><a href="chat.jsp">김철수</a></td><td>조금 많이 깐깐..</td><td>X</td></tr>
                     <tr><td><a href="chat.jsp">박지성</a></td><td>이 교수님은 그저 빛..</td><td>X</td></tr>
                  </table>
               </center>
            </td>
         </tr>   
      </table>
   </body>
</html>