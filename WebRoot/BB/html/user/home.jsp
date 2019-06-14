<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<title>用户主页</title>
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
<!--特殊样式 begin-->
<link rel="stylesheet" type="text/css" href="BB/res/shubiao/shubiao.css">
<script src="BB/res/shubiao/shubiao.js"></script>
<link rel="stylesheet" type="text/css"
	href="BB/res/topcat/css/szgotop.css">
<script src="BB/res/topcat/js/szgotop.js"></script>
<!--特殊样式 end-->
<script src="BB/res/topcat/js/jquery-1.8.3.min.js"></script>
<script src="BB/res/topcat/js/szgotop.js"></script>
</head>
<body style="margin-top: 60px;">
	<div class="fly-header layui-bg-black">
		<div class="layui-container">
			<a class="fly-logo" href="centreall.bb"> <img
				src="BB/res/images/logo.png" alt="layui" width="35%"> </a>
			<ul class="layui-nav fly-nav layui-hide-xs">
				<li class="layui-nav-item layui-this"><a href="centreall.bb"><i
						class="layui-icon">&#xe68e;</i>首页</a></li>
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
					</dl>
				</li>
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


	<div class="fly-home fly-panel" style="">
		<img src="${user.userpic}" alt="${user.usersname}"> <i
			class="iconfont icon-renzheng" title=".."></i>
		<h1>
			${user.usersname}
			<c:if test="${user.sex=='男'}">
				<i class="iconfont icon-nan"></i>
			</c:if>
			<c:if test="${user.sex=='女'}">
				<i class="iconfont icon-nv"></i>
			</c:if>

			<!-- <i class="iconfont icon-nv"></i>  -->
			<i class="layui-badge fly-badge-vip">VIP3</i>
			<!--
    <span style="color:#c00;">（管理员）</span>
    <span style="color:#5FB878;">（社区之光）</span>
    <span>（该号已被封）</span>
    -->
		</h1>
		<p class="fly-home-info">
			<i class="iconfont icon-shijian"></i><span><fmt:formatDate
					value="${user.createtime}" pattern="yyyy年MM月dd日" />加入</span>
			<c:if test="${user.address!=null}">
				<i class="iconfont icon-chengshi"></i>
				<span>${user.address}</span>
			</c:if>
			<c:if test="${user.address==null}">
				<i class="iconfont icon-chengshi"></i>
				<span>来自外太空</span>
			</c:if>
		</p>

		<c:if test="${user.intro!=null}">
			<p class="fly-home-sign">${myuser.intro}</p>
		</c:if>
		<c:if test="${user.intro==null}">
			<p class="fly-home-sign">该用户很懒，什么都没留下!</p>
		</c:if>

		<div class="fly-sns" data-user="">
			<c:if test="${myuser.usesid==user.usesid}">
				<a href="BB/html/user/set.jsp" class="layui-btn fly-imActive"
					data-type="chat">✎修改</a>
			</c:if>
			<c:if test="${myuser.usesid!=user.usesid}">
				<c:if test="${flog=='true'}">
					<a href="attention.bb?usersid=${user.usesid}&zt=1"
						class="layui-btn layui-btn-primary fly-imActive" data-type="chat">已关注</a>
				</c:if>
				<c:if test="${flog=='false'}">
					<a href="attention.bb?usersid=${user.usesid}&zt=0"
						class="layui-btn layui-btn-normal fly-imActive" data-type="chat">✚关注</a>
				</c:if>
			</c:if>
		</div>
	</div>


	<!-- 个人发布的博文 start -->
	<div class="layui-container">
		<div class="layui-row layui-col-space15">
			<!--<div class="layui-col-md6 fly-home-jie">-->
			<div class="fly-panel">
				<h3 class="fly-panel-title" style="font-size: 25px;">我的所有博客</h3>
				<ul class="fly-list">
					<c:if test="${not empty userpost }">
						<c:forEach items="${userpost }" var="upost">
							<li><a href="home.bb?usersid=${upost.users.usesid }"
								class="fly-avatar"> <img src="${upost.users.userpic }"
									alt="年华"> </a>
								<h2>
									<a class="layui-badge">${upost.posttype.ptypeName }</a> <a
										href="posts.bb?pid=${upost.pid }">${upost.ptitle }</a>
								</h2>
								<div class="fly-list-info">
									<a href="home.bb?usersid=${upost.users.usesid }" link> <cite>${upost.users.usersname}
									</cite> <i class="iconfont icon-renzheng"
										title="认证信息：${upost.users.usersname}"></i> <c:if
											test="${upost.users.grade>=0 and upost.users.grade<60}">
											<i class="layui-badge fly-badge-vip">LV 1</i>
										</c:if> <c:if
											test="${upost.users.grade>=60 and upost.users.grade<180}">
											<i class="layui-badge fly-badge-vip">LV 2</i>
										</c:if> <c:if
											test="${upost.users.grade>=180 and upost.users.grade<300}">
											<i class="layui-badge fly-badge-vip">LV 3</i>
										</c:if> <c:if
											test="${upost.users.grade>=300 and upost.users.grade<600}">
											<i class="layui-badge fly-badge-vip">LV 4</i>
										</c:if> <c:if test="${upost.users.grade>=600}">
											<i class="layui-badge fly-badge-vip">LV 5</i>
										</c:if> </a> <span><fmt:formatDate value="${upost.pdate }"
											pattern="yyyy年MM月dd日" /> </span> <span
										class="fly-list-kiss layui-hide-xs" title="悬赏飞吻"> <i
										class="iconfont icon-kiss"></i> ${upost.plike } </span> <span
										class="fly-list-nums"> <i class="iconfont" title="人气">&#xe60b;</i>
										${upost.preadings } <i class="iconfont icon-pinglun1"
										title="回答"></i>${upost.pcomments } </span>
								</div>

								<div class="fly-list-badge">
									<c:if test="${upost.paudit == 1 }">
										<span class="layui-badge layui-bg-gray">审核中</span>
									</c:if>
									<c:if test="${upost.paudit == 2 }">
										<span class="layui-badge layui-bg-green">审核通过</span>
									</c:if>
									<c:if test="${upost.paudit == 3 }">
										<span class="layui-badge layui-bg-red">审核未通过</span>
									</c:if>
									<c:if test="${upost.pelite == 1 }">
										<span class="layui-badge layui-bg-orange">精帖</span>
									</c:if>
									<c:if test="${upost.users.usesid == myuser.usesid }">
										<a href="udelect.bb?pid=${upost.pid }&uid=${myuser.usesid}"
											onclick="return confirm('确认删除吗？')"> <span
											class="layui-badge layui-bg-blue"> 删除 </span> </a>
									</c:if>
								</div>
								<div class="tzimg">
									<%-- <p style="padding: 10px;">
										${pall.pcontent}
									</p> --%>

									<a href="BB/html/jie/detail.jsp"><img
										src="BB/res/images/avatar/7.jpg" width="100px" height="100px">
									</a> <a href="BB/html/jie/detail.jsp"><img
										src="BB/res/images/avatar/8.jpg" width="100px" height="100px">
									</a> <a href="BB/html/jie/detail.jsp"><img
										src="BB/res/images/avatar/9.jpg" width="100px" height="100px">
									</a> <a href="BB/html/jie/detail.jsp"><img
										src="BB/res/images/avatar/10.jpg" width="100px" height="100px">
									</a> <a href="BB/html/jie/detail.jsp"><img
										src="BB/res/images/avatar/11.jpg" width="100px" height="100px">
									</a>
								</div></li>
						</c:forEach>
					</c:if>
					<c:if test="${empty userpost}">
						<li>
							<div class="fly-none"
								style="min-height: 50px; padding:30px 0; height:auto;">
								<i style="font-size:14px;">没有发表任何博文哦</i>
							</div></li>
					</c:if>
				</ul>
			</div>
		</div>
	</div>
	<!-- 个人发布的博文 end -->
	<div class="fly-footer">
		<p>
			<a href="centreall.bb" target="_blank">知心博客</a><span
				style="color: #fff;"> 2019 &copy; </span><a
				href="BB/html/sug/about.jsp" target="_blank">知心团队 出品</a>
		</p>
		<p>
			<a class="BB/html/sug/social zzwm" href="javascript:"><img
				class="qrcode" src="BB/res/images/skm.jpg" alt="赞赏我们"><i
				class="layui-icon">&#xe62e;</i><span>赞赏我们</span>
			</a> <a
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
	<script>
		layui.use([ 'laypage', 'layer' ], function() {
			var laypage = layui.laypage, layer = layui.layer;
			//自定义首页、尾页、上一页、下一页文本
			laypage.render({
				elem : 'demo3',
				count : 60//总数量
				,
				limit : 6//每页数量
				,
				first : '首页',
				last : '尾页',
				prev : '<em>←</em>',
				next : '<em>→</em>'
			});
		});
	</script>
</body>
</html>
