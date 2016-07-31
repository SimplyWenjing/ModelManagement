<%@ page language="java" contentType="text/html; charset=gbk"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.homework.Student.Dao.StudentDao"%>
<%@page import="com.homework.Student.Impl.StudentDaoImpl"%>
<%@page import="com.homework.Student.entity.Student"%>
<%@page import="com.homework.Model.entity.User"%>

<%
	User user = (User) session.getAttribute("userName");

	if (user == null) {
		response.sendRedirect("loginform.jsp");
%>

<%
	} else {
		request.setCharacterEncoding("GBK");
		//String stuid=request.getParameter("stuId");
		//int stuId=Integer.parseInt(stuid);
		String stuName = request.getParameter("stuName");
		String Sex = request.getParameter("sex");
		String Marriage = request.getParameter("marriage");
		String jiguan = request.getParameter("jiguan");
		String birthday = request.getParameter("birthday");
		String ruxueTime = request.getParameter("ruxueTime");
		String teacherName = request.getParameter("teacherName");
		String peiyangStyle = request.getParameter("peiyangStyle");
		String yuanxi = request.getParameter("yuanxi");
		String major = request.getParameter("major");
		String identify = request.getParameter("identify");
		String zhengzhi = request.getParameter("zhengzhi");

		StudentDao stuDao = new StudentDaoImpl();
		Student student = new Student(stuName, Sex, Marriage, jiguan,
				birthday, ruxueTime, teacherName, peiyangStyle, yuanxi,
				major, identify, zhengzhi);
		stuDao.addStuInfo(student);
		//modelDao.addModel(model);
		response.sendRedirect("successStuAddModel.jsp");
%>
<%
	}
%>
