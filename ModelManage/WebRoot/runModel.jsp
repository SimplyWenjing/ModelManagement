<%@ page language="java" contentType="text/html; charset=GBK"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>����ģ����ҳ</title>
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
							¼��ģ��
						</p>
						<ul>
							<li>
								<a href="model/stuInfoAddModel.jsp" target="frame_content">ѧ��������Ϣ¼��ģ��</a>
							</li>
							<li>
								<a href="model/scoreAddModel.jsp" target="frame_content">ѧ���ɼ���Ϣ¼��ģ��</a>
							</li>
							<li>
								<a href="model/articalAddModel.jsp" target="frame_content">�������Ĳ���¼��ģ��</a>
							</li>
						</ul>
						<p>
							�޸�ģ��
						</p>
						<ul>
							<li>
								<a href="model/stuInfoUpdateModel.jsp" target="frame_content">ѧ��������Ϣ�޸�ģ��</a>
							</li>
							<li>
								<a href="model/scoreUpdateModel.jsp" target="frame_content">ѧ���ɼ���Ϣ�޸�ģ��</a>
							</li>
							<li>
								<a href="model/articalUpdateModel.jsp" target="frame_content">�������Ĳ����޸�ģ��</a>
							</li>
						</ul>
						<p>
							��ѯģ��
						</p>
						<ul>
							<li>
								<a href="model/stuInfoQueryModel.jsp" target="frame_content">ѧ��������Ϣ��ѯģ��</a>
							</li>
							<li>
								<a href="model/scoreQueryModel.jsp" target="frame_content">ѧ���ɼ���Ϣ��ѯģ��</a>
							</li>
							<li>
								<a href="model/articalQueryModel.jsp" target="frame_content">�������Ĳ��ϲ�ѯģ��</a>
							</li>
						</ul>
						<p>
							ɾ��ģ��
						</p>
						<ul>
							<li>
								<a href="model/stuInfoDeleteModel.jsp" target="frame_content">ѧ��������Ϣɾ��ģ��</a>
							</li>
							<li>
								<a href="model/scoreDeleteModel.jsp" target="frame_content">ѧ���ɼ���Ϣɾ��ģ��</a>
							</li>
							<li>
								<a href="model/articalDeleteModel.jsp" target="frame_content">�������Ĳ���ɾ��ģ��</a>
							</li>
						</ul>
						<p>
							<a href="index.html">ģ�͹�����ҳ</a>
						</p>

					</div>
					<div id="friend">

						<select name="frind-link" id="fl">
							<option value="frind">
								&nbsp;&nbsp;---��������---&nbsp;&nbsp;
							</option>
							<option value="cs">
								�����ѧԺ
							</option>
							<option value="baidu">
								�ٶ�һ��
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
					��Ȩ���У���������ѧ�о���Ժ
				</p>
			</div>
		</div>
	</body>
</html>
