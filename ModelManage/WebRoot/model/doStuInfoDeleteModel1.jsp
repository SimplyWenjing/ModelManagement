<%@ page language="java" contentType="text/html; charset=gbk"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.homework.Model.entity.User"%>
<%@page import="com.homework.Student.Dao.StudentDao"%>
<%@page import="com.homework.Student.Impl.StudentDaoImpl"%>

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
		StudentDao stuDao = new StudentDaoImpl();
		stuDao.deleteStuInfo(stuId);
		out
				.print("<script language='javascript'>alert('É¾³ý³É¹¦');location='successStuInfoDeleteModel.jsp'</script>");
%>
<%
	}
%>
