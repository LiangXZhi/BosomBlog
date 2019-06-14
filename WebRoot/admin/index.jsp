<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>后台管理</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="BB/res/images/logo_tb.png" rel="icon" type="image/x-ico">
<link rel="stylesheet" href="admin/layui/css/layui.css" media="all" />
<link rel="stylesheet" href="admin/css/index.css" media="all" />
<link rel="stylesheet" href="admin/css/shubiao/shubiao.css" media="all">
<script type="text/javascript" src="admin/css/shubiao/shubiao.js"></script>

</head>

<body class="main_body">
	<div class="layui-layout layui-layout-admin">
		<!-- 顶部 -->
		<div class="layui-header header">
			<div class="layui-main mag0">
				<a href="#" class="logo"><img src="admin/images/logo.png"
					height="50px;"> </a>
				<!-- 显示/隐藏菜单 -->
				<a href="javascript:;" class="seraph hideMenu icon-caidan"></a>
				<!-- 顶级菜单 -->
				<!-- 顶部右侧菜单 -->
				<ul class="layui-nav top_menu">
					<li class="layui-nav-item" pc><a href="javascript:;"
						class="clearCache"><i class="layui-icon" data-icon="&#xe640;">&#xe640;</i><cite>清除缓存</cite><span
							class="layui-badge-dot"></span> </a>
					</li>
					<li class="layui-nav-item lockcms" pc><a href="javascript:;"><i
							class="seraph icon-lock"></i><cite>锁屏</cite> </a>
					</li>
					<c:set var="salary" scope="session" value="${administrator}" />
					<c:if test="${salary!=null}">
						<li class="layui-nav-item" id="userInfo"><a
							href="javascript:;"><img src="admin/images/face.jpg"
								class="layui-nav-img userAvatar" width="35" height="35"><cite
								class="adminName">${administrator.aname}</cite> </a>
							<dl class="layui-nav-child">
								<dd>
									<a href="adminexit.bb" ><i
										class="seraph icon-tuichu"></i><cite>退出</cite> </a>
								</dd>
							</dl>
						</li>
					</c:if>
					<c:if test="${salary==null}">
						<c:redirect url="login.jsp" />
					</c:if>
				</ul>
			</div>
		</div>
		<!-- 左侧导航 -->
		<div class="layui-side layui-bg-black">
			<c:if test="${salary!=null}">
				<div class="user-photo">
					<a class="img" title="我的头像" href="#"><img
						src="admin/images/face.jpg" class="userAvatar" /> </a>
					<p>
						你好！<span class="userName">${administrator.aname}</span>
					</p>
				</div>
			</c:if>
			<!-- 搜索 -->
			<div class="layui-form component">
				<select name="search" id="search" lay-search lay-filter="searchPage">
					<option value="">搜索页面或功能</option>
					<option value="1">layer</option>
					<option value="2">form</option>
				</select> <i class="layui-icon">&#xe615;</i>
			</div>
			<div class="navBar layui-side-scroll" id="navBar">
				<ul class="layui-nav layui-nav-tree">
					<li class="layui-nav-item layui-this"><a href="javascript:;"
						data-url="admin/page/main.jsp"><i class="layui-icon">&#xe68e;</i><cite>后台首页</cite>
					</a>
					</li>
				</ul>
			</div>
		</div>
		<!-- 右侧内容 -->
		<div class="layui-body layui-form">
			<div class="layui-tab mag0" lay-filter="bodyTab" id="top_tabs_box">
				<ul class="layui-tab-title top_tab" id="top_tabs">
					<li class="layui-this" lay-id=""><i class="layui-icon">&#xe68e;</i>
						<cite>后台首页</cite></li>
				</ul>
				<ul class="layui-nav closeBox">
					<li class="layui-nav-item"><a href="javascript:;"><i
							class="layui-icon caozuo">&#xe643;</i> 页面操作</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;" class="refresh refreshThis"><i
									class="layui-icon">&#x1002;</i> 刷新当前</a>
							</dd>
							<dd>
								<a href="javascript:;" class="closePageOther"><i
									class="seraph icon-prohibit"></i> 关闭其他</a>
							</dd>
							<dd>
								<a href="javascript:;" class="closePageAll"><i
									class="seraph icon-guanbi"></i> 关闭全部</a>
							</dd>
						</dl>
					</li>
				</ul>
				<div class="layui-tab-content clildFrame">
					<div class="layui-tab-item layui-show">
						<iframe src="admin/page/main.jsp"></iframe>
					</div>
				</div>
				<!-- 底部 -->
				<div class="layui-footer footer">
					<p>
						<span>BosomBlog @2019 知心团队</span>
					</p>
				</div>
			</div>

			<!-- 移动导航 -->
			<div class="site-tree-mobile"></div>
			<div class="site-mobile-shade"></div>

			<script type="text/javascript" src="admin/layui/layui.js"></script>
			<script type="text/javascript" src="admin/js/index.js"></script>
			<script type="text/javascript" src="admin/js/cache.js"></script>
</body>
</html>
