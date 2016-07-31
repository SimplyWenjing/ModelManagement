<%@ page language="java" contentType="text/html; charset=GBK"%>
<html>
	<head>
		<title>学生基本信息录入模型</title>
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
				<form action="doStuAddModel.jsp" method="post">
					<table width="600" border="0">
						<tr>
							<td>
								<label for="textfield">
									学 &nbsp;&nbsp;&nbsp;号:
								</label>
								<input type="text" name="stuId" id="stuId" readonly>
							</td>
							<td>
								<label for="textfield2">
									姓 &nbsp;&nbsp;&nbsp;名:
								</label>
								<input type="text" name="stuName" id="stuName">
							</td>
						</tr>
						<tr>
							<td>
								<label for="textfield3">
									性 &nbsp;&nbsp;&nbsp;别:
								</label>
								<input type="text" name="sex" id="sex">
							</td>
							<td>
								<label for="textfield4">
									婚 &nbsp;&nbsp;&nbsp;否:
								</label>
								<input type="text" name="marriage" id="marriage">
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<label for="textfield5">
									籍 &nbsp;&nbsp;&nbsp;贯:
								</label>
								<input type="text" name="jiguan" id="jiguan" size="70">
							</td>
						</tr>

						<tr>
							<td>
								<label for="textfield7">
									生 &nbsp;&nbsp;&nbsp;日:
								</label>
								<input type="text" name="birthday" id="birthday">
							</td>
							<td>
								<label for="textfield8">
									入学时间:
								</label>
								<input type="text" name="ruxueTime" id="ruxueTime">
							</td>
						</tr>
						<tr>
							<td>
								<label for="textfield9">
									导师姓名:
								</label>
								<input type="text" name="teacherName" id="teacherName">
							</td>
							<td>
								<label for="textfield10">
									培养方式:
								</label>
								<input type="text" name="peiyangStyle" id="peiyangStyle">
							</td>
						</tr>
						<tr>
							<td>
								<label for="textfield13">
									院 &nbsp;&nbsp;&nbsp;系:
								</label>
								<input type="text" name="yuanxi" id="yuanxi">
							</td>
							<td>
								<label for="textfield14">
									专 &nbsp;&nbsp;&nbsp;业:
								</label>
								<input type="text" name="major" id="major">
							</td>
						</tr>
						<tr>
							<td>
								身份证号:
								<input type="text" name="identify" id="identify">
							</td>
							<td>
								<label for="textfield12">
									政治面貌:
								</label>
								<input type="text" name="zhengzhi" id="zhengzhi">
							</td>
						</tr>
						<tr>
							<td colspan="2">
								&nbsp;
							</td>
						</tr>
						<tr>
							<td colspan="2">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;
								<input type="submit" name="submit" id="submit"
									value="&nbsp; &nbsp;添&nbsp;&nbsp;加&nbsp;&nbsp;">
								&nbsp; &nbsp; &nbsp;
								<input type="reset" name="reset" id="reset"
									value="&nbsp;&nbsp;取&nbsp;&nbsp;消&nbsp;&nbsp;">
							</td>
						</tr>
					</table>
				</form>

			</div>
		</div>

	</body>
</html>