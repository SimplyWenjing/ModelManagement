<%@ page language="java" contentType="text/html; charset=gbk"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.homework.Student.Dao.StudentDao"%>
<%@page import="com.homework.Student.Impl.StudentDaoImpl"%>
<%@page import="com.homework.Student.entity.Student"%>
<%@page import="com.homework.Model.entity.User"%>
<%@page import="com.homework.Student.Dao.ArticalDao"%>
<%@page import="com.homework.Student.Impl.ArticalDaoImpl"%>
<%@page import="com.homework.Student.entity.Artical"%>

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
		String articalName = request.getParameter("articalName");
		String qikan = request.getParameter("qikan");
		String qikankanhao = request.getParameter("qikankanhao");
		String note = request.getParameter("note");
		ArticalDao articalDao = new ArticalDaoImpl();
		Artical artical = new Artical(stuId, articalName, qikan,
				qikankanhao, note);
		articalDao.addArticleInfo(artical);
		response.sendRedirect("successArticalAddModel.jsp");
%>
<%
	}
%>
