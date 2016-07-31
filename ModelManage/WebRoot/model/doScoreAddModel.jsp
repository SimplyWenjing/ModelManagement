<%@ page language="java" contentType="text/html; charset=gbk"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.homework.Student.Dao.StudentDao"%>
<%@page import="com.homework.Student.Impl.StudentDaoImpl"%>
<%@page import="com.homework.Student.entity.Student"%>
<%@page import="com.homework.Model.entity.User"%>
<%@page import="com.homework.Student.Dao.ScoreDao"%>
<%@page import="com.homework.Student.Impl.ScoreDaoImpl"%>
<%@page import="com.homework.Student.entity.Score"%>

<%
	User user = (User) session.getAttribute("userName");

	if (user == null) {
		response.sendRedirect("loginform.jsp");
%>

<%
	} else {
		request.setCharacterEncoding("GBK");

		String stuid = request.getParameter("stuId");
		int stuId = Integer.parseInt(stuid);
		String courseid = request.getParameter("courseId");
		int courseId = Integer.parseInt(courseid);
		String coursename = request.getParameter("courseName");
		String xuefen = request.getParameter("credit");
		int credit = Integer.parseInt(xuefen);
		String score = request.getParameter("score");
		int Score = Integer.parseInt(score);
		String level = request.getParameter("level");

		ScoreDao scoreDao = new ScoreDaoImpl();
		Score score2 = new Score(stuId, courseId, coursename, credit,
				Score, level);
		scoreDao.addScoreInfo(score2);
		response.sendRedirect("successScoreAddModel.jsp");
%>
<%
	}
%>
