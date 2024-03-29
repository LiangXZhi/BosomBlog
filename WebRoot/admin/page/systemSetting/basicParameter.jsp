<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'basicParameter.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="admin/layui/css/layui.css" media="all" />
	<link rel="stylesheet" href="admin/css/public.css" media="all" />

  </head>
  
 <body class="childrenBody">
	<form class="layui-form">
		<table class="layui-table mag0">
			<colgroup>
				<col width="25%">
				<col width="45%">
				<col>
		    </colgroup>
		    <thead>
		    	<tr>
		    		<th>参数说明</th>
		    		<th>参数值</th>
		    		<th pc>变量名</th>
		    	</tr>
		    </thead>
		    <tbody>
		    	<tr>
		    		<td>网站名称</td>
		    		<td><input type="text" class="layui-input cmsName" lay-verify="required" placeholder="请输入模版名称"></td>
		    		<td pc>cmsName</td>
		    	</tr>
		    	<tr>
		    		<td>当前版本</td>
		    		<td><input type="text" class="layui-input version" placeholder="请输入当前模版版本"></td>
		    		<td pc>version</td>
		    	</tr>
		    	<tr>
		    		<td>开发作者</td>
		    		<td><input type="text" class="layui-input author" placeholder="请输入开发作者"></td>
		    		<td pc>author</td>
		    	</tr>
		    	<tr>
		    		<td>网站首页</td>
		    		<td><input type="text" class="layui-input homePage" placeholder="请输入网站首页"></td>
		    		<td pc>homePage</td>
		    	</tr>
		    	<tr>
		    		<td>服务器环境</td>
		    		<td><input type="text" class="layui-input server" placeholder="请输入服务器环境"></td>
		    		<td pc>server</td>
		    	</tr>
		    	<tr>
		    		<td>数据库版本</td>
		    		<td><input type="text" class="layui-input dataBase" placeholder="请输入数据库版本"></td>
		    		<td pc>dataBase</td>
		    	</tr>
		    	<tr>
		    		<td>最大上传限制</td>
		    		<td><input type="text" class="layui-input maxUpload" placeholder="请输入最大上传限制"></td>
		    		<td pc>maxUpload</td>
		    	</tr>
		    	<tr>
		    		<td>用户权限</td>
		    		<td><input type="text" class="layui-input userRights" placeholder="请输入当前用户权限"></td>
		    		<td pc>userRights</td>
		    	</tr>
		    	<tr>
		    		<td>默认关键字</td>
		    		<td><input type="text" class="layui-input keywords" placeholder="请输入默认关键字"></td>
		    		<td pc>keywords</td>
		    	</tr>
		    	<tr>
		    		<td>版权信息</td>
		    		<td><input type="text" class="layui-input powerby" placeholder="请输入网站版权信息"></td>
		    		<td pc>powerby</td>
		    	</tr>
		    	<tr>
		    		<td>网站描述</td>
		    		<td><textarea placeholder="请输入网站描述" class="layui-textarea description"></textarea></td>
		    		<td pc>description</td>
		    	</tr>
		    	<tr>
		    		<td>网站备案号</td>
		    		<td><input type="text" class="layui-input record" placeholder="请输入网站备案号"></td>
		    		<td pc>record</td>
		    	</tr>
		    </tbody>
		</table>
		<div class="magt10 layui-right">
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit="" lay-filter="systemParameter">立即提交</button>
				<button type="reset" class="layui-btn layui-btn-primary">重置</button>
		    </div>
		</div>
	</form>
	<script type="text/javascript" src="admin/layui/layui.js"></script>
	<script type="text/javascript" src="admin/page/systemSetting/basicParameter.js"></script>
	<script type="text/javascript" src="admin/js/cache.js"></script>
</body>
</html>
