<%@ page language="java" contentType="text/html; charset=GBK"%>
<%@page import="com.homework.Student.Dao.StudentDao"%>
<%@page import="com.homework.Student.Impl.StudentDaoImpl"%>
<%@page import="com.homework.Student.entity.Student"%>
<html>
	<head>
		<title>���ģ��</title>
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
									������Ҫɾ��ѧ����ѧ�� ��
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
											ѧ��ѧ�ţ�
											<label><%=student.getStuId()%></label>
										</td>
										<td width="249">
											���գ�
											<label><%=student.getBirthday()%></label>
										</td>
									</tr>
									<tr>
										<td height="28">
											ѧ��������
											<label><%=student.getStuName()%></label>
										</td>
										<td>
											������ʽ��
											<label><%=student.getPeiyangStyle()%></label>
										</td>
									</tr>
									<tr>
										<td height="27">
											�Ա�
											<label><%=student.getSex()%></label>
										</td>
										<td>
											Ժϵ��
											<label><%=student.getDepartment()%></label>
										</td>
									</tr>
									<tr>
										<td height="29">
											���
											<label><%=student.getMarriage()%></label>
										</td>
										<td>
											��ʦ������
											<label><%=student.getTeacherName()%></label>
										</td>
									</tr>
									<tr>
										<td height="29" colspan="2">
											���᣺
											<label><%=student.getJiguan()%></label>
										</td>
									</tr>
									<tr>
										<td height="31">
											������ò��
											<label><%=student.getZhengzhi()%></label>
										</td>
										<td>
											��ѧʱ�䣺
											<label><%=student.getRuxueTime()%></label>
										</td>
									</tr>
									<tr>
										<td height="31">
											���֤�ţ�
											<label><%=student.getIdentifyNumber()%></label>
										</td>
										<td>
											רҵ��
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
									value="&nbsp;ɾ&nbsp;��&nbsp;">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
								<input type="reset" name="reset" id="reset"
									value="&nbsp;ȡ&nbsp;��&nbsp;">
							</td>
						</tr>
					</table>



				</div>
			</div>
		</form>


	</body>
</html>

