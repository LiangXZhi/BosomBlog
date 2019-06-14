<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'newsAdd.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="admin/layui/css/layui.css" media="all" />
	<link rel="stylesheet" href="admin/css/public.css" media="all" />
	<script type="text/javascript" src="admin/css/shubiao/shubiao.js"></script>

  </head>
  
  <body class="childrenBody">
<form class="layui-form layui-row layui-col-space10">
	<div class="layui-col-md9 layui-col-xs12">
		<div class="layui-row layui-col-space10">
			<div class="layui-col-md9 layui-col-xs7">
				<div class="layui-form-item magt3">
					<label class="layui-form-label">文章标题</label>
					<div class="layui-input-block">
						<input type="text" class="layui-input newsName" lay-verify="newsName" placeholder="请输入文章标题">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">内容摘要</label>
					<div class="layui-input-block">
						<textarea placeholder="请输入内容摘要" class="layui-textarea abstract"></textarea>
					</div>
				</div>
			</div>
			<div class="layui-col-md3 layui-col-xs5">
				<div class="layui-upload-list thumbBox mag0 magt3">
					<img class="layui-upload-img thumbImg">
				</div>
			</div>
		</div>
		<div class="layui-form-item magb0">
			<label class="layui-form-label">文章内容</label>
			<div class="layui-input-block">
				<textarea class="layui-textarea layui-hide" name="content" lay-verify="content" id="news_content"></textarea>
			</div>
		</div>
	</div>
	<div class="layui-col-md3 layui-col-xs12">
		<blockquote class="layui-elem-quote title"><i class="seraph icon-caidan"></i> 分类目录</blockquote>
		<div class="border category">
			<div class="">
				<p><input type="checkbox" name="news" title="新闻" lay-skin="primary" /></p>
				<p><input type="checkbox" name="goods" title="商品" lay-skin="primary" /></p>
				<p><input type="checkbox" name="notice" title="公告" lay-skin="primary" /></p>
				<p><input type="checkbox" name="images" title="图片" lay-skin="primary" /></p>
			</div>
		</div>
		<blockquote class="layui-elem-quote title magt10"><i class="layui-icon">&#xe609;</i> 发布</blockquote>
		<div class="border">
			<div class="layui-form-item">
				<label class="layui-form-label"><i class="layui-icon">&#xe60e;</i> 状　态</label>
				<div class="layui-input-block newsStatus">
					<select name="status" lay-verify="required">
						<option value="0">保存草稿</option>
						<option value="1">等待审核</option>
					</select>
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label"><i class="layui-icon">&#xe609;</i> 发　布</label>
				<div class="layui-input-block">
					<input type="radio" name="release" title="立即发布" lay-skin="primary" lay-filter="release" checked />
					<input type="radio" name="release" title="定时发布" lay-skin="primary" lay-filter="release" />
				</div>
			</div>
			<div class="layui-form-item layui-hide releaseDate">
				<label class="layui-form-label"></label>
				<div class="layui-input-block">
					<input type="text" class="layui-input" id="release" placeholder="请选择日期和时间" readonly />
				</div>
			</div>
			<div class="layui-form-item openness">
				<label class="layui-form-label"><i class="seraph icon-look"></i> 公开度</label>
				<div class="layui-input-block">
					<input type="radio" name="openness" title="开放浏览" lay-skin="primary" checked />
					<input type="radio" name="openness" title="私密浏览" lay-skin="primary" />
				</div>
			</div>
			<div class="layui-form-item newsTop">
				<label class="layui-form-label"><i class="seraph icon-zhiding"></i> 置　顶</label>
				<div class="layui-input-block">
					<input type="checkbox" name="newsTop" lay-skin="switch" lay-text="是|否">
				</div>
			</div>
			<hr class="layui-bg-gray" />
			<div class="layui-right">
				<a class="layui-btn layui-btn-sm" lay-filter="addNews" lay-submit><i class="layui-icon">&#xe609;</i>发布</a>
				<a class="layui-btn layui-btn-primary layui-btn-sm" lay-filter="look" lay-submit>预览</a>
			</div>
		</div>
	</div>
</form>
<script type="text/javascript" src="admin/layui/layui.js"></script>
<script type="text/javascript" src="admin/page/news/newsAdd.js"></script>
</body>
</html>
