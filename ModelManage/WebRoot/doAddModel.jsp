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
		//String modelid=request.getParameter("modelid");
		String modelName = request.getParameter("modelName");
		String modelType = request.getParameter("modelType");
		String file = request.getParameter("myfile");//获取文件名 
		String createDate = request.getParameter("creatDate");
		String modityDate = request.getParameter("modifyDate");
		String describeNote = request.getParameter("describe");
		if (modelType.equals("录入模型")) {
			String pString = "D:\\ModelManage\\Insert\\" + file;
			System.out.println(pString
					+ "============================================");
			ModelDao modelDao = new ModelDaoImpl();
			Model model = new Model(modelName, modelType, pString,
					createDate, modityDate, describeNote);
			modelDao.addModel(model);
			response.sendRedirect("successAddModel.jsp");
		}
		if (modelType.equals("删除模型")) {
			String pString = "D:\\ModelManage\\Delete\\" + file;
			System.out.println(pString
					+ "============================================");
			ModelDao modelDao = new ModelDaoImpl();
			Model model = new Model(modelName, modelType, pString,
					createDate, modityDate, describeNote);
			modelDao.addModel(model);
			response.sendRedirect("successAddModel.jsp");
		}
		if (modelType.equals("查询模型")) {
			String pString = "D:\\ModelManage\\Query\\" + file;
			System.out.println(pString
					+ "============================================");
			ModelDao modelDao = new ModelDaoImpl();
			Model model = new Model(modelName, modelType, pString,
					createDate, modityDate, describeNote);
			modelDao.addModel(model);
			response.sendRedirect("successAddModel.jsp");

		}
		if (modelType.equals("更新模型")) {
			String pString = "D:\\ModelManage\\Update\\" + file;
			System.out.println(pString
					+ "============================================");
			ModelDao modelDao = new ModelDaoImpl();
			Model model = new Model(modelName, modelType, pString,
					createDate, modityDate, describeNote);
			modelDao.addModel(model);
			response.sendRedirect("successAddModel.jsp");
		}
%>
<%
	}
%>
