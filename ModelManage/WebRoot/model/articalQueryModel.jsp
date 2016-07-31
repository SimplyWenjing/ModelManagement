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
				<form action="doArticalQueryModel.jsp" method="post">
				<div id="queryStyle" align="center">
					<p align="left">
						输入要查询的论文题目：
						<input type="text" name="articalName" id="articalName">
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

			</div>
		</div>
	</body>
</html>
