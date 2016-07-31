<%@ page language="java" contentType="text/html; charset=GBK"%>
<%@page import="com.homework.Model.entity.User"%>
<%@page import="com.homework.Student.Dao.StudentDao"%>
<%@page import="com.homework.Student.Impl.StudentDaoImpl"%>
<%@page import="com.homework.Student.entity.Student"%>
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
		String stuid = request.getParameter("stuId");
		int stuId = Integer.parseInt(stuid);
		StudentDao studentDao = new StudentDaoImpl();
		Student student = studentDao.queryStuInfo(stuId);

		//System.out.println(model.getModelName()+"============================");
	%>
	<body>
		<div id="container">
			<div id="content">
				<div id="queryStyle" align="center">
					<p align="left">
						输入要查询的学生学号：
						<input type="text" name="textfield" id="textfield"
							value="<%=student.getStuId()%>">
						&nbsp;&nbsp;&nbsp;&nbsp;

					</p>
				</div>

				<table width="504" border="0" height="291" align="center"
					id="tablecolor">
					<tr>
						<td height="38" colspan="2">
							学生信息
							<hr>
						</td>
					</tr>
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
							<label><%=student.getMajoy()%></label>
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

			</div>
		</div>
	</body>
</html>
