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
				<form action="doArticalDeleteModel.jsp">
					<table width="459" border="0" align="center">
						<tr>
							<td width="453">
								<p>
									<label for="textfield">
										请输入要删除论文作者的学号 ：
									</label>
									<input type="text" name="stuId" id="stuId">
									&nbsp;
								</p>
								<p>
									<label for="textfield">
										请输入要删除论文的题目 ：
									</label>
									<input type="text" name="articalName" id="articalName">
									&nbsp;
									<input type="submit" name="submit2" id="submit2"
										value="&nbsp;确&nbsp;定&nbsp;">
								</p>
							</td>

						</tr>

						<tr>
							<td colspan="2">
								<table width="504" border="0" height="201" align="center"
									id="tablecolor">
									<tr>
										<td height="38" colspan="2">
											相关信息
											<hr>
										</td>
									</tr>
									<tr>
										<td height="29" colspan="2">
											论文题目：
											<label></label>
										</td>
									</tr>
									<tr>
										<td height="27" colspan="2">
											发表刊物：
											<label></label>
										</td>
									</tr>
									<tr>
										<td width="245" height="31">
											发表刊物刊号：
											<label></label>
										</td>
										<td width="249">
											作者：
											<label></label>
										</td>
									</tr>
									<tr>
										<td height="31">
											学位论文相关章节：
											<label></label>
										</td>
										<td>
											备注：
											<label></label>
										</td>
									</tr>
									<tr>
										<td height="31" colspan="2">
											&nbsp;
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



