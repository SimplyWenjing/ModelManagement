<%@ page language="java" contentType="text/html; charset=GBK"%>
<%@page import="com.homework.Model.entity.User"%>
<%@page import="com.homework.Student.Dao.StudentDao"%>
<%@page import="com.homework.Student.Impl.StudentDaoImpl"%>
<%@page import="com.homework.Student.entity.Student"%>
<html>
	<head>
		<title>ѧ��������Ϣ����ģ��</title>
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

		String stuid = request.getParameter("stuId");
		int stuId = Integer.parseInt(stuid);
		StudentDao stuDao = new StudentDaoImpl();
		Student student = stuDao.queryStuInfo(stuId);
		//System.out.println(model.getModelName()+"============================");
	%>
	<body>
		<div id="container">
			<div id="content">
				<form action="doStuInfoUpdateModel1.jsp" method="post">
					<table width="600" border="0">
						<tr>
							<td>
								<label for="textfield">
									ѧ &nbsp;&nbsp;&nbsp;��:
								</label>
								<input type="text" name="stuId" id="stuId" readonly
									value="<%=student.getStuId()%>">
							</td>
							<td>
								<label for="textfield2">
									�� &nbsp;&nbsp;&nbsp;��:
								</label>
								<input type="text" name="stuName" id="stuName"
									value="<%=student.getStuName()%>">
							</td>
						</tr>
						<tr>
							<td>
								<label for="textfield3">
									�� &nbsp;&nbsp;&nbsp;��:
								</label>
								<input type="text" name="sex" id="sex"
									value="<%=student.getSex()%>">
							</td>
							<td>
								<label for="textfield4">
									�� &nbsp;&nbsp;&nbsp;��:
								</label>
								<input type="text" name="marriage" id="marriage"
									value="<%=student.getMarriage()%>">
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<label for="textfield5">
									�� &nbsp;&nbsp;&nbsp;��:
								</label>
								<input type="text" name="jiguan" id="jiguan" size="70"
									value="<%=student.getJiguan()%>">
							</td>
						</tr>

						<tr>
							<td>
								<label for="textfield7">
									�� &nbsp;&nbsp;&nbsp;��:
								</label>
								<input type="text" name="birthday" id="birthday"
									value="<%=student.getBirthday()%>">
							</td>
							<td>
								<label for="textfield8">
									��ѧʱ��:
								</label>
								<input type="text" name="ruxueTime" id="ruxueTime"
									value="<%=student.getRuxueTime()%>">
							</td>
						</tr>
						<tr>
							<td>
								<label for="textfield9">
									��ʦ����:
								</label>
								<input type="text" name="teacherName" id="teacherName"
									value="<%=student.getTeacherName()%>">
							</td>
							<td>
								<label for="textfield10">
									������ʽ:
								</label>
								<input type="text" name="peiyangStyle" id="peiyangStyle"
									value="<%=student.getPeiyangStyle()%>">
							</td>
						</tr>
						<tr>
							<td>
								<label for="textfield13">
									Ժ &nbsp;&nbsp;&nbsp;ϵ:
								</label>
								<input type="text" name="yuanxi" id="yuanxi"
									value="<%=student.getDepartment()%>">
							</td>
							<td>
								<label for="textfield14">
									ר &nbsp;&nbsp;&nbsp;ҵ:
								</label>
								<input type="text" name="major" id="major"
									value="<%=student.getMajoy()%>">
							</td>
						</tr>
						<tr>
							<td>
								<label for="textfield14">
									���֤��:
								</label>
								<input type="text" name="identify" id="identify"
									value="<%=student.getIdentifyNumber()%>">
							</td>
							<td>
								<label for="textfield12">
									������ò:
								</label>
								<input type="text" name="zhengzhi" id="zhengzhi"
									value="<%=student.getZhengzhi()%>">
							</td>
						</tr>
						<tr>
							<td colspan="2">
								&nbsp;
							</td>
						</tr>
						<tr>
							<td colspan="2">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;
								<input type="submit" name="submit" id="submit"
									value="&nbsp; &nbsp;��&nbsp;&nbsp;��&nbsp;&nbsp;">

							</td>
						</tr>
					</table>
				</form>




			</div>


		</div>
	</body>
</html>
