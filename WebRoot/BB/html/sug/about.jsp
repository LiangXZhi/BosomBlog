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

<title>关于</title>
<meta name="keywords" content="知心博客">
<meta name="description" content="知心博客是一个免费的IT交流平台">
<link href="BB/res/images/logo_tb.png" rel="icon" type="image/x-ico">
<link rel="manifest" href="%PUBLIC_URL%/manifest.json">
<link rel="stylesheet" type="text/css" href="BB/res/assets/waifu.css" />
<link rel="stylesheet" href="BB/res/css/about.css">
<link rel="stylesheet" href="BB/res/layui/css/layui.css">
<link rel="stylesheet" href="BB/res/css/global.css">
<link rel="stylesheet" type="text/css" href="BB/res/css/lazhu.css">
<link rel="stylesheet" type="text/css" href="BB/res/css/top.css">
<!--特殊样式 begin-->
<link rel="stylesheet" type="text/css" href="BB/res/shubiao/shubiao.css">
<script src="BB/res/shubiao/shubiao.js"></script>
<script src="BB/res/topcat/js/jquery-1.8.3.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="BB/res/topcat/css/szgotop.css">
<script src="BB/res/topcat/js/szgotop.js"></script>
<!--特殊样式 end-->
</head>

<body>
	<!--导航栏-->
	<div class="fly-header layui-bg-black">
		<div class="layui-container">
			<a class="fly-logo" href="index.jsp"> <img
				src="BB/res/images/logo.png" alt="layui" width="35%"> </a>
			<ul class="layui-nav fly-nav layui-hide-xs">
				<li class="layui-nav-item layui-this"><a href="index.jsp"><i
						class="layui-icon">&#xe68e;</i>首页</a>
				</li>
				<li class="layui-nav-item"><a href="#"><i
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
				<li class="layui-nav-item"><a href="#"><i
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
					</dl></li>
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
						</dl></li>
				</c:if>

				<c:if test="${salary==null}">
					<c:redirect url="/BB/html/user/login.jsp"></c:redirect>
				</c:if>
			</ul>
		</div>
	</div>

	<!--回到顶部cat  begin-->
	<div class="back-to-top cd-top faa-float animated cd-is-visible"
		style="top: -900px;"></div>
	<!--回到顶部cat  end-->

	<!--内容-->

	<section class="l-senction character" id="aboutTopBg">
	<div class="f1_dot_bg"></div>
	<div class="l-inner character-box">
		<h3>博客简介</h3>
		<div class="about_f1_box">
			<div class="about_f1_tx1">
				<img src="BB/res/images/about/2.jpg" width="128px" height="128px">
			</div>
			<!--<div class="about_f1_tx2">
          <img src="Luffy.jpg" width="128px" height="128px">
        </div>
		<div class="about_f1_tx3">
          <img src="Luffy.jpg" width="128px" height="128px">
        </div>
		<div class="about_f1_tx4">
          <img src="Luffy.jpg" width="128px" height="128px">
        </div>-->

			<p class="about_f1_name">知心博客</p>
			<p class="about_f1_text">知心博客(Bosom
				Blog)平台，简称BB平台，即用于实现各大兴趣相投的有志之士交流的网络平台。用户可以通过注册填写个人信息，得到自己的用户权限，进入主界面后，会看到各个用户的信息发布，这些帖子就是为了给那些遇到问题，但找不到解决办法的人们,以及解决了某些问题或想要记录或者分享的人们，搭建一个供他们学习和交流的平台。</p>
		</div>
	</div>
	</section>
	<section id="sc" class="l-senction about_sc">
	<div class="l-inner2">
		<div class="sc_staff">
			<h4>博客资料</h4>
			<ul class="staff_list1">
				<li>
					<p class="des">博客名称</p>
					<p class="name">知心博客</p></li>
				<li>
					<p class="des">团队名称</p>
					<p class="name">知心团队</p></li>
				<li>
					<p class="des">最帅的</p>
					<p class="name">@吾乃路飞哥</p></li>
				<li>
					<p class="des">第二帅的</p>
					<p class="name">@Young年华</p></li>
				<li>
					<p class="des">面向对象</p>
					<p class="name">志同道合的博主</p></li>
				<li>
					<p class="des">联系方式</p>
					<p class="name">
						<a class="name"
							href="https://qm.qq.com/cgi-bin/qm/qr?k=xWdCIC7-VktYNeNdvO612l7lNQj5m_8o">qq交流群</a>
					</p></li>
			</ul>
			<h4>交流相关</h4>
			<ul class="staff_list1">
				<li class="about_sj_link_box">
					<p class="name">
						<a href="https://www.csdn.net/" target="_blank">CSND博客</a>
					</p></li>
				<li class="about_sj_link_box">
					<p class="name">
						<a href="https://www.cnblogs.com/" target="_blank">博客园</a>
					</p></li>
				<li class="about_sj_link_box">
					<p class="name">
						<a href="http://www.java1234.com/" target="_blank">JAVA知识分享网</a>
					</p></li>
				<li class="about_sj_link_box">
					<p class="name">
						<a href="https://www.layui.com/" target="_blank">layUI</a>
					</p></li>
				<li class="about_sj_link_box">
					<p class="name">
						<a href="https://www.wikimoe.com/" target="_blank">维基萌</a>
					</p></li>
			</ul>
			<h4>期待你的加入^_^</h4>
		</div>
	</div>
	<!--尾巴-->
	<style type="text/css">
.fly-footer {
	margin: 0px 0 0;
	padding: 0px 0 0px;
	line-height: 30px;
	text-align: center;
	color: #737573;
}
</style>
	<div class="fly-footer" style="color: #FFA9BE;">
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
	</section>
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
