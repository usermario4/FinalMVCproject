package park.helpers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DBhelper {
	private static Connection conn;
	
	public static Connection getConnection() throws SQLException{
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
		}
		catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		}
		if (conn==null || conn.isClosed()) {
			Properties connectionProps= new Properties();
			connectionProps.put("user", "root");
			connectionProps.put("password", "");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mario",connectionProps);
		}
		return conn;
	}
public static void closeConnection() {
	try {
		conn.close();
	}catch (SQLException e) {
		e.printStackTrace();
	}
}
}
