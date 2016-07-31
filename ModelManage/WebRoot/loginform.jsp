<%@ page language="java" contentType="text/html; charset=gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>登录</title>
		<link type="text/css" rel="stylesheet" href="css/style.css">
	</head>
	<style type="text/css">
<!--
* {
	margin: 0;
	padding: 0;
}

body {
	text-align: center;
	font-size: 14px
}

#lhead {
	
}

a {
	text-decoration: none;
	color: #FFF;
}

a:hover {
	text-decoration: underline;
}

#login {
	align: center;
	width: 500px;
	margin: 100px 0px 180px 420px;
	border: 1px solid;
}
</style>


	<body>

		<div id="login" align="center">

			<div id="lhead" style="background-color: #2d4897;">
				<font size="4" color="#0000ff"><br> <font
					color="#ffffff">登录</font> <br> <br> </font>
			</div>

			<form action="dologin.jsp" method="post">
				<table width="277" height="140">
					<tr>
						<td align="center">
							<br>
							<br>
							<br>
							用户名:
							<br>
							<br>
						</td>
						<td>
							<input name="username" value="">
						</td>
					</tr>
					<tr>
						<td>
							<br>
							&nbsp; 口 令:
							<br>
							<br>
						</td>
						<td>
							<input type="password" name="password" value="">
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;
							<br>
							&nbsp;
							<br>
						</td>
						<td>
							&nbsp;&nbsp;&nbsp;
							<input type="submit" name="submit" value="登录">
						</td>
					</tr>
				</table>
			</form>

		</div>

	</body>
</html>