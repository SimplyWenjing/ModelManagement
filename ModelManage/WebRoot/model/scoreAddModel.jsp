<%@ page language="java" contentType="text/html; charset=GBK"%>
<html>
	<head>
		<title>���ģ��</title>
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
	font: 600 12px/ 24px ����;
}

#p {
	padding: 0;
	margin: 0px;
}
</style>
	<body>
		<div id="container">

			<div id="content">
				<form action="doScoreAddModel.jsp">
					<table width="368" border="0" align="center">
						<tr>
							<td width="362">
								<label for="textfield">
									ѧ��ѧ��:
								</label>
								<input type="text" name="stuId" id="stuId" size="40">
							</td>
						</tr>
						<tr>
							<td>
								<label for="textfield3">
									�γ̴���:
								</label>
								<input type="text" name="courseId" id="courseId" size="40">
							</td>
						</tr>
						<tr>
							<td>
								<label for="textfield5">
									�γ�����:
								</label>
								<input type="text" name="courseName" id="courseName" size="40">
							</td>
						</tr>
						<tr>
							<td>
								<label for="textfield2">
									ѧ&nbsp;&nbsp;&nbsp;&nbsp;��:
								</label>
								<input type="text" name="credit" id="credit" size="40">
							</td>
						</tr>
						<tr>
							<td>
								<label for="textfield4">
									��&nbsp;&nbsp;&nbsp;&nbsp;��:
								</label>
								<input type="text" name="score" id="score" size="40">
							</td>
						</tr>
						<tr>
							<td>
								<label for="textfield6">
									�ɼ��ȼ�:
								</label>
								<input type="text" name=level id="level" size="40">
							</td>
						</tr>
						<tr>
							<td>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="submit" name="submit" id="submit"
									value="&nbsp; &nbsp;��&nbsp;&nbsp;��&nbsp;&nbsp;">
								&nbsp; &nbsp; &nbsp;
								<input type="reset" name="reset" id="reset"
									value="&nbsp;&nbsp;ȡ&nbsp;&nbsp;��&nbsp;&nbsp;">
							</td>
						</tr>
					</table>
				</form>

			</div>
		</div>

	</body>
</html>



