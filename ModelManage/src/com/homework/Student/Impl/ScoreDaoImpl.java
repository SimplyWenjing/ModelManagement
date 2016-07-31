package com.homework.Student.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.homework.Student.DB.ConnectionManager;
import com.homework.Student.Dao.ScoreDao;
import com.homework.Student.entity.Score;

public class ScoreDaoImpl implements ScoreDao {

	public void addScoreInfo(Score score) {
		Connection connection = ConnectionManager.getConnection();
		String addSQL = "insert into score([stu_id],[course_id],[course_name],[xuefen],[score],[level])"
				+ "values(?,?,?,?,?,?)";
		PreparedStatement pstmt = null; // 声明预处理对象
		try {
			pstmt = connection.prepareStatement(addSQL);
			pstmt.setInt(1, score.getStuId());
			pstmt.setInt(2, score.getCourseId());
			pstmt.setString(3, score.getCourseName());
			pstmt.setInt(4, score.getXuefen());
			pstmt.setInt(5, score.getScore());
			pstmt.setString(6, score.getLevel());
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
	public void deleteScoreInfo(int stuId, int courseId) {
		Connection connection = ConnectionManager.getConnection();
		String deleteSQL = "delete from score where stu_id=? and course_id=?";
		PreparedStatement pstmt = null;
		try {
			pstmt = connection.prepareStatement(deleteSQL);
			pstmt.setInt(1, stuId);
			pstmt.setInt(2, courseId);
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
	public Score queryScoreInfo(int stuId) {
		Connection connection = ConnectionManager.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Score score = null;
		try {
			pstmt = connection
					.prepareStatement("select * from score where stu_id=?");
			pstmt.setInt(1, stuId);
			rs = pstmt.executeQuery();
			System.out.println("11111111111111111111");
			if (rs.next()) {
				score = new Score();
				score.setStuId(rs.getInt(1));
				score.setCourseId(rs.getInt(2));
				score.setCourseName(rs.getString(3));
				score.setXuefen(rs.getInt(4));
				score.setScore(rs.getInt(5));
				score.setLevel(rs.getString(6));
			}

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			ConnectionManager.closeResultSet(rs);
			ConnectionManager.closePrepareStatement(pstmt);
			ConnectionManager.closeConnection(connection);

		}
		return score;
	}

	@Override
	public void updateScoreInfo(Score score) {
		Connection connection = ConnectionManager.getConnection();
		PreparedStatement pstmt = null;// 声明预处理对象
		String updateSQL = "update score set  [stu_id]=?,[course_id]=?,[course_name]=?,[xuefen]=?,[score]=?,[level]=?";
		try {
			pstmt = connection.prepareStatement(updateSQL);
			pstmt.setInt(1, score.getStuId());
			pstmt.setInt(2, score.getCourseId());
			pstmt.setString(3, score.getCourseName());
			pstmt.setInt(4, score.getXuefen());
			pstmt.setInt(5, score.getScore());
			pstmt.setString(6, score.getLevel());
			pstmt.execute();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			ConnectionManager.closePrepareStatement(pstmt);
			ConnectionManager.closeConnection(connection);
		}

	}

}
