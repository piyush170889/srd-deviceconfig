package com.srd.deviceconfig.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DbUtil {

	private static Connection connection = null;

	public static Connection getConnection() {
		if (connection != null) {
			return connection;
		} else {
			try {
				String driver = "com.mysql.jdbc.Driver";
				String url = "jdbc:mysql://localhost:3306/deviceconfig";
				String user = "root";
				String password = "root";
				Class.forName(driver);
				connection = DriverManager.getConnection(url, user, password);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return connection;
		}
	}

	public boolean executeQuery(String sql) {

		boolean isExecuted = false;

		try {

			Connection cn = getConnection();
			PreparedStatement ps = null;

			ps = cn.prepareStatement(sql);
			ps.execute();
			ps.close();

			isExecuted = true;
		} catch (Exception e) {
			e.printStackTrace();
		}

		return isExecuted;
	}

}
