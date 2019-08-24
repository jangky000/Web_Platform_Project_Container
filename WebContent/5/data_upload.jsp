<%@ page import = "java.sql.ResultSet"%>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.SQLException" %>
<%@ page import = "java.sql.DriverManager" %>


<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<%
	//연결
	Connection conn = null;
	try {
		//드라이버 로딩
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		//연결
		String url ="jdbc:mysql://localhost:3306/webdb?useSSL=false&serverTimezone=Asia/Seoul";
		String user = "root";
		String password = "12341234"; 
		
		conn = DriverManager.getConnection(url, user, password);
		System.out.println("연결 성공");
		
	} catch (ClassNotFoundException | SQLException e) {
		e.printStackTrace();
	}
%>

<%
	String id = "";
	String pjseq = "";
	String pdseq = (String)request.getParameter("pdseq");
	
	//SQL 데이터 추가 수정 삭제 실행할 객체 생성
	Statement stmt = conn.createStatement();
	
	//데이터 추가
	if(pdseq == null){
		ServletContext scontext = getServletContext();
		String uploadPath = scontext.getRealPath("5/data/");
		
		int maxSize = 1024 * 1024 * 512; // 한번에 올릴 수 있는 파일 용량 : 512M로 제한
		
		//String fname = "";
		String memo = "";
		String date = "";

		
		String fileName1 = ""; // 중복처리된 이름
		String originalName1 = ""; // 중복 처리전 실제 원본 이름
		long fileSize = 0; // 파일 사이즈
		String fileType = ""; // 파일 타입
		
		MultipartRequest multi = null;
		
		try{
			// request,파일저장경로,용량,인코딩타입,중복파일명에 대한 기본 정책
			multi = new MultipartRequest(request,uploadPath,maxSize,"utf-8",new DefaultFileRenamePolicy());
			
			// form내의 input name="name" 인 녀석 value를 가져옴
			id = multi.getParameter("id");
			//fname = multi.getParameter("fname");
			pjseq = multi.getParameter("seq");
			memo = multi.getParameter("memo");
			date = multi.getParameter("date");

			
			// 전송한 전체 파일이름들을 가져옴
			Enumeration files = multi.getFileNames();
			
			while(files.hasMoreElements()){
				// form 태그에서 <input type="file" name="여기에 지정한 이름" />을 가져온다.
				String file1 = (String)files.nextElement(); // 파일 input에 지정한 이름을 가져옴
				// 그에 해당하는 실재 파일 이름을 가져옴
				originalName1 = multi.getOriginalFileName(file1);
				// 파일명이 중복될 경우 중복 정책에 의해 뒤에 1,2,3 처럼 붙어 unique하게 파일명을 생성하는데
				// 이때 생성된 이름을 filesystemName이라 하여 그 이름 정보를 가져온다.(중복에 대한 처리)
				fileName1 = multi.getFilesystemName(file1);	
				// 파일 타입 정보를 가져옴
				fileType = multi.getContentType(file1);
				// input file name에 해당하는 실재 파일을 가져옴
				File file = multi.getFile(file1);
				// 그 파일 객체의 크기를 알아냄
				fileSize = file.length();
			}
			//out.print(name + "<br>");
			//out.print(fileName1+"<br>");
			//out.print(originalName1+"<br>");
			//out.print(uploadPath+fileName1+"<br>");
			//out.print("<img src='image/"+  fileName1 + "'></img>");//성공
			
		}catch(Exception e){
			e.printStackTrace();
		}

		//모집 등록인
			
		//String id = (String)request.getParameter("id");
		
		String sql = "INSERT INTO project_data(pj_seq, pd_file, pd_note, pd_date)VALUES ("+ pjseq +", 'data/" +fileName1+"', '" + memo + "', '" + date +"')";
		out.print("데이터 추가하기");
		out.print("sql: "+sql);
		out.print("결과: "+ stmt.executeUpdate(sql));
	}
	else{
		id = (String)request.getParameter("id");
		pjseq = (String)request.getParameter("seq");
		
		String sql = "DELETE FROM project_data WHERE pd_seq =" + pdseq;
		out.print("데이터 삭제");
		out.print("sql: "+sql);
		out.print("결과: "+ stmt.executeUpdate(sql));
		
	}
	
	
	
%>
<%
	//쿼리 구문 객체 해제
	if(stmt != null) try{stmt.close();System.out.println("해제성공");}catch(SQLException e){}
	//커넥션 해제
	if(conn != null) try{conn.close();System.out.println("해제성공");}catch(SQLException e){}
	
	//response.sendRedirect("project_recruit.jsp");
%>

<html>
<head>
<meta charset="EUC-KR">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>data_upload</title>
</head>
<body>
</body>
</html>

