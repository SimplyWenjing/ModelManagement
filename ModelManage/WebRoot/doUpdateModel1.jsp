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
		String modelid = request.getParameter("modelid");
		String modelName = request.getParameter("modelName");
		String modelType = request.getParameter("modeltype");
		//String file = request.getParameter("file");//获取文件名 
		//String pString = "C:\\Users\\DELL\\Desktop\\upload\\" + file;
		//System.out.println(pString
		//+ "888888888888888888888888888888888888");
		String createDate = request.getParameter("creatDate");
		String modityDate = request.getParameter("modifyDate");
		String describeNote = request.getParameter("describe");
		int modelId = Integer.parseInt(modelid);
		ModelDao modelDao = new ModelDaoImpl();
		Model model = new Model(modelId, modelName, modelType,
				createDate, modityDate, describeNote);
		modelDao.updateModel(model);
		response.sendRedirect("successUpdateModel.jsp");
%>
<%
	}
%>
