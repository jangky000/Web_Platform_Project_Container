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
	//����
	Connection conn = null;
	try {
		//����̹� �ε�
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		//����
		String url ="jdbc:mysql://localhost:3306/webdb?useSSL=false&serverTimezone=Asia/Seoul";
		String user = "root";
		String password = "12341234"; 
		
		conn = DriverManager.getConnection(url, user, password);
		System.out.println("���� ����");
		
	} catch (ClassNotFoundException | SQLException e) {
		e.printStackTrace();
	}
%>

<%
	String id = "";
	String pjseq = "";
	String pdseq = (String)request.getParameter("pdseq");
	
	//SQL ������ �߰� ���� ���� ������ ��ü ����
	Statement stmt = conn.createStatement();
	
	//������ �߰�
	if(pdseq == null){
		ServletContext scontext = getServletContext();
		String uploadPath = scontext.getRealPath("5/data/");
		
		int maxSize = 1024 * 1024 * 512; // �ѹ��� �ø� �� �ִ� ���� �뷮 : 512M�� ����
		
		//String fname = "";
		String memo = "";
		String date = "";

		
		String fileName1 = ""; // �ߺ�ó���� �̸�
		String originalName1 = ""; // �ߺ� ó���� ���� ���� �̸�
		long fileSize = 0; // ���� ������
		String fileType = ""; // ���� Ÿ��
		
		MultipartRequest multi = null;
		
		try{
			// request,����������,�뷮,���ڵ�Ÿ��,�ߺ����ϸ� ���� �⺻ ��å
			multi = new MultipartRequest(request,uploadPath,maxSize,"utf-8",new DefaultFileRenamePolicy());
			
			// form���� input name="name" �� �༮ value�� ������
			id = multi.getParameter("id");
			//fname = multi.getParameter("fname");
			pjseq = multi.getParameter("seq");
			memo = multi.getParameter("memo");
			date = multi.getParameter("date");

			
			// ������ ��ü �����̸����� ������
			Enumeration files = multi.getFileNames();
			
			while(files.hasMoreElements()){
				// form �±׿��� <input type="file" name="���⿡ ������ �̸�" />�� �����´�.
				String file1 = (String)files.nextElement(); // ���� input�� ������ �̸��� ������
				// �׿� �ش��ϴ� ���� ���� �̸��� ������
				originalName1 = multi.getOriginalFileName(file1);
				// ���ϸ��� �ߺ��� ��� �ߺ� ��å�� ���� �ڿ� 1,2,3 ó�� �پ� unique�ϰ� ���ϸ��� �����ϴµ�
				// �̶� ������ �̸��� filesystemName�̶� �Ͽ� �� �̸� ������ �����´�.(�ߺ��� ���� ó��)
				fileName1 = multi.getFilesystemName(file1);	
				// ���� Ÿ�� ������ ������
				fileType = multi.getContentType(file1);
				// input file name�� �ش��ϴ� ���� ������ ������
				File file = multi.getFile(file1);
				// �� ���� ��ü�� ũ�⸦ �˾Ƴ�
				fileSize = file.length();
			}
			//out.print(name + "<br>");
			//out.print(fileName1+"<br>");
			//out.print(originalName1+"<br>");
			//out.print(uploadPath+fileName1+"<br>");
			//out.print("<img src='image/"+  fileName1 + "'></img>");//����
			
		}catch(Exception e){
			e.printStackTrace();
		}

		//���� �����
			
		//String id = (String)request.getParameter("id");
		
		String sql = "INSERT INTO project_data(pj_seq, pd_file, pd_note, pd_date)VALUES ("+ pjseq +", 'data/" +fileName1+"', '" + memo + "', '" + date +"')";
		out.print("������ �߰��ϱ�");
		out.print("sql: "+sql);
		out.print("���: "+ stmt.executeUpdate(sql));
	}
	else{
		id = (String)request.getParameter("id");
		pjseq = (String)request.getParameter("seq");
		
		String sql = "DELETE FROM project_data WHERE pd_seq =" + pdseq;
		out.print("������ ����");
		out.print("sql: "+sql);
		out.print("���: "+ stmt.executeUpdate(sql));
		
	}
	
	
	
%>
<%
	//���� ���� ��ü ����
	if(stmt != null) try{stmt.close();System.out.println("��������");}catch(SQLException e){}
	//Ŀ�ؼ� ����
	if(conn != null) try{conn.close();System.out.println("��������");}catch(SQLException e){}
	
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

