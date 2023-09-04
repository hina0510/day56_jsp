package day56_jsp;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	public static Connection getConnect() {
		Connection con = null;
		try {
			System.out.println("getConnect 실행");
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("로드 성공");
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String id="C##java";
			String pwd = "1234";
			
			con = DriverManager.getConnection(url, id, pwd);

			System.out.println("연결 성공 : "+con);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
}
