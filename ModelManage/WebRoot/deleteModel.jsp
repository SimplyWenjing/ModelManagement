<%@ page language="java" contentType="text/html; charset=GBK"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.homework.Model.entity.User"%>
<%@page import="com.homework.Model.Dao.UserDao"%>
<%@page import="com.homework.Model.Impl.UserDaoImpl"%>
<%@page import="com.homework.Model.Impl.ModelDaoImpl"%>
<%@page import="com.homework.Model.Dao.ModelDao"%>
<%@page import="com.homework.Model.entity.Model"%>
<!doctype html>
<html>
	<head>
		<title>ɾ��ģ��</title>
	</head>
	<style type="text/css">
<!--
@import url("css/admin.css");

* {
	margin: 0 auto;
	padding: 3px 0px 0px 0px;
}

body {
	text-align: center;
	font-size: 14px
}

ul,li {
	list-style: none
}

a {
	text-decoration: none;
	color: #000;
}

a:hover {
	text-decoration: ;
	color: #090;
}

#container {
	margin: 0 auto;
	width: 752px;
	height: 760px;
	text-align: center;
	border: #CCC 1px solid;
}

#content {
	margin: 0 auto;
	width: 750px;
	border: 0px;
	float: left;
	height: 540px;
}

#breadcrumb {
	margin: 20px;
	font: 600 12px/ 24px ����;
}

#p {
	padding: 0;
	margin: 0px;
}
</style>
	<body>
		<div id="container">

			<div id="content">
				<form action="doDeleteModel.jsp" method="post">
					<div id="queryStyle" align="center">

						<label for="textfield6">
							������Ҫɾ��ģ�͵ı�� ��
						</label>
						<input type="text" name="modelId" id="modelId">
						<input type="submit" name="submit" id="submit"
							value="&nbsp;ȷ&nbsp;��&nbsp;">

					</div>
				</form>


				<font size="3"> <%
 	System.out
 			.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
 	//  ��֤�Ƿ��ѵ�¼����δ��¼����ת��loginform.jsp. 
 	User user = (User) session.getAttribute("userName");
 	if (user.getUserName() == null) {
 		response.sendRedirect("loginform.jsp");
 		System.out
 				.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
 %> </font>
				<font size="3"> <%
 	} else {
 		System.out
 				.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
 		UserDao uDao = new UserDaoImpl();
 		User user1 = new User();
 		user1 = uDao.getUserByUserName(user.getUserName());
 %> </font>


				<div id="wenzi1">

					<font size="3"> <%
 	//System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"); 
 		//�������ݿ⣬��ȡ����Student����; 
 		ModelDao modelDao = new ModelDaoImpl();
 		List<Model> models = new ArrayList<Model>();
 		models = modelDao.getAllModels();
 		//  System.out.println(students);
 %> </font>

					<div id="container" style="width: 750px;">
						<table width="730px" id="table">

							<tr bgcolor="#dddddd">
								<th width="20%">
									<font size="2"><br>ģ�ͱ��<br> <br> </font>
								</th>
								<th width="40%">
									<font size="2"> ģ������ </font>
								</th>
								<th width="40%">
									<font size="2"> ģ������ </font>
								</th>

							</tr>
							<%
								for (int i = 0; i < models.size(); ++i) {
										//System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"); 
										Model model = (Model) models.get(i);

										System.out.println(model.getModelName());
							%>
							<tr bgcolor="#eeeeee" height="20px">
								<td>
									<font size="2"><%=model.getModelId()%></font>
									<br>
								</td>
								<td>
									<font size="2"><%=model.getModelName()%></font>
									<br>
								</td>
								<td>
									<font size="2"><%=model.getModelType()%></font>
									<br>
								</td>
							</tr>
							<%
								}//ѭ������
							%>


						</table>
					</div>

					<%
						System.out
									.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
						}
					%>
				</div>


			</div>
		</div>

	</body>
</html>