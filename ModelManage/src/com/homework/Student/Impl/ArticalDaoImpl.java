package com.homework.Student.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.homework.Student.DB.ConnectionManager;
import com.homework.Student.Dao.ArticalDao;
import com.homework.Student.entity.Artical;

public class ArticalDaoImpl implements ArticalDao {

	public void addArticleInfo(Artical artical) {
		Connection connection = ConnectionManager.getConnection();
		String addSQL = "insert into artical([stuId],[artical_name],[qikan],[qikan_id],[note])"
				+ "values(?,?,?,?,?)";
		PreparedStatement pstmt = null;
		try {
			pstmt = connection.prepareStatement(addSQL);
			pstmt.setInt(1, artical.getStuId());
			pstmt.setString(2, artical.getArticalName());
			pstmt.setString(3, artical.getQikan());
			pstmt.setString(4, artical.getQikanId());
			pstmt.setString(5, artical.getNote());
			int num = pstmt.executeUpdate();
			if (num == 1) {
				System.out.println("插入成功！");

			} else {
				System.out.println("插入失败！");

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			ConnectionManager.closePrepareStatement(pstmt);
			ConnectionManager.closeConnection(connection);
		}

	}

	@Override
	public void deleteArticleInfo(int stuId, String articalName) {
		Connection connection = ConnectionManager.getConnection();
		String deleteSQL = "delete from artical where artical_name=? and stuId=?";
		PreparedStatement pstmt = null;
		try {
			pstmt = connection.prepareStatement(deleteSQL);
			pstmt.setString(1, articalName);
			pstmt.setInt(2, stuId);
			int num = pstmt.executeUpdate();
			System.out.println("删除数据的行数为：" + num + "行。");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			ConnectionManager.closePrepareStatement(pstmt);
			ConnectionManager.closeConnection(connection);
		}

	}

	@Override
	public Artical queryArticleInfo(String articalName) {
		Connection connection = ConnectionManager.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Artical artical = null;
		try {
			pstmt = connection
					.prepareStatement("select * from artical where artical_name=?");
			pstmt.setString(1, articalName);
			rs = pstmt.executeQuery();
			// System.out.println("11111111111111111");
			if (rs.next()) {
				artical = new Artical();
				artical.setStuId(rs.getInt(1));
				artical.setArticalName(rs.getString(2));
				artical.setQikan(rs.getString(3));
				artical.setQikanId(rs.getString(4));
				artical.setNote(rs.getString(5));

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			ConnectionManager.closeResultSet(rs);
			ConnectionManager.closePrepareStatement(pstmt);
			ConnectionManager.closeConnection(connection);
		}

		return artical;
	}

	@Override
	public void updateArticleInfo(Artical artical) {
		Connection connection = ConnectionManager.getConnection();
		PreparedStatement pstmt = null;// 声明预处理对象
		String updateSQL = "update artical set [stuID]=?, [artical_name]=?,[qikan]=?,[qikan_id]=?,[note]=?";
		try {
			pstmt = connection.prepareStatement(updateSQL);
			pstmt.setInt(1, artical.getStuId());
			pstmt.setString(2, artical.getArticalName());
			pstmt.setString(3, artical.getQikan());
			pstmt.setString(4, artical.getQikanId());
			pstmt.setString(5, artical.getNote());
			pstmt.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			ConnectionManager.closePrepareStatement(pstmt);
			ConnectionManager.closeConnection(connection);
		}
	}

}
