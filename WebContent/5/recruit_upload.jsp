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
    pageEncoding="UTF-8"%>
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
	// request.getRealPath("상대경로") 를 통해 파일을 저장할 절대 경로를 구해온다.
	// 운영체제 및 프로젝트가 위치할 환경에 따라 경로가 다르기 때문에 아래처럼 구해오는게 좋음
	//String uploadPath = request.getRealPath("5/image/");
	ServletContext scontext = getServletContext();
	String uploadPath = scontext.getRealPath("5/image/");
	
	//out.println("절대경로 : " + uploadPath + "<br/>");
	
	int maxSize = 1024 * 1024 * 10; // 한번에 올릴 수 있는 파일 용량 : 10M로 제한
	
	String id = "";
	String name = "";
	String start = "";
	String category = "";
	String text = "";
	
	String fileName1 = ""; // 중복처리된 이름
	String originalName1 = ""; // 중복 처리전 실제 원본 이름
	long fileSize = 0; // 파일 사이즈
	String fileType = ""; // 파일 타입
	
	MultipartRequest multi = null;
	
	try{
		// request,파일저장경로,용량,인코딩타입,중복파일명에 대한 기본 정책
		multi = new MultipartRequest(request,uploadPath,maxSize,"utf-8",new DefaultFileRenamePolicy());
		//out.print("try");
		
		// form내의 input name="name" 인 녀석 value를 가져옴
		id = multi.getParameter("id");

		name = multi.getParameter("rp_name");
		//
		start = multi.getParameter("rp_start");
		category = multi.getParameter("category");
		text = multi.getParameter("rp_text");
		
		
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
%>

<%
	//모집 등록인
		
	//String id = (String)request.getParameter("id");

	//SQL 데이터 추가 수정 삭제 실행할 객체 생성
	Statement stmt = conn.createStatement();
	
	String sql = "INSERT INTO recruit_project(us_id, ct_seq, rp_name, rp_img, rp_start, rp_text)VALUES ('"+ id +"', " + category + ", '" + name + "', 'image/" +fileName1+"', '"+start+"','"+text+"')";
	out.print("프로젝트 모집하기");
	out.print("sql: "+sql);
	out.print("결과: "+ stmt.executeUpdate(sql));
	
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
<!-- <meta http-equiv='refresh' content='5; url=project_recruit.jsp?id=<id >'></meta>
 -->
<title>recruit_info</title>
</head>
<body>
</body>
</html>

