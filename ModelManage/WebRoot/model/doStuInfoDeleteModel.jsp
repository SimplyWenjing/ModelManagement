<%@ page language="java" contentType="text/html; charset=GBK"%>
<%@page import="com.homework.Student.Dao.StudentDao"%>
<%@page import="com.homework.Student.Impl.StudentDaoImpl"%>
<%@page import="com.homework.Student.entity.Student"%>
<html>
	<head>
		<title>添加模型</title>
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
	font: 600 12px/ 24px 宋体;
}

#p {
	padding: 0;
	margin: 0px;
}
</style>
	<%
		String stuid = request.getParameter("stuId");
		int stuId = Integer.parseInt(stuid);
		StudentDao stuDao = new StudentDaoImpl();
		Student student = stuDao.queryStuInfo(stuId);
	%>
	<body>
		<form action="doStuInfoDeleteModel1.jsp">

			<div id="container">

				<div id="content">
					<table width="459" border="0" align="center">
						<tr>
							<td width="453">
								<label for="textfield">
									请输入要删除学生的学号 ：
								</label>
								<input type="text" name="stuId" id="stuId"
									value="<%=student.getStuId()%>">
								&nbsp;
						</tr>

						<tr>
							<td colspan="2">
								<table width="504" border="0" height="291" align="center"
									id="tablecolor">
									<tr>
										<td width="245" height="31">
											学生学号：
											<label><%=student.getStuId()%></label>
										</td>
										<td width="249">
											生日：
											<label><%=student.getBirthday()%></label>
										</td>
									</tr>
									<tr>
										<td height="28">
											学生姓名：
											<label><%=student.getStuName()%></label>
										</td>
										<td>
											培养方式：
											<label><%=student.getPeiyangStyle()%></label>
										</td>
									</tr>
									<tr>
										<td height="27">
											性别：
											<label><%=student.getSex()%></label>
										</td>
										<td>
											院系：
											<label><%=student.getDepartment()%></label>
										</td>
									</tr>
									<tr>
										<td height="29">
											婚否：
											<label><%=student.getMarriage()%></label>
										</td>
										<td>
											导师姓名：
											<label><%=student.getTeacherName()%></label>
										</td>
									</tr>
									<tr>
										<td height="29" colspan="2">
											籍贯：
											<label><%=student.getJiguan()%></label>
										</td>
									</tr>
									<tr>
										<td height="31">
											政治面貌：
											<label><%=student.getZhengzhi()%></label>
										</td>
										<td>
											入学时间：
											<label><%=student.getRuxueTime()%></label>
										</td>
									</tr>
									<tr>
										<td height="31">
											身份证号：
											<label><%=student.getIdentifyNumber()%></label>
										</td>
										<td>
											专业：
											<label><%=student.getMajoy()%></label>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td colspan="2" align="justify">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="submit" name="submit" id="submit"
									value="&nbsp;删&nbsp;除&nbsp;">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
								<input type="reset" name="reset" id="reset"
									value="&nbsp;取&nbsp;消&nbsp;">
							</td>
						</tr>
					</table>



				</div>
			</div>
		</form>


	</body>
</html>

