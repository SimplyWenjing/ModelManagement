<%@ page language="java" contentType="text/html; charset=GBK"%>
<%@page import="com.homework.Model.entity.User"%>
<%@page import="com.homework.Student.Dao.StudentDao"%>
<%@page import="com.homework.Student.Impl.StudentDaoImpl"%>
<%@page import="com.homework.Student.entity.Student"%>
<html>
	<head>
		<title>��ѯģ��</title>
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
						����Ҫ��ѯ��ѧ��ѧ�ţ�
						<input type="text" name="textfield" id="textfield"
							value="<%=student.getStuId()%>">
						&nbsp;&nbsp;&nbsp;&nbsp;

					</p>
				</div>

				<table width="504" border="0" height="291" align="center"
					id="tablecolor">
					<tr>
						<td height="38" colspan="2">
							ѧ����Ϣ
							<hr>
						</td>
					</tr>
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
							<label><%=student.getMajoy()%></label>
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

			</div>
		</div>
	</body>
</html>
