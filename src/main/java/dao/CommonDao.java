package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CommonDao {
	
	protected Connection conn = null;
	protected PreparedStatement pstmt;
	protected ResultSet rst = null;
	
	public Connection getConnection() {
		// 驱动程序名
		String driver = "com.mysql.jdbc.Driver";
		// URL指向要访问的数据库名scutcs
		String url = "jdbc:mysql://127.0.0.1:3306/diary?useUnicode=true&characterEncoding=UTF-8";
		// MySQL配置时的用户名
		String user = "root";

		// MySQL配置时的密码
		String password = "root";

		try {
			// 加载驱动程序
			Class.forName(driver);
			// 连续数据库
			Connection conn = DriverManager.getConnection(url, user, password);
			return conn;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	protected void close() throws SQLException{
		if(conn != null){
			conn.close();
		}
		if(pstmt != null){
			pstmt.close();
		}
		if(rst != null){
			rst.close();
		}
	}
}
