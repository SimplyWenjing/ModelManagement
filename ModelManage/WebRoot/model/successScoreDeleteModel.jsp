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
		<title>添加成绩信息模型成功</title>
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
 	//  验证是否已登录，如未登录则跳转到loginform.jsp. 
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
 		//访问数据库，获取所有Student集合; 
 		StudentDao stuDao = new StudentDaoImpl();
 		List<Student> students = new ArrayList<Student>();
 		students = stuDao.getAllStuInfo();
 %> </font>
					<div id="header" style="width: 750px; height: 50px;">
						<font size="3"><br> </font><font face="微软雅黑" size="3">删除成功</font>



					</div>

					<%
						}
					%>
				</div>


			</div>

		</div>

	</body>
</html>
