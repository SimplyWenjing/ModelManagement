package com.homework.Model.DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/*
 * 建立类实现数据库的连接、对象、结果集和数据库的关闭
 */
public class ConnectionManager_Model {
	public static final String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	public static final String url = "jdbc:sqlserver://localhost:1433;DatabaseName=ModelManage";
	public static final String user = "sa";
	public static final String pwd = "123456";

	/**
	 * 建立数据库连接操作，返回connection类
	 */
	public static Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName(driver);
			System.out.println("加载驱动成功！");
			conn = DriverManager.getConnection(url, user, pwd);
			System.out.println("数据库连接成功");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;

	}

	/**
	 * 关闭结果集
	 */
	public static void closeResultSet(ResultSet rs) {

		try {
			if (rs != null) {
				rs.close();
				rs = null;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * 关闭Statement对象
	 */
	public static void closeStatement(Statement stmt) {
		if (stmt != null) {
			try {
				stmt.close();
				stmt = null;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
	}

	/**
	 * 关闭PrepareStatement对象
	 */
	public static void closePrepareStatement(PreparedStatement pstmt) {
		if (pstmt != null) {
			try {
				pstmt.close();
				pstmt = null;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
	}

	/**
	 * 关闭数据库连接
	 */
	public static void closeConnection(Connection conn) {
		try {
			if (conn != null && (!conn.isClosed())) {
				conn.close();

			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
