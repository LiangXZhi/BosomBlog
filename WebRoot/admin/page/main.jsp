<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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

<title>知心博客</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="admin/layui/css/layui.css" media="all" />
<link rel="stylesheet" href="admin/css/public.css" media="all" />
<link rel="stylesheet" type="text/css" href="admin/css/lazhu.css">
<link rel="stylesheet" href="admin/css/shubiao/shubiao.css" media="all">
<script type="text/javascript" src="admin/css/shubiao/shubiao.js"></script>

<style type="text/css">
.wrapper {
	position: absolute;
	left: 50%;
	top: 90%;
	transform: scale(3, 3) translate(-50%, -50%);
}
</style>

</head>

<body class="childrenBody">
	<blockquote class="layui-elem-quote layui-bg-green">
		<div id="nowTime"></div>
	</blockquote>
	<div class="layui-row layui-col-space10 panel_box">
		<div class="wrapper">
			<div class="candles">
				<div class="light__wave"></div>
				<div class="candle1">
					<div class="candle1__body">
						<div class="candle1__eyes">
							<span class="candle1__eyes-one"></span> <span
								class="candle1__eyes-two"></span>
						</div>
						<div class="candle1__mouth"></div>
					</div>
					<div class="candle1__stick"></div>
				</div>
				<div class="candle2">
					<div class="candle2__body">
						<div class="candle2__eyes">
							<div class="candle2__eyes-one"></div>
							<div class="candle2__eyes-two"></div>
						</div>
					</div>
					<div class="candle2__stick"></div>
				</div>
				<div class="candle2__fire"></div>
				<div class="sparkles-one"></div>
				<div class="sparkles-two"></div>
				<div class="candle__smoke-one"></div>
				<div class="candle__smoke-two"></div>
			</div>
			<div class="floor"></div>
		</div>
	</div>
	<script type="text/javascript" src="admin/layui/layui.js"></script>
	<script type="text/javascript" src="admin/js/main.js"></script>