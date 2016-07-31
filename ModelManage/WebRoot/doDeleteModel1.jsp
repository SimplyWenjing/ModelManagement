<%@ page language="java" contentType="text/html; charset=GBK"%>
<%@page import="com.homework.Model.entity.User"%>
<%@page import="com.homework.Model.Dao.ModelDao"%>
<%@page import="com.homework.Model.Impl.ModelDaoImpl"%>
<%@page import="com.homework.Model.entity.Model"%>
<html>
	<head>
		<title>查询模型</title>
	</head>
	<style type="text/css">
#container {
	margin: 0 auto;
	width: 752px;
	height: 560px;
	text-align: left;
	background: #F0F0F0;
	font-size: 12px
}

#content {
	margin: 0 auto;
	width: 750px;
	border: 0px;
	float: left;
	height: 540px;
	border: #E4E4E4 1px solid
}

#queryStyle {
	border: solid 0px #CCCCCC;
	width: 504px;
	height: 60px;
	line-height: 60px;
	margin: 0 auto;
	background: #E2E2E2F
}

#tablecolor {
	background: #FFF;
	font-size: 12px;
}
</style>
	<%
		request.setCharacterEncoding("GBK");
		String modelId = request.getParameter("modelId");
		//String modelName = request.getParameter("modelName");
		int modelid = Integer.parseInt(modelId);
		ModelDao modelDao = new ModelDaoImpl();
		Model model = modelDao.queryModelByModelId(modelid);
		//System.out.println(model.getModelName()+"============================");
	%>
	<body>
		<div id="container">
			<div id="content">


				<table width="504" border="0" height="271" align="center"
					id="tablecolor">
					<tr>
						<td height="38">
							模型信息
							<hr style="height: 2px;">
						</td>
					</tr>
					<tr>
						<td height="31">
							模型编号：
							<label><%=model.getModelId()%></label>
						</td>
					</tr>
					<tr>
						<td height="28">
							模型名称：
							<label><%=model.getModelName()%></label>
						</td>
					</tr>
					<tr>
						<td height="27">
							模型类型：
							<label><%=model.getModelType()%></label>
						</td>
					</tr>
					<tr>
						<td height="29">
							模型存放地址：
							<label><%=model.getModelAdr()%></label>
						</td>
					</tr>
					<tr>
						<td height="29">
							模型创建时间：
							<label><%=model.getCreateTime()%></label>
						</td>
					</tr>
					<tr>
						<td height="27">
							模型修改时间：
							<label><%=model.getModifyTime()%></label>
						</td>
					</tr>
					<tr>
						<td height="31">
							模型描述信息：
							<label><%=model.getDescribe()%></label>
						</td>
					</tr>
				</table>
				<form action="doDeleteModel.jsp" method="post">
					<div id="queryStyle" align="center">


						<input type="submit" name="submit" id="submit"
							value="&nbsp;确&nbsp;定&nbsp;删&nbsp;除&nbsp">

					</div>
				</form>




			</div>


		</div>
	</body>
</html>
