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
				<form action="doArticalDeleteModel.jsp">
					<table width="459" border="0" align="center">
						<tr>
							<td width="453">
								<p>
									<label for="textfield">
										������Ҫɾ���������ߵ�ѧ�� ��
									</label>
									<input type="text" name="stuId" id="stuId">
									&nbsp;
								</p>
								<p>
									<label for="textfield">
										������Ҫɾ�����ĵ���Ŀ ��
									</label>
									<input type="text" name="articalName" id="articalName">
									&nbsp;
									<input type="submit" name="submit2" id="submit2"
										value="&nbsp;ȷ&nbsp;��&nbsp;">
								</p>
							</td>

						</tr>

						<tr>
							<td colspan="2">
								<table width="504" border="0" height="201" align="center"
									id="tablecolor">
									<tr>
										<td height="38" colspan="2">
											�����Ϣ
											<hr>
										</td>
									</tr>
									<tr>
										<td height="29" colspan="2">
											������Ŀ��
											<label></label>
										</td>
									</tr>
									<tr>
										<td height="27" colspan="2">
											�����
											<label></label>
										</td>
									</tr>
									<tr>
										<td width="245" height="31">
											�����￯�ţ�
											<label></label>
										</td>
										<td width="249">
											���ߣ�
											<label></label>
										</td>
									</tr>
									<tr>
										<td height="31">
											ѧλ��������½ڣ�
											<label></label>
										</td>
										<td>
											��ע��
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
									value="&nbsp;ɾ&nbsp;��&nbsp;">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
								<input type="reset" name="reset" id="reset"
									value="&nbsp;ȡ&nbsp;��&nbsp;">
							</td>
						</tr>
					</table>

				</form>




			</div>
		</div>

	</body>
</html>



