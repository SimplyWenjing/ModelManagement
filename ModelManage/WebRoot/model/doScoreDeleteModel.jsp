<%@ page language="java" contentType="text/html; charset=GBK"%>
<%@page import="com.homework.Student.Dao.ScoreDao"%>
<%@page import="com.homework.Student.Impl.ScoreDaoImpl"%>
<%@page import="com.homework.Student.entity.Score"%>
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
	text-align: left;
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
		String courseid = request.getParameter("courseId");
		int courseId = Integer.parseInt(courseid);
		ScoreDao scoreDao = new ScoreDaoImpl();
		Score score = scoreDao.queryScoreInfo(stuId);
	%>
	<body>
		<div id="container">

			<div id="content">
				<form action="doScoreDeleteModel1.jsp" method="post">
					<table width="459" border="0" align="center">
						<tr>
							<td width="453">
								<p>
									<label for="textfield">
										<br>
									</label>
								</p>
								<p>
									<label for="textfield">
										请输入要删除成绩学生的学号 ：
									</label>
									<input type="text" name="stuId" id="stuId"
										value="<%=score.getStuId()%>">
									&nbsp;
								</p>
								<p>
									<label for="textfield">
										请输入要删除成绩课程的代码 ：
									</label>
									<input type="text" name="courseId" id="courseId"
										value="<%=score.getCourseId()%>">
									&nbsp;

								</p>
							</td>

						</tr>

						<tr>
							<td colspan="2">
								<table width="504" border="0" height="201" align="center"
									id="tablecolor">
									<tr>
										<td height="38" colspan="2">
											成绩信息
											<hr>
										</td>
									</tr>
									<tr>
										<td height="29" colspan="2">
											学生学号：
											<label><%=score.getStuId()%></label>
										</td>
									</tr>
									<tr>
										<td height="27" colspan="2">
											课程代码：
											<label><%=score.getCourseId()%>
											</label>
										</td>
									</tr>
									<tr>
										<td width="245" height="31">
											课程名称：
											<label><%=score.getCourseName()%></label>
										</td>
										<td width="249">
											学分：
											<label><%=score.getXuefen()%></label>
										</td>
									</tr>
									<tr>
										<td height="31">
											成绩等级：
											<label><%=score.getLevel()%></label>
										</td>
										<td>
											分数：
											<label><%=score.getScore()%></label>
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

				</form>


			</div>
		</div>

	</body>
</html>
