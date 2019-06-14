<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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

<title>找回密码/重置密码</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="keywords" content="知心博客">
<meta name="description" content="知心博客是一个免费的IT交流平台">
<link href="BB/res/images/logo_tb.png" rel="icon" type="image/x-ico">
<link rel="manifest" href="%PUBLIC_URL%/manifest.json">
<link rel="stylesheet" type="text/css" href="BB/res/assets/waifu.css" />
<link rel="stylesheet" href="BB/res/layui/css/layui.css">
<link rel="stylesheet" href="BB/res/css/global.css">
<script src="BB/res/mods/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="BB/res/css/lazhu.css">
<link rel="stylesheet" type="text/css" href="BB/res/css/top.css">

<link rel="stylesheet" type="text/css" href="BB/res/shubiao/shubiao.css">
<script src="BB/res/shubiao/shubiao.js"></script>
</head>
<body>

	<div class="fly-header layui-bg-black">
		<div class="layui-container">
			<a class="fly-logo" href="index.bb"> <img
				src="BB/res/images/logo.png" alt="layui" width="35%"> </a>
			<ul class="layui-nav fly-nav layui-hide-xs">
				<li class="layui-nav-item layui-this"><a href="index.bb"><i
						class="layui-icon">&#xe68e;</i>首页</a>
				</li>
				<li class="layui-nav-item"><a href="javascript:;"><i
						class="layui-icon">&#xe653;</i>分类</a>
					<dl class="layui-nav-child">
						<dd>
							<div>
								<a href="selectptype.bb?ptypeid=1"><img
									src="BB/res/images/tb/java.png" width="20px">Java</a>
							</div>
						</dd>
						<dd>
							<div>
								<a href="selectptype.bb?ptypeid=2"><img
									src="BB/res/images/tb/SQL.png" width="20px">MySQL</a>
							</div>
						</dd>
						<dd>
							<div>
								<a href="selectptype.bb?ptypeid=3"><img
									src="BB/res/images/tb/HTML.png" width="20px">HTML</a>
							</div>
						</dd>
						<dd>
							<div>
								<a href="selectptype.bb?ptypeid=4"><img
									src="BB/res/images/tb/js.png" width="20px">JS</a>
							</div>
						</dd>
						<dd>
							<div>
								<a href="selectptype.bb?ptypeid=5"><img
									src="BB/res/images/tb/Jquery.png" width="20px">JQuery</a>
							</div>
						</dd>
						<dd>
							<div>
								<a href="selectptype.bb?ptypeid=6"><img
									src="BB/res/images/tb/vuejs.png" width="20px">Vue.Js</a>
							</div>
						</dd>
						<dd>
							<div>
								<a href="selectptype.bb?ptypeid=7"><img
									src="BB/res/images/tb/C.png" width="20px">C/C#</a>
							</div>
						</dd>
						<dd>
							<div>
								<a href="selectptype.bb?ptypeid=8"><img
									src="BB/res/images/tb/php.png" width="20px">PHP</a>
							</div>
						</dd>
						<dd>
							<div>
								<a href="selectptype.bb?ptypeid=9"><img
									src="BB/res/images/tb/python.png" width="20px">Python</a>
							</div>
						</dd>
					</dl></li>
				<li class="layui-nav-item"><a href="javascript:;"><i
						class="layui-icon">&#xe65f;</i>关于</a>
					<dl class="layui-nav-child layui-nav-item2" style="width: 100px;">
						<dd>
							<a href="BB/html/sug/about.jsp"><i class="layui-icon">&#xe705;</i><span>博客简介</span>
							</a>
						</dd>
						<dd>
							<a href="BB/html/sug/suglist.jsp"><i class="layui-icon">&#xe6b2;</i><span>提出建议</span>
							</a>
						</dd>
						<dd>
							<a class="BB/html/sug/social weixin" href="javascript:"><img
								class="qrcode" src="BB/res/images/QQqun.jpg" alt="QQ群二维码"><i
								class="layui-icon">&#xe62e;</i><span>绿色通道</span> </a>
						</dd>
					</dl>
				</li>
			</ul>
			<ul class="layui-nav fly-nav-user">
				<c:set var="salary" scope="session" value="${myuser}" />
				<c:if test="${myuser.banaccount==1}">
					<script type="text/javascript">
						for (i = 0; i < 1; i--) {
							alert('账号已被冻结!详情请联系Q1205831239');
						}
					</script>
				</c:if>
				<c:if test="${salary!=null}">
					<li class="layui-nav-item"><a class="fly-nav-avatar"
						href="home.bb?usersid=${myuser.usesid}"> <cite
							class="layui-hide-xs">${myuser.usersname}</cite> <i
							class="iconfont icon-renzheng layui-hide-xs"
							title="${myuser.usersname}"></i> <c:if
								test="${myuser.grade>=0 and myuser.grade<60}">
								<i class="layui-badge fly-badge-vip">LV 1</i>
							</c:if> <c:if test="${myuser.grade>=60 and myuser.grade<180}">
								<i class="layui-badge fly-badge-vip">LV 2</i>
							</c:if> <c:if test="${myuser.grade>=180 and myuser.grade<300}">
								<i class="layui-badge fly-badge-vip">LV 3</i>
							</c:if> <c:if test="${myuser.grade>=300 and myuser.grade<600}">
								<i class="layui-badge fly-badge-vip">LV 4</i>
							</c:if> <c:if test="${myuser.grade>=600}">
								<i class="layui-badge fly-badge-vip">LV 5</i>
							</c:if> <img src="${myuser.userpic}"
							class="layui-anim-rotate layui-anim-loop"> </a>
						<dl class="layui-nav-child">
							<dd>
								<a href="home.bb?usersid=${myuser.usesid}"><i
									class="layui-icon" style="margin-left: 2px; font-size: 22px;">&#xe68e;</i>我的主页</a>
							</dd>
							<dd>
								<a href="BB/html/user/set.jsp"><i class="layui-icon">&#xe620;</i>基本设置</a>
							</dd>
							<dd>
								<a href="BB/html/user/message.jsp"><i class="layui-icon">&#xe667;</i>我的消息</a>
							</dd>
							<dd>
								<a href="suposttopc.bb?uid=${myuser.usesid}"><i
									class="layui-icon">&#xe705;</i>博客中心</a>
							</dd>
							<dd>
								<a href="fanes.bb?usersid=${myuser.usesid}"><i
									class="layui-icon">&#xe770;</i>好友中心</a>
							</dd>
							<hr style="margin: 5px 0;">
							<dd>
								<a href="exit.bb" class="exit" style="text-align: center;">退出</a>
							</dd>
						</dl>
					</li>
				</c:if>

				<c:if test="${salary==null}">
					<c:redirect url="/BB/html/user/login.jsp"></c:redirect>
				</c:if>
			</ul>
		</div>
	</div>

	<div class="layui-container fly-marginTop">
		<div class="fly-panel fly-panel-user" pad20>
			<div class="layui-tab layui-tab-brief" lay-filter="user">
				<ul class="layui-tab-title">
					<li><a href="BB/html/user/login.jsp">登入</a></li>
					<li class="layui-this">找回密码<!--重置密码--></li>
				</ul>
				<div class="layui-form layui-tab-content" id="LAY_ucm"
					style="padding: 20px 0;">
					<div class="layui-tab-item layui-show">
						<!-- 重置密码 -->
						<!--
          <div class="fly-msg">{{d.username}}，请重置您的密码</div>
          <div class="layui-form layui-form-pane"  style="margin-top: 30px;">
            <form action="/user/repass" method="post">
              <div class="layui-form-item">
                <label for="L_pass" class="layui-form-label">密码</label>
                <div class="layui-input-inline">
                  <input type="password" id="L_pass" name="pass" required lay-verify="required" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-mid layui-word-aux">6到16个字符</div>
              </div>
              <div class="layui-form-item">
                <label for="L_repass" class="layui-form-label">确认密码</label>
                <div class="layui-input-inline">
                  <input type="password" id="L_repass" name="repass" required lay-verify="required" autocomplete="off" class="layui-input">
                </div>
              </div>
              <div class="layui-form-item">
                <label for="L_vercode" class="layui-form-label">人类验证</label>
                <div class="layui-input-inline">
                  <input type="text" id="L_vercode" name="vercode" required lay-verify="required" placeholder="请回答后面的问题" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-mid">
                  <span style="color: #c00;">{{d.vercode}}</span>
                </div>
              </div>
              <div class="layui-form-item">
                <input type="hidden" name="username" value="{{d.username}}">
                <input type="hidden" name="email" value="{{d.email}}">
                <button class="layui-btn" alert="1" lay-filter="*" lay-submit>提交</button>
              </div>
            </form>
          </div>


          <div class="fly-error">该重置密码链接已失效，请重新校验您的信息</div>
          <div class="fly-error">非法链接，请重新校验您的信息</div>
          -->

						<div class="layui-form layui-form-pane">
							<form method="post">
								<div class="layui-form-item">
									<label for="L_email" class="layui-form-label">手机号</label>
									<div class="layui-input-inline">
										<input type="text" id="L_email" name="email" required
											lay-verify="required" autocomplete="off" class="layui-input"
											placeholder="请输入正确手机号">
									</div>
								</div>
								<div class="layui-form-item">
									<label for="L_vercode" class="layui-form-label">验证码</label>
									<div class="layui-input-inline">
										<input type="text" id="L_vercode" name="vercode" required
											lay-verify="required" placeholder="请注意接收验证码"
											autocomplete="off" class="layui-input">
									</div>
								</div>
								<div class="layui-form-item">
									<button class="layui-btn" alert="1" lay-filter="*" lay-submit>提交</button>
								</div>
							</form>
						</div>

					</div>
				</div>
			</div>
		</div>


	</div>

	<div class="fly-footer">
		<p>
			<a href="index.bb" target="_blank">知心博客</a><span style="color: #fff;">
				2019 &copy; </span><a href="BB/html/sug/about.jsp" target="_blank">知心团队
				出品</a>
		</p>
		<p>
			<a class="BB/html/sug/social zzwm" href="javascript:"><img
				class="qrcode" src="BB/res/images/skm.jpg" alt="赞赏我们"><i
				class="layui-icon">&#xe62e;</i><span>赞赏我们</span> </a> <a
				href="https://qm.qq.com/cgi-bin/qm/qr?k=xWdCIC7-VktYNeNdvO612l7lNQj5m_8o"
				target="_blank"><i class="layui-icon">&#xe612;</i>联系我们</a> <a
				href="javascript:;" target="_blank"><i class="layui-icon">&#xe641;</i>微信公众号</a>
		</p>
	</div>
	<div class="waifu">
		<div class="waifu-tips"></div>
		<canvas id="live2d" width="320" height="280" class="live2d"></canvas>
	</div>
	<script src="BB/res/assets/waifu-tips.js"></script>
	<script src="BB/res/assets/live2d.js"></script>
	<script type="text/javascript">
		initModel("assets/")
	</script>
	<script src="BB/res/layui/layui.js"></script>
	<script>
		layui.config({
			version : "3.0.0",
			base : 'BB/res/mods/'
		}).extend({
			fly : 'index'
		}).use('fly');
	</script>

</body>
</html>
