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
				<form action="doArticalAddModel.jsp" method="post">

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
							<td width="362">
								<label for="textfield">
									������Ŀ:
								</label>
								<input type="text" name="articalName" id="articalName" size="40">
							</td>
						</tr>
						<tr>
							<td>
								<label for="textfield3">
									�����ڿ�:
								</label>
								<input type="text" name="qikan" id="qikan" size="40">
							</td>
						</tr>
						<tr>
							<td>
								<label for="textfield5">
									���￯��:
								</label>
								<input type="text" name="qikankanhao" id="qikankanhao" size="40">
							</td>
						</tr>
						<tr>
							<td>
								<label for="textarea">
									��ע:
								</label>
								<textarea name="note" id="note"></textarea>
							</td>
						</tr>
						<tr>
							<td>
								&nbsp;
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


