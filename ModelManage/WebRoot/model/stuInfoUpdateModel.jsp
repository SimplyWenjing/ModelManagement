<%@ page language="java" contentType="text/html; charset=GBK"%>
<%@page import="com.homework.Model.entity.User"%>
<%@page import="com.homework.Model.Dao.UserDao"%>
<%@page import="com.homework.Model.Impl.UserDaoImpl"%>
<%@page import="com.homework.Student.Dao.StudentDao"%>
<%@page import="com.homework.Student.Impl.StudentDaoImpl"%>
<%@page import="java.util.List"%>
<%@page import="com.homework.Student.entity.Student"%>
<%@page import="java.util.ArrayList"%>
<html>
	<head>
		<title>����ѧ��������Ϣģ��</title>
	</head>
	<style type="text/css">
<!--
@import url("css/admin.css");

* {
	margin: 0 auto;
	padding: 10px 0px 0px 0px;
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

#center {
	text-align: center;
}
</style>
	<body>
		<div id="container">

			<div id="content">
				<form action="doStuInfoUpdateModel.jsp">
					<div id="queryStyle" align="center">

						<label for="textfield6">
							������Ҫ����ѧ����ѧ�� ��
						</label>
						<input type="text" name="stuId" id="stuId">
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
 %> </font>
				<font size="3"> <%
 	} else {
 		UserDao uDao = new UserDaoImpl();
 		User user1 = new User();
 		user1 = uDao.getUserByUserName(user.getUserName());
 %> </font>


				<div id="wenzi1">
					<div align="center">

						<font size="3"> <%
 	//System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");  
 		//�������ݿ⣬��ȡ����Student����;  
 		StudentDao studentDao = new StudentDaoImpl();
 		List<Student> students = new ArrayList<Student>();
 		students = studentDao.getAllStuInfo();
 		//  System.out.println(students);
 %> </font>

					</div>
					<div align="center">
					</div>
					<table width="730" id="table">

						<tr bgcolor="#dddddd">
							<th width="50%" align="center">
								<font size="2"><br>ѧ��ѧ��<br> <br> </font>
							</th>
							<th width="50%" align="center">
								<font size="2"> ѧ������ </font>
							</th>

						</tr>
						<%
							for (int i = 0; i < students.size(); ++i) {
									//System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");  

									Student student = (Student) students.get(i);
						%>
						<tr height="35" bgcolor="#eeeeee">
							<td id="center">
								<font size="2"><%=student.getStuId()%></font>
								<br>
							</td>
							<td id="center">
								<font size="2"><%=student.getStuName()%></font>
								<br>
							</td>

						</tr>
						<%
							}//ѭ������
						%>


					</table>


					<%
						//System.outprintln("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
						}
					%>
				</div>


			</div>
		</div>

	</body>
</html>