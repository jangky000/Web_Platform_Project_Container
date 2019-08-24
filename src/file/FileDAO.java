package file;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class FileDAO {
	
	private Connection conn;
	   
	public FileDAO(){
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
	}
	
	public int upload(String fileName, String fileRealName, String seq) {
		String sql ="update recruit_project set rp_img='?', rp_file='?' where rp_seq = '?'";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, fileName);
			pstmt.setString(1, fileRealName);
			pstmt.setString(1, seq);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
}
