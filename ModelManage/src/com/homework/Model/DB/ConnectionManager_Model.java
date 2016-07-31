package com.homework.Model.DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/*
 * ������ʵ�����ݿ�����ӡ����󡢽���������ݿ�Ĺر�
 */
public class ConnectionManager_Model {
	public static final String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	public static final String url = "jdbc:sqlserver://localhost:1433;DatabaseName=ModelManage";
	public static final String user = "sa";
	public static final String pwd = "123456";

	/**
	 * �������ݿ����Ӳ���������connection��
	 */
	public static Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName(driver);
			System.out.println("���������ɹ���");
			conn = DriverManager.getConnection(url, user, pwd);
			System.out.println("���ݿ����ӳɹ�");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;

	}

	/**
	 * �رս����
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
	 * �ر�Statement����
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
	 * �ر�PrepareStatement����
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
	 * �ر����ݿ�����
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
