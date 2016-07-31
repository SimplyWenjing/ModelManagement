package com.homework.Model.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.homework.Model.DB.ConnectionManager_Model;
import com.homework.Model.Dao.UserDao;
import com.homework.Model.entity.User;

public class UserDaoImpl implements UserDao {

	@Override
	public User getUserByUserName(String uName) {
		Connection connection = ConnectionManager_Model.getConnection();
		PreparedStatement pstmt = null; // 声明预处理对象
		ResultSet rs = null;
		User user = null;
		String findSQL = "select * from user_table where userName=?";
		try {
			pstmt = connection.prepareStatement(findSQL);
			pstmt.setString(1, uName);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				user = new User();
				user.setUserId(rs.getInt(1));
				user.setUserName(rs.getString(2));
				user.setUserPwd(rs.getString(3));
				System.out.println(user.getUserName());

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			ConnectionManager_Model.closeResultSet(rs);
			ConnectionManager_Model.closePrepareStatement(pstmt);
			ConnectionManager_Model.closeConnection(connection);

		}
		return user;
	}

}
