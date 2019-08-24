<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <style>
         td{
            text-align:center;
         }
      </style>
   </head>

   <body>
      <center>
         <h1>검색 결과</h1><br>
         <form>
            <input type="text" name="text" style="width:50%;" />
            <a href="#"><input type="submit" value="검색" /></a>
         </form>
      
         <table border=1 width="60%">
            <tr><td>교원명</td><td>소속 학과</td><td>학수명</td><td>연락처</td></tr>
            <tr><td><a href="chat.jsp">김연아</a></td><td>경영학부</td><td>자아와명상1</td><td>010-4321-8765</td></tr>
            <tr><td><a href="chat.jsp">김영희</a></td><td>지리역사학과</td><td>자아와명상1</td><td>010-9841-6845</td></tr>
            <tr><td><a href="chat.jsp">김철수</a></td><td>체육교육과</td><td>불교와인간</td><td>010-6853-5699</td></tr>
            <tr><td><a href="chat.jsp">박지성</a></td><td>영어영문학과</td><td>영어문학입문</td><td>010-1234-5678</td></tr>
         </table>
      
         <br><br>.<br><br>
         .<br><br>
         .<br><br>
         <a href="main8.jsp"><input type="button" value="초기화면으로" /></a>
      </center>
   </body>
</html>