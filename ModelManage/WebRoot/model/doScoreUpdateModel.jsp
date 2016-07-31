<%@ page language="java" contentType="text/html; charset=GBK"%>
<%@page import="com.homework.Student.Dao.StudentDao"%>
<%@page import="com.homework.Student.Impl.StudentDaoImpl"%>
<%@page import="com.homework.Student.entity.Student"%>
<%@page import="com.homework.Student.Dao.ScoreDao"%>
<%@page import="com.homework.Student.Impl.ScoreDaoImpl"%>
<%@page import="com.homework.Student.entity.Score"%>
<html>
	<head>
		<title>修改成绩模型</title>
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
				<form action="doScoreUpdateModel1.jsp" method="post">
					<table width="455" border="0" align="center">
						<tr>
							<td width="449" colspan="2">
								<p>
									<label for="textfield">
										请输入修改成绩学生的学号 ：
									</label>
									<input type="text" name="stuId" id="stuId"
										value="<%=score.getStuId()%>">
									&nbsp;
								</p>

								<p>
									<label for="textfield">
										请输入修改成绩课程的代码 ：
									</label>
									<input type="text" name="courseId" id="courseId"
										value="<%=score.getCourseId()%>">
							</td>

						</tr>
						<tr>
							<td width="362">
								<label for="textfield">
									学生学号:
								</label>
								<input type="text" name="stuId" id="stuId" size="40"
									value="<%=score.getStuId()%>">
							</td>
						</tr>
						<tr>
							<td>
								<label for="textfield3">
									课程代码:
								</label>
								<input type="text" name="courseId" id="courseId" size="40"
									value="<%=score.getCourseId()%>">
							</td>
						</tr>
						<tr>
							<td>
								<label for="textfield5">
									课程名称:
								</label>
								<input type="text" name="courseName" id="courseName" size="40"
									value="<%=score.getCourseName()%>">
							</td>
						</tr>
						<tr>
							<td>
								<label for="textfield2">
									学&nbsp;&nbsp;&nbsp;&nbsp;分:
								</label>
								<input type="text" name="credit" id="credit" size="40"
									value="<%=score.getXuefen()%>">
							</td>
						</tr>
						<tr>
							<td>
								<label for="textfield4">
									分&nbsp;&nbsp;&nbsp;&nbsp;数:
								</label>
								<input type="text" name="score" id="score" size="40"
									value="<%=score.getScore()%>">
							</td>
						</tr>
						<tr>
							<td>
								<label for="textfield6">
									成绩等级:
								</label>
								<input type="text" name="level" id="level" size="40"
									value="<%=score.getLevel()%>">
							</td>
						</tr>
						<tr>
							<td>
								&nbsp;
							</td>
						</tr>
						<tr>
							<td>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="submit" name="submit" id="submit"
									value="&nbsp; &nbsp;修&nbsp;&nbsp;改&nbsp;&nbsp;">
								&nbsp; &nbsp; &nbsp;
								<input type="reset" name="reset" id="reset"
									value="&nbsp;&nbsp;取&nbsp;&nbsp;消&nbsp;&nbsp;">
							</td>
						</tr>
					</table>
				</form>


			</div>
		</div>

	</body>
</html>
