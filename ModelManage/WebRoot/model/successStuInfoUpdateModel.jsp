<%@ page language="java" contentType="text/html; charset=GBK"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.homework.Model.entity.User"%>
<%@page import="com.homework.Model.Dao.UserDao"%>
<%@page import="com.homework.Model.Impl.UserDaoImpl"%>
<%@page import="com.homework.Student.Dao.StudentDao"%>
<%@page import="com.homework.Student.Impl.StudentDaoImpl"%>
<%@page import="com.homework.Student.entity.Student"%>

<html>
	<head>
		<title>����ѧ��������Ϣģ�ͳɹ�</title>
	</head>
	<style type="text/css">
<!--
@import url("css/admin.css");

* {
	margin: 0 auto;
	padding: 0px 0px 0px 0px;
}

body {
	text-align: center;
	font-size: 12px
}

ul,li {
	list-style: none
}

a {
	text-decoration: none;
	color: #000;
}

a:hover {
	color: #090;
}

#container {
	margin: 0 auto;
	width: 750px;
	height: 760px;
}

#content {
	margin: 0 auto;
	width: 750px;
	border: 0px;
	height: 540px;
}

#p {
	padding: 0;
	margin: 0px;
}

#table {
	text-align: center;
}
</style>
	<body>
		<div id="container">

			<div id="content">

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
 		StudentDao stuDao = new StudentDaoImpl();
 		List<Student> students = new ArrayList<Student>();
 		students = stuDao.getAllStuInfo();
 %> </font>
					<div id="header" style="width: 750px; height: 50px;">
						<font size="3"><br> </font><font face="΢���ź�" size="3">�޸ĳɹ�</font><strong><font
							face="΢���ź�" size="5"><font size="3">&nbsp;&nbsp;&nbsp;</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font
								size="2">&nbsp; </font> </font> </strong><font size="2">�� ǰ �� ¼��</font><font
							size="2" color="red"><strong><font
								color="#ff8000"><%=user1.getUserName()%></font> </strong> </font><font size="2">
							&nbsp;&nbsp; </font><font size="2" color="#ffff00"><a
							href="doLogout.jsp"><b>�˳�</b> </a> </font>
						<br>
						<br>
						<br>
						<a href="doLogout.jsp"> </a>
					</div>
					<div id="container" style="width: 750px;">
						<table width="730px" id="table">

							<tr bgcolor="#dddddd">
								<th width="11%">
									<font size="2">ѧ�ţ�</font>
								</th>
								<th width="11%">
									<font size="2">������ </font>
								</th>
								<th width="11%">
									<font size="2">�Ա� </font>
								</th>
								<th width="11%">
									<font size="2">��� </font>
								</th>
								<th width="11%">
									<font size="2">���᣺ </font>
								</th>
								<th width="11%">
									<font size="2">��ʦ�� </font>
								</th>
								<th width="11%">
									<font size="2">Ժϵ�� </font>
								</th>
								<th width="11%">
									<font size="2">רҵ�� </font>
								</th>
								<th width="11%">
									<font size="2">��ѧ�� </font>
								</th>

							</tr>
							<%
								for (int i = 0; i < students.size(); ++i) {
										//System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"); 
										Student student = (Student) students.get(i);
										//System.out.println(model.getModelName());
							%>
							<tr bgcolor="#eeeeee" height="35px">
								<td>
									<font size="2"><%=student.getStuId()%></font>

								</td>
								<td>
									<font size="2"><%=student.getStuName()%></font>
								</td>
								<td>
									<font size="2"><%=student.getSex()%></font>
								</td>
								<td>
									<font size="2"><%=student.getMajoy()%></font>
								</td>
								<td>
									<font size="2"><%=student.getJiguan()%></font>
								</td>
								<td>
									<font size="2"><%=student.getTeacherName()%></font>
								</td>
								<td>
									<font size="2"><%=student.getDepartment()%></font>
								</td>
								<td>
									<font size="2"><%=student.getMajoy()%></font>
								</td>
								<td>
									<font size="2"><%=student.getRuxueTime()%></font>
								</td>

							</tr>
							<%
								}//ѭ������
							%>


						</table>
					</div>

					<%
						}
					%>
				</div>


			</div>

		</div>

	</body>
</html>