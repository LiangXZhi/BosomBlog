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

<title>后台登录</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="BB/res/images/logo_tb.png" rel="icon" type="image/x-ico">
<link rel="stylesheet" href="admin/layui/css/layui.css" media="all" />
<link rel="stylesheet" href="admin/css/public.css" media="all" />

</head>

<body class="loginBody">
	<form class="layui-form" action="login_a.bb" method="post">
		<div class="login_face">
			<img src="admin/images/login_a.png" class="userAvatar">
		</div>
		<div class="layui-form-item input-item">
			<label for="userName">用户名</label> <input type="text"
				placeholder="请输入用户名" autocomplete="off" id="userName" name="aname"
				class="layui-input" required>
		</div>
		<div class="layui-form-item input-item">
			<label for="password">密码</label> <input type="password"
				placeholder="请输入密码" autocomplete="off" id="password"
				name="apassword" class="layui-input" required>
		</div>
		<div class="layui-form-item input-item" id="imgCode">
			<label for="code">验证码</label> <input type="text" placeholder="请输入验证码"
				autocomplete="off" id="code" class="layui-input" required> <img
				src="admin/images/code.jpg">
		</div>
		<div class="layui-form-item">
			<center>
				<button class="layui-btn layui-block" type="submit"
					onclick="return yzm();">登录</button>
				<span style="color: red;">
				${msg}</span>
			</center>
		</div>
	</form>
	<script type="text/javascript" src="admin/layui/layui.js"></script>
	<script type="text/javascript" src="admin/page/login/login.js"></script>
	<script type="text/javascript" src="admin/js/cache.js"></script>
	<script type="text/javascript">
		function yzm() {
			if ('jgmxj' != document.getElementById('code').value) {
				layer.msg('验证码不正确!', {
					time : 1000
				});
				return false;
			}
			return true;
		}
	</script>
</body>
</html>
