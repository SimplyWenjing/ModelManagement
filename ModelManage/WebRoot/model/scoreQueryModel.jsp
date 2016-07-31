<%@ page language="java" contentType="text/html; charset=GBK"%>
<html>
	<head>
		<title>成绩查询模型</title>
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

	<body>
		<div id="container">
			<div id="content">
				<form action="doScoreQueryModel.jsp">
					<div id="queryStyle" align="center">
						<p align="left">
							输入要查询学生的学号：
							<input type="text" name="stuId" id="textfield">
							&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="submit" name="submit" id="submit"
								value="&nbsp;搜&nbsp;索&nbsp;">
						</p>
					</div>
				</form>


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
							学生姓名：
							<label></label>
						</td>
					</tr>
					<tr>
						<td height="27" colspan="2">
							课程代码：
							<label></label>
						</td>
					</tr>
					<tr>
						<td width="245" height="31">
							课程名称：
							<label></label>
						</td>
						<td width="249">
							学分：
							<label></label>
						</td>
					</tr>
					<tr>
						<td height="31">
							成绩等级：
							<label></label>
						</td>
						<td>
							分数：
							<label></label>
						</td>
					</tr>

				</table>

			</div>
		</div>
	</body>
</html>



