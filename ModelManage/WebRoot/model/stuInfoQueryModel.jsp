<%@ page language="java" contentType="text/html; charset=GBK"%>
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

	<body>
		<div id="container">
			<div id="content">
				<form action="doStuInfoQueryModel.jsp">
					<div id="queryStyle" align="center">
						<p align="left">
							����Ҫ��ѯ��ѧ��ѧ�ţ�
							<input type="text" name="stuId" id="stuId">
							<input type="submit" name="submit" id="submit"
								value="&nbsp;��&nbsp;��&nbsp;">
						</p>
					</div>
				</form>


				<table width="504" border="0" height="291" align="center"
					id="tablecolor">
					<tr>
						<td height="38" colspan="2">
							ѧ����Ϣ
							<hr>
						</td>
					</tr>
					<tr>
						<td width="245" height="31">
							ѧ��ѧ�ţ�
							<label></label>
						</td>
						<td width="249">
							���գ�
							<label></label>
						</td>
					</tr>
					<tr>
						<td height="28">
							ѧ��������
							<label></label>
						</td>
						<td>
							������ʽ��
							<label></label>
						</td>
					</tr>
					<tr>
						<td height="27">
							�Ա�
							<label></label>
						</td>
						<td>
							Ժϵ��
							<label></label>
						</td>
					</tr>
					<tr>
						<td height="29">
							���
							<label></label>
						</td>
						<td>
							��ʦ������
							<label></label>
						</td>
					</tr>
					<tr>
						<td height="29" colspan="2">
							���᣺
							<label></label>
						</td>
					</tr>
					<tr>
						<td height="27" colspan="2">
							��ͥ���ڵأ�
							<label></label>
						</td>
					</tr>
					<tr>
						<td height="31">
							������ò��
							<label></label>
						</td>
						<td>
							��ѧʱ�䣺
							<label></label>
						</td>
					</tr>
					<tr>
						<td height="31">
							���֤�ţ�
							<label></label>
						</td>
						<td>
							רҵ��
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