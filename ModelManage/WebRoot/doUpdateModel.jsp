<%@ page language="java" contentType="text/html; charset=GBK"%>
<%@page import="com.homework.Model.entity.User"%>
<%@page import="com.homework.Model.Dao.ModelDao"%>
<%@page import="com.homework.Model.Impl.ModelDaoImpl"%>
<%@page import="com.homework.Model.entity.Model"%>
<html>
	<head>
		<title>更新模型</title>
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
}
</style>
	<%
		request.setCharacterEncoding("GBK");
		String modelName = request.getParameter("modelId");
		int modelId = Integer.parseInt(modelName);
		ModelDao modelDao = new ModelDaoImpl();
		Model model = modelDao.queryModelByModelId(modelId);
		//System.out.println(model.getModelName()+"============================");
	%>
	<body>
		<div id="container">
			<div id="content">
				<form action="doUpdateModel1.jsp" method="post">
					<table width="459" border="0" align="center">
						<tr>
							<td width="453">
								<font size="2"><label for="textfield"> 
									模 型 编 号 ： 
								</label><input type="text" name="modelid" id="modelid" value="<%=model.getModelId()%>" readonly></font>
								
							</td>

						</tr>
						<tr>
							<td colspan="2">
								<font size="2"><label for="textfield6"> 
									模 型 名 称 ： 
								</label><input type="text" name="modelName" id="modelName" value="<%=model.getModelName()%>"></font>
								
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<font size="2"><label for="textfield3"> 
									模 型 类 型 ： 
								</label><input type="text" name="modeltype" id="modeltype" value="<%=model.getModelType()%>"></font>
								
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<font size="2"><label for="fileField"> 
									模型文件路径： 
								</label><input type="text" name="fileField" id="fileField" value="<%=model.getModelAdr()%>"></font>
								
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<font size="2"><label for="textfield4"> 
									模型创建日期： 
								</label><input type="text" name="creatDate" id="createDate" value="<%=model.getCreateTime()%>"></font>
								
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<font size="2"><label for="textfield5"> 
									模型修改日期： 
								</label><input type="text" name="modifyDate" id="modifyDate" value="<%=model.getModifyTime()%>"></font>
								
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<font size="2"><label for="textarea"> 
									模型描述信息： 
								</label><textarea name="describe" id="describe"><%=model.getDescribe()%></textarea></font>
								
							</td>
						</tr>
						<tr>
							<td colspan="2" align="justify">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="submit" name="submit" id="submit"
									value="&nbsp;修&nbsp;改&nbsp;">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
								<input type="reset" name="reset" id="reset"
									value="&nbsp;重&nbsp;置&nbsp;">
							</td>
						</tr>
					</table>
				</form>




			</div>


		</div>
	</body>
</html>
