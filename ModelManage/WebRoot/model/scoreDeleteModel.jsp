<%@ page language="java" contentType="text/html; charset=GBK"%>
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
	<body>
		<div id="container">

			<div id="content">
				<form action="doScoreDeleteModel.jsp" method="post">
					<table width="459" border="0" align="center">
						<tr>
							<td width="453">
								<p>
									<label for="textfield">
										请输入要删除成绩学生的学号 ：
									</label>
									<input type="text" name="stuId" id="stuId">
									&nbsp;
								</p>
								<p>
									<label for="textfield">
										请输入要删除成绩课程的代码 ：
									</label>
									<input type="text" name="courseId" id="courseId">
									&nbsp;
									<input type="submit" name="submit2" id="submit2"
										value="&nbsp;确&nbsp;定&nbsp;">
								</p>
							</td>

						</tr>

						<tr>
							<td colspan="2">
								<table>
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
											<label>
											</label>
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
									<tr>
										<td height="31">
											重修分数：
											<label></label>
											&nbsp;
										</td>
										<td height="31">
											重修等级：
											<label></label>
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
