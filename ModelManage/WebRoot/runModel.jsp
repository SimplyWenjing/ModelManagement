<%@ page language="java" contentType="text/html; charset=GBK"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>运行模型主页</title>
		<style type="text/css">
@import url("css/style.css");
a:hover {
	text-decoration:none;
}
</style>
	</head>

	<body>
		<div id="container">
			<div id="banner">

			</div>


			<div id="clear"></div>
			<div id="content">
				<div id="left">
					<div id="link">
						<h3></h3>
						<p>
							&nbsp;
						</p>
						<p>
							录入模型
						</p>
						<ul>
							<li>
								<a href="model/stuInfoAddModel.jsp" target="frame_content">学生基本信息录入模型</a>
							</li>
							<li>
								<a href="model/scoreAddModel.jsp" target="frame_content">学生成绩信息录入模型</a>
							</li>
							<li>
								<a href="model/articalAddModel.jsp" target="frame_content">发表论文材料录入模型</a>
							</li>
						</ul>
						<p>
							修改模型
						</p>
						<ul>
							<li>
								<a href="model/stuInfoUpdateModel.jsp" target="frame_content">学生基本信息修改模型</a>
							</li>
							<li>
								<a href="model/scoreUpdateModel.jsp" target="frame_content">学生成绩信息修改模型</a>
							</li>
							<li>
								<a href="model/articalUpdateModel.jsp" target="frame_content">发表论文材料修改模型</a>
							</li>
						</ul>
						<p>
							查询模型
						</p>
						<ul>
							<li>
								<a href="model/stuInfoQueryModel.jsp" target="frame_content">学生基本信息查询模型</a>
							</li>
							<li>
								<a href="model/scoreQueryModel.jsp" target="frame_content">学生成绩信息查询模型</a>
							</li>
							<li>
								<a href="model/articalQueryModel.jsp" target="frame_content">发表论文材料查询模型</a>
							</li>
						</ul>
						<p>
							删除模型
						</p>
						<ul>
							<li>
								<a href="model/stuInfoDeleteModel.jsp" target="frame_content">学生基本信息删除模型</a>
							</li>
							<li>
								<a href="model/scoreDeleteModel.jsp" target="frame_content">学生成绩信息删除模型</a>
							</li>
							<li>
								<a href="model/articalDeleteModel.jsp" target="frame_content">发表论文材料删除模型</a>
							</li>
						</ul>
						<p>
							<a href="index.html">模型管理主页</a>
						</p>

					</div>
					<div id="friend">

						<select name="frind-link" id="fl">
							<option value="frind">
								&nbsp;&nbsp;---友情链接---&nbsp;&nbsp;
							</option>
							<option value="cs">
								计算机学院
							</option>
							<option value="baidu">
								百度一下
							</option>
						</select>
					</div>

				</div>
				<div id="clear2"></div>
				<div id="right">
					<iframe id="frame_content" name="frame_content" width="100%"
						height="630" scrolling="no" frameborder="0">
					</iframe>

				</div>

			</div>
			<div id="clear1"></div>
			<div id="cpy">
				<p>
					版权所有：大连理工大学研究生院
				</p>
			</div>
		</div>
	</body>
</html>
