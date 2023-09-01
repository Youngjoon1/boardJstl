package test;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	public static Connection getConnect() {
		Connection con = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
														
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String id = "test";
			String pwd = "1234";
			con = DriverManager.getConnection(url, id, pwd);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
}




