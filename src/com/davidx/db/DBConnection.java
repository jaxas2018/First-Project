package com.davidx.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	
	public static Connection getMysqlConnection() throws ClassNotFoundException {
		String url="jdbc:mysql://localhost:3306/jdbc";
		String username="root";
		String password="admin";
		Connection conn=null;
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(url,username,password);
			System.out.println("Connection successful!");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
	
}


