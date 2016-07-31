<%@ page language="java" contentType="text/html; charset=GBK"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.homework.Model.entity.User"%>
<%@page import="com.homework.Model.Dao.UserDao"%>
<%@page import="com.homework.Model.Impl.UserDaoImpl"%>
<%@page import="com.homework.Model.Impl.ModelDaoImpl"%>
<%@page import="com.homework.Model.Dao.ModelDao"%>
<%@page import="com.homework.Model.entity.Model"%>
<!doctype html>
<html>
	<head>
		<title>添加模型</title>
	</head>
<style type="text/css">
<!--
@import url("css/admin.css");
*{margin:0 auto;padding:10px 0px 0px 0px;}
body{text-align:center;font-size:14px}
ul,li{list-style:none}
a{text-decoration:none; color:#000;}
a:hover{text-decoration:; color:#090;}
#container{margin:0 auto;width:752px; height:760px;text-align:left;border:#CCC 1px solid;}
#content{margin:0 auto;width:750px;border:0px;float:left; height:540px;}
#breadcrumb{ margin:20px; font:600 12px/24px 宋体;}
#p{padding:0;margin:0px;}
</style>
<body>
<div id="container">

<div id="content">
<form action="doAddModel.jsp" method="post" >
<table width="459" border="0" align="center">

  <tr>
    <td colspan="2"><label for="textfield6" >模 型 名 称 ：</label>
      <input type="text" name="modelName" id="modelname"></td>
  </tr>
  <tr>
    <td colspan="2"><label for="textfield3" >模 型 类 型 ：</label>
       <select name="modelType" >
 <option value="录入模型">---录入模型---</option>
 <option value="删除模型">---删除模型---</option>
 <option value="查询模型">---查询模型---</option>
 <option value="更新模型">---更新模型---</option>
 
 </select>
    </tr>
  <tr>
    <td colspan="2">
      <label for="fileField" >模型文件路径：</label>
      <input type="file" name="myfile" id="myfile"></td>
    </tr>
  <tr>
    <td colspan="2"><label for="textfield4" >模型创建日期：</label>
      <input type="text" name="creatDate" id="createDate"></td>
    </tr>
  <tr>
    <td colspan="2"><label for="textfield5">模型修改日期：</label>
      <input type="text" name="modifyDate" id="modifyDate"></td>
    </tr>
  <tr>
    <td colspan="2">
      <label for="textarea" >模型描述信息：</label>
      <textarea name="describe" id="describe"></textarea></td>
    </tr>
  <tr>
    <td colspan="2" align="justify">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      <input type="submit" name="submit" id="submit" value="&nbsp;添&nbsp;加&nbsp;">   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 
      <input type="reset" name="reset" id="reset" value="&nbsp;重&nbsp;置&nbsp;">
    </td>
    </tr>
</table>

</form>



		
	</div>
</div>

</body>
</html>
