package com.homework.Student.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.homework.Student.DB.ConnectionManager;
import com.homework.Student.Dao.StudentDao;
import com.homework.Student.entity.Student;

public class StudentDaoImpl implements StudentDao {

	/**
	 * 添加学生信息
	 */
	public void addStuInfo(Student student) {
		Connection connection = ConnectionManager.getConnection();
		String addSQL = "insert into studentInfo([stu_name],[sex],[marriage],[jiguan],"
				+ "[birthday],[ruxueTime],[teacher_name],[peiyang_style],[department],[major],[identify_number],[zhengzhi])"
				+ "values(?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement pstmt = null; // 声明预处理对象
		try {
			pstmt = connection.prepareStatement(addSQL);
			// pstmt.setInt(1, student.getStuId());
			pstmt.setString(1, student.getStuName());
			pstmt.setString(2, student.getSex());
			pstmt.setString(3, student.getMarriage());
			pstmt.setString(4, student.getJiguan());
			pstmt.setString(5, student.getBirthday());
			pstmt.setString(6, student.getRuxueTime());
			pstmt.setString(7, student.getTeacherName());
			pstmt.setString(8, student.getPeiyangStyle());
			pstmt.setString(9, student.getDepartment());
			pstmt.setString(10, student.getMajoy());
			pstmt.setString(11, student.getIdentifyNumber());
			pstmt.setString(12, student.getZhengzhi());
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

	/**
	 * 删除学生信息
	 */
	public void deleteStuInfo(int stuId) {
		Connection connection = ConnectionManager.getConnection();
		String deleteSQL = "delete from studentInfo where stu_id=?  ";
		PreparedStatement pstmt = null;
		try {
			pstmt = connection.prepareStatement(deleteSQL);
			pstmt.setInt(1, stuId);
			int num = pstmt.executeUpdate();
			System.out.println("删除数据的行数为：" + num + "行。");

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			ConnectionManager.closePrepareStatement(pstmt);
			ConnectionManager.closeConnection(connection);
		}

	}

	/**
	 * 按照学号查找学生信息
	 */
	public Student queryStuInfo(int stuId) {
		Connection connection = ConnectionManager.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Student student = null;
		try {
			pstmt = connection
					.prepareStatement("select * from studentInfo where stu_id=?");
			pstmt.setInt(1, stuId);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				student = new Student();
				student.setStuId(rs.getInt(1));
				student.setStuName(rs.getString(2));
				student.setSex(rs.getString(3));
				student.setMarriage(rs.getString(4));
				student.setJiguan(rs.getString(5));
				student.setBirthday(rs.getString(6));
				student.setRuxueTime(rs.getString(7));
				student.setTeacherName(rs.getString(8));
				student.setPeiyangStyle(rs.getString(9));
				student.setDepartment(rs.getString(10));
				student.setMajoy(rs.getString(11));
				student.setIdentifyNumber(rs.getString(12));
				student.setZhengzhi(rs.getString(13));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			ConnectionManager.closeResultSet(rs);
			ConnectionManager.closePrepareStatement(pstmt);
			ConnectionManager.closeConnection(connection);

		}
		return student;
	}

	/**
	 * 更新学生信息
	 */
	public void updateStuInfo(Student student) {
		Connection connection = ConnectionManager.getConnection();
		PreparedStatement pstmt = null;// 声明预处理对象
		String updateSQL = "update studentInfo set stu_name=?,sex=?,marriage=?,jiguan=?,birthday=?,ruxueTime=?,teacher_name=?,peiyang_style=?,department=?,major=?,identify_number=?,zhengzhi=? where stu_id=?";
		try {
			pstmt = connection.prepareStatement(updateSQL);

			pstmt.setString(1, student.getStuName());
			pstmt.setString(2, student.getSex());
			pstmt.setString(3, student.getMarriage());
			pstmt.setString(4, student.getJiguan());
			pstmt.setString(5, student.getBirthday());
			pstmt.setString(6, student.getRuxueTime());
			pstmt.setString(7, student.getTeacherName());
			pstmt.setString(8, student.getPeiyangStyle());
			pstmt.setString(9, student.getDepartment());
			pstmt.setString(10, student.getMajoy());
			pstmt.setString(11, student.getIdentifyNumber());
			pstmt.setString(12, student.getZhengzhi());
			pstmt.setInt(13, student.getStuId());
			pstmt.execute();
			System.out.println("111111111111111111111111111111111");

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			ConnectionManager.closePrepareStatement(pstmt);
			ConnectionManager.closeConnection(connection);

		}

	}

	/**
	 * 查找所有学生信息
	 */
	public List<Student> getAllStuInfo() {
		Connection con = ConnectionManager.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Student> students = new ArrayList<Student>();
		try {
			pstmt = con
					.prepareStatement("select * from studentInfo order by stu_id");
			rs = pstmt.executeQuery();
			while (rs.next()) {

				Student student = new Student();
				student.setStuId(rs.getInt(1));
				student.setStuName(rs.getString(2));
				student.setSex(rs.getString(3));
				student.setMarriage(rs.getString(4));
				student.setJiguan(rs.getString(5));
				student.setBirthday(rs.getString(6));
				student.setRuxueTime(rs.getString(7));
				student.setTeacherName(rs.getString(8));
				student.setPeiyangStyle(rs.getString(9));
				student.setDepartment(rs.getString(10));
				student.setMajoy(rs.getString(11));
				student.setIdentifyNumber(rs.getString(12));
				student.setZhengzhi(rs.getString(13));
				students.add(student);

			}

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			ConnectionManager.closeResultSet(rs);
			ConnectionManager.closePrepareStatement(pstmt);
			ConnectionManager.closeConnection(con);
		}
		return students;

	}
}
