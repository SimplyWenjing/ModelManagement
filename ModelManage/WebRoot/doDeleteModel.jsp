<%@ page language="java" contentType="text/html; charset=gbk"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.homework.Model.Dao.ModelDao"%>
<%@page import="com.homework.Model.Impl.ModelDaoImpl"%>
<%@page import="com.homework.Model.entity.Model"%>
<%@page import="com.homework.Model.entity.User"%>

<%
	User user = (User) session.getAttribute("userName");

	if (user == null) {
		response.sendRedirect("loginform.jsp");
%>

<%
	} else {
		request.setCharacterEncoding("GBK");
		String modelid = request.getParameter("modelId");
		//String modelName = request.getParameter("modelName");
		int modelId = Integer.parseInt(modelid);
		ModelDao modelDao = new ModelDaoImpl();
		modelDao.deleteModel(modelId);
		out
				.print("<script language='javascript'>alert('É¾³ý³É¹¦');location='successDeleteModel.jsp'</script>");
%>
<%
	}
%>
