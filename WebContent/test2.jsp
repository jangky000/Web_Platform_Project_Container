<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<form action='/test2.jsp'>
	<input type=file name='filename'>
	<input type='submit' value='���� ����'>
</form>

<% String file = request.getParameter("filename"); %>

<%=file %>