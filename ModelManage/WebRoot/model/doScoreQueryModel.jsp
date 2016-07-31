<%@ page language="java" contentType="text/html; charset=GBK"%>
<%@page import="com.homework.Student.Dao.StudentDao"%>
<%@page import="com.homework.Student.Impl.StudentDaoImpl"%>
<%@page import="com.homework.Student.entity.Student"%>
<%@page import="com.homework.Student.entity.Score"%>
<%@page import="com.homework.Student.Dao.ScoreDao"%>
<%@page import="com.homework.Student.Impl.ScoreDaoImpl"%>
<html>
	<head>
		<title>���ģ��</title>
	</head>
	<style type="text/css">
#container {
	margin: 0 auto;
	width: 752px;
	height: 560px;
	text-align: left;
	background: #F0F0F0
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
		String stuid = request.getParameter("stuId");
		int stuId = Integer.parseInt(stuid);
		ScoreDao scoreDao = new ScoreDaoImpl();
		StudentDao studentDao = new StudentDaoImpl();
		Score score = scoreDao.queryScoreInfo(stuId);
	%>
	<body>
		<div id="container">
			<div id="content">
				<form action="doScoreQueryModel1.jsp">
					<div id="queryStyle" align="center">
						<p align="left">
							����Ҫ��ѯѧ����ѧ�ţ�
							<input type="text" name="stuId" id="textfield"
								value="<%=score.getStuId()%>">
							&nbsp;&nbsp;&nbsp;&nbsp;

						</p>
					</div>
				</form>


				<table width="504" border="0" height="201" align="center"
					id="tablecolor">
					<tr>
						<td height="38" colspan="2">
							�ɼ���Ϣ
							<hr>
						</td>
					</tr>
					<tr>
						<td height="29" colspan="2">
							ѧ��ѧ�ţ�
							<label><%=score.getStuId()%></label>
						</td>
					</tr>
					<tr>
						<td height="27" colspan="2">
							�γ̴��룺
							<label><%=score.getCourseId()%></label>
						</td>
					</tr>
					<tr>
						<td width="245" height="31">
							�γ����ƣ�
							<label><%=score.getCourseName()%></label>
						</td>
						<td width="249">
							ѧ�֣�
							<label><%=score.getXuefen()%></label>
						</td>
					</tr>
					<tr>
						<td height="31">
							�ɼ��ȼ���
							<label><%=score.getLevel()%></label>
						</td>
						<td>
							������
							<label><%=score.getScore()%></label>
						</td>
					</tr>

				</table>

			</div>
		</div>
	</body>
</html>



