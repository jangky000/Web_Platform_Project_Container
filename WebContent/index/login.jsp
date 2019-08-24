<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
	//String id = (String)request.getParameter("id");
	//if(id != null)
	//	response.sendRedirect("welcome.jsp");
%>
<!DOCTYPE HTML>

<html>
    <head>
        <title>login</title>
    </head>
    <body>
      <table  bordercolor="green" width ="100%" height=""align="center">
         <tr>
             <td bordercolor = "green" colspan = "3" >
             <a href="index.jsp" target="main" onclick="parent.header.location.href='login.jsp'"><img src="logo.png" width="100%" height="80%"></a>
             </td>

             <td width = 50%></td>

             <td>
                 <form action="logincheck.jsp">
                     <br>
                     <input type="text" name="id" placeholder="아이디">
                     <input type="password" name="pw" placeholder="비밀번호">
                     <input type="submit" value="로그인">
                 </form>
             </td>
             <td> <form action="enrollment.jsp" target="main"><br><input type="submit" value="회원가입">&nbsp;</form></td>
          </tr>
        </table>
    </body>
</html>
