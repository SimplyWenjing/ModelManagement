<%@ page language="java" contentType="text/html; charset=GBK"%>
<html>
	<head>
		<title>�޸ĳɼ�ģ��</title>
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
				<form action="doScoreUpdateModel.jsp" method="post">
					<table width="455" border="0" align="center">
						<tr>
							<td width="449" colspan="2">
								<p>
									<label for="textfield">
										�������޸ĳɼ�ѧ����ѧ�� ��
									</label>
									<input type="text" name="stuId" id="stuId">
									&nbsp;
								</p>

								<p>
									<label for="textfield">
										�������޸ĳɼ��γ̵Ĵ��� ��
									</label>
									<input type="text" name="courseId" id="courseId">
									&nbsp;
									<input type="submit" name="submit2" id="submit2"
										value="&nbsp;ȷ&nbsp;��&nbsp;">
								</p>
							</td>

						</tr>
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
								<input type="text" name="textfield3" id="textfield3" size="40">
							</td>
						</tr>
						<tr>
							<td>
								<label for="textfield5">
									�γ�����:
								</label>
								<input type="text" name="textfield5" id="textfield5" size="40">
							</td>
						</tr>
						<tr>
							<td>
								<label for="textfield2">
									ѧ&nbsp;&nbsp;&nbsp;&nbsp;��:
								</label>
								<input type="text" name="textfield2" id="textfield2" size="40">
							</td>
						</tr>
						<tr>
							<td>
								<label for="textfield4">
									��&nbsp;&nbsp;&nbsp;&nbsp;��:
								</label>
								<input type="text" name="textfield4" id="textfield4" size="40">
							</td>
						</tr>
						<tr>
							<td>
								<label for="textfield6">
									�ɼ��ȼ�:
								</label>
								<input type="text" name="textfield6" id="textfield6" size="40">
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
