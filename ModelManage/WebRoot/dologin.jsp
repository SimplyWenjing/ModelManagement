<%@ page language="java" contentType="text/html; charset=gbk"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.homework.Model.Dao.UserDao"%>
<%@page import="com.homework.Model.Impl.UserDaoImpl"%>
<%@page import="com.homework.Model.entity.User"%>


<%
	request.setCharacterEncoding("GBK");
	String uname = request.getParameter("username");
	String passwd = request.getParameter("password");
	System.out.println(uname);
	UserDao userDao = new UserDaoImpl();
	User user = new User();
	user = userDao.getUserByUserName(uname);
	if (user == null) {
		out
				.print("<script language='javascript'>alert('用户名或者密码错误');location='loginform.jsp'</script>");

		/*完成登录验证：验证成功跳转到home.jsp；验证失败跳转到loginform.jsp*/
%>
<%
	} else {
		session.setAttribute("userName", user);
		response.sendRedirect("index.html");
%>
<%
	}
%>
