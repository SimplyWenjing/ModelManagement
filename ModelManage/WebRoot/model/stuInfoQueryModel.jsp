<%@ page language="java" contentType="text/html; charset=GBK"%>
<html>
	<head>
		<title>添加模型</title>
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
				<form action="doStuInfoQueryModel.jsp">
					<div id="queryStyle" align="center">
						<p align="left">
							输入要查询的学生学号：
							<input type="text" name="stuId" id="stuId">
							<input type="submit" name="submit" id="submit"
								value="&nbsp;搜&nbsp;索&nbsp;">
						</p>
					</div>
				</form>


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
							<label></label>
						</td>
						<td width="249">
							生日：
							<label></label>
						</td>
					</tr>
					<tr>
						<td height="28">
							学生姓名：
							<label></label>
						</td>
						<td>
							培养方式：
							<label></label>
						</td>
					</tr>
					<tr>
						<td height="27">
							性别：
							<label></label>
						</td>
						<td>
							院系：
							<label></label>
						</td>
					</tr>
					<tr>
						<td height="29">
							婚否：
							<label></label>
						</td>
						<td>
							导师姓名：
							<label></label>
						</td>
					</tr>
					<tr>
						<td height="29" colspan="2">
							籍贯：
							<label></label>
						</td>
					</tr>
					<tr>
						<td height="27" colspan="2">
							家庭所在地：
							<label></label>
						</td>
					</tr>
					<tr>
						<td height="31">
							政治面貌：
							<label></label>
						</td>
						<td>
							入学时间：
							<label></label>
						</td>
					</tr>
					<tr>
						<td height="31">
							身份证号：
							<label></label>
						</td>
						<td>
							专业：
							<label></label>
						</td>
					</tr>
					<tr>
						<td height="31" colspan="2">
							&nbsp;
						</td>
					</tr>
				</table>

			</div>
		</div>
	</body>
</html>