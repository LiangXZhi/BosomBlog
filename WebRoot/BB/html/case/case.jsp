<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fnt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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

<title>搜索结果</title>
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
<!--特殊样式 begin-->
<link rel="stylesheet" type="text/css" href="BB/res/shubiao/shubiao.css">
<script src="BB/res/shubiao/shubiao.js"></script>
<script src="BB/res/topcat/js/jquery-1.8.3.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="BB/res/topcat/css/szgotop.css">
<script src="BB/res/topcat/js/szgotop.js"></script>
<!--特殊样式 end-->
<style>
.header {
	border-bottom: 1px solid #404553;
	border-right: 1px solid #404553;
}
</style>
<style type="text/css">
#gonggao {
	background-color: #fff;
}

#gonggao div {
	background-color: #fff;
	font-size: 20px;
	color: #F8AE39;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}
</style>
</head>
<body class="fly-full">
	<div class="fly-header layui-bg-black">
		<div class="layui-container">
			<a class="fly-logo" href="centreall.bb"> <img
				src="BB/res/images/logo.png" alt="layui" width="35%"> </a>
			<ul class="layui-nav fly-nav layui-hide-xs">
				<li class="layui-nav-item layui-this"><a href="centreall.bb"><i
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
							title="${myuser.usersname}"></i> <i
							class="layui-badge fly-badge-vip layui-hide-xs">VIP3</i> <img
							src="${myuser.userpic}" class="layui-anim-rotate layui-anim-loop">
					</a>
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
	<div class="back-to-top cd-top faa-float animated cd-is-visible"
		style="top: -900px;"></div>
	<div class="fly-panel fly-column">
		<div class="layui-container">
			<div class="layui-carousel" id="test1"
				style="background-color: #fff;">
				<div id="gonggao">
					<div>
						有关于“<span id="msg">${ptypename}</span>”的所有博客
					</div>
				</div>
			</div>
			<div class="fly-column-right layui-hide-xs">
				<span class="fly-search"><i class="layui-icon"></i> </span> <a
					href="posttype.bb" onclick="return insertpost()" class="layui-btn">发表新帖</a>
			</div>
		</div>
	</div>
	<div class="fly-main fly-panel"
		style="overflow: hidden;padding: 0 20px;">
		<!-- 查询内容   start -->
		<ul class="fly-case-list">
			<c:if test="${not empty postslist }">
				<c:forEach items="${postslist }" var="plist">
					<li data-id="123"><a class="fly-case-img"
						href="posts.bb?pid=${plist.pid }" target="_blank"> <img
							src="BB/res/images/bj.jpg" alt="知心博客"> <cite
							class="layui-btn layui-btn-primary layui-btn-small">去围观</cite> </a>
						<h2>
							<a href="posts.bb?pid=${plist.pid }" target="_blank">${plist.ptitle
								}</a>
						</h2>
						<p>
							<!-- 限制博文输出的长度，超过的用‘……’代替 -->
							<c:choose>
								<c:when test="${fnt:length(plist.pcontent) > 400}">
									<c:out value="${fnt:substring(plist.pcontent, 0, 80)}..." />
								</c:when>
								<c:otherwise>
									<c:out value="${plist.pcontent}" />
								</c:otherwise>
							</c:choose>
						</p>
						<div class="fly-case-info">
							<a href="home.bb?usersid=${plist.users.usesid }"
								class="fly-case-user" target="_blank"><img
								src="${plist.users.userpic }"> </a>
							<p class="layui-elip" style="font-size: 12px;">
								<span style="color: #666;font-size: 12px;">${plist.users.usersname
									}</span> 类型：<span style="color: red;">${plist.posttype.ptypeName
									}</span>
							</p>
							<p style="font-size: 12px;">
								<fmt:formatDate value="${plist.pdate }" pattern="yyyy年MM月dd日" />
							</p>
						</div>
					</li>
				</c:forEach>
			</c:if>
			<c:if test="${empty postslist }">
				<li style="text-align: center;"><a href="centreall.bb">没有<span
						style="color: blue;">${ptypename}</span>相关的博文哦~</a>
				</li>
			</c:if>
		</ul>
		<!-- 查询内容   end -->

		<!-- <blockquote class="layui-elem-quote layui-quote-nm">暂无数据</blockquote> -->

		<!-- <div style="text-align: center;">
			<div id="demo3"></div>
		</div> -->
	</div>
	<div class="fly-footer">
		<p>
			<a href="centreall.bb" target="_blank">知心博客</a><span
				style="color: #fff;"> 2019 &copy; </span><a
				href="BB/html/sug/about.jsp" target="_blank">知心团队 出品</a>
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
			base : 'BB/res/mods/' //这里实际使用时，建议改成绝对路径
		}).extend({
			fly : 'index'
		}).use('fly');
	</script>
</body>
</html>
