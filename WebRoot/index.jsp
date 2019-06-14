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

<title>知心博客</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="keywords" content="知心博客">
<meta name="description" content="知心博客是一个免费的IT交流平台">

<link rel="manifest" href="%PUBLIC_URL%/manifest.json">
<link rel="stylesheet" type="text/css" href="BB/res/assets/waifu.css" />

<link href="BB/res/images/logo_tb.png" rel="icon" type="image/x-ico">
<link rel="stylesheet" href="BB/res/layui/css/layui.css">
<link rel="stylesheet" href="BB/res/css/global.css">

<!--特殊样式 begin-->
<link rel="stylesheet" type="text/css" href="BB/res/shubiao/shubiao.css">
<script src="BB/res/shubiao/shubiao.js"></script>
<script src="BB/res/topcat/js/jquery-1.8.3.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="BB/res/topcat/css/szgotop.css">
<script src="BB/res/topcat/js/szgotop.js"></script>

<!--特殊样式 end-->
<!--<script type="text/javascript">
try{
    if (/Android|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)) {
        //window.location.href="mindex.html";
        alert("你现在是PE端")
    }else{
        //window.location.href="cindex.html";
        alert("你现在是PC端")
    }
}catch(e){}
</script>-->
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

#gonggao div span {
	font-weight: bold;
	font-size: 25px;
}
</style>
<!--蜡烛-->
<style type="text/css">
.wrapper {
	position: absolute;
	left: 50%;
	top: 15%;
	transform: scale(2, 2) translate(-50%, -50%);
}
</style>

<script src="BB/res/mods/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="BB/res/css/lazhu.css">
<link rel="stylesheet" type="text/css" href="BB/res/css/top.css">

<script src="BB/res/mods/canvas-particle.js"></script>

</head>
<body>
	<div class="fly-header layui-bg-black">
		<div class="layui-container">
			<a class="fly-logo" href="index.bb"> <img
				src="BB/res/images/logo.png" alt="layui" width="35%"> </a>
			<ul class="layui-nav fly-nav layui-hide-xs">
				<li class="layui-nav-item layui-this"><a href="index.bb"><i
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
					</dl></li>
			</ul>
			<ul class="layui-nav fly-nav-user">
				<c:set var="salary" scope="session" value="${myuser}" />
				<c:if test="${myuser.banaccount==1}">
					<script type="text/javascript">
						for (i = 0; i < 1; i) {
							alert('账号已被冻结!详情请联系Q1205831239');
						}
					</script>
				</c:if>
				<c:if test="${salary!=null}">
					<li class="layui-nav-item"><a class="fly-nav-avatar"
						href="home.bb?usersid=${myuser.usesid}"> <cite
							class="layui-hide-xs">${myuser.usersname}</cite> <c:if
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
					<ul>
						<li class="layui-nav-item"><a
							class="iconfont icon-touxiang layui-hide-xs"
							href="BB/html/user/login.jsp"></a></li>
						<li class="layui-nav-item"><a href="BB/html/user/login.jsp">登入</a>
						</li>
						<li class="layui-nav-item"><a href="BB/html/user/reg.jsp">注册</a>
						</li>
					</ul>
				</c:if>
			</ul>
		</div>
	</div>

	<!--回到顶部cat-->
	<div id="scrolltop"
		class="back-to-top cd-top faa-float animated cd-is-visible"
		style="top: -900px;"></div>

	<div class="fly-panel fly-column">
		<div class="layui-container">
			<div class="layui-carousel" id="test1"
				style="background-color: #fff;">
				<div carousel-item id="gonggao">
					<c:forEach items="${notifylist }" var="notify">
						<div>
							<span>公告：</span>${notify.notityContent }
						</div>
					</c:forEach>
				</div>
			</div>
			<div class="fly-column-right layui-hide-xs">
				<span class="fly-search"><em class="layui-icon"></em> </span> <a
					href="posttype.bb" onclick="return insertpost()" class="layui-btn">发表新帖</a>
			</div>
		</div>
	</div>
	<div class="layui-container">
		<div class="layui-row layui-col-space15">
			<div class="layui-col-md8">
				<div class="fly-panel">
					<div class="fly-panel-title fly-filter">
						<a>置顶</a>
						<canvas id="canvas"
							style="width:100px;float: right;margin-top: 18px">当前浏览器不支持canvas，请更换浏览器后再试</canvas>
					</div>
					<ul class="fly-gg">
						<!-- 循环显示置顶信息 -->
						<c:forEach items="${postlist }" var="pl">
							<li><a href="home.bb?usersid=${pl.users.usesid }"
								class="fly-avatar"> <img src="${pl.users.userpic }"
									alt="${pl.users.usersname}"
									class="layui-anim layui-anim-scaleSpring"> </a>
								<h2>

									<a class="layui-badge">${pl.posttype.ptypeName }</a> <a
										href="posts.bb?pid=${pl.pid }">${pl.ptitle }</a>
									<%-- <c:if test="${salary!=null}">
										
									</c:if>
									<c:if test="${salary==null}">
										<c:redirect url="login.jsp"></c:redirect>
									</c:if> --%>
								</h2>
								<div class="fly-list-info">
									<a href="home.bb?usersid=${pl.users.usesid }"> <cite>${pl.users.usersname}</cite>
										<i class="iconfont icon-renzheng"
										title="认证信息：${pl.users.usersname}"></i> <c:if
											test="${pl.users.grade>=0 and pl.users.grade<60}">
											<i class="layui-badge fly-badge-vip">LV 1</i>
										</c:if> <c:if test="${pl.users.grade>=60 and pl.users.grade<180}">
											<i class="layui-badge fly-badge-vip">LV 2</i>
										</c:if> <c:if test="${pl.users.grade>=180 and pl.users.grade<300}">
											<i class="layui-badge fly-badge-vip">LV 3</i>
										</c:if> <c:if test="${pl.users.grade>=300 and pl.users.grade<600}">
											<i class="layui-badge fly-badge-vip">LV 4</i>
										</c:if> <c:if test="${pl.users.grade>=600}">
											<i class="layui-badge fly-badge-vip">LV 5</i>
										</c:if> </a> <span><fmt:formatDate value="${pl.pdate }"
											pattern="yyyy年MM月dd日" /> </span> <span
										class="fly-list-kiss layui-hide-xs" title="悬赏飞吻"><i
										class="iconfont icon-kiss"></i>${pl.plike }</span> <span
										class="fly-list-nums"><i class="iconfont" title="人气">&#xe60b;</i>
										${pl.preadings }<i class="iconfont icon-pinglun1" title="回答"></i>${pl.pcomments
										} </span>
								</div>
								<div class="fly-list-badge">
									<c:if test="${pl.pelite == 1 }">
										<span class="layui-badge layui-bg-red" style="padding: 0 5px;">精帖</span>
									</c:if>
									<span class="layui-badge layui-bg-black"
										style="padding: 0 5px;">置顶</span>
								</div></li>
						</c:forEach>
					</ul>
				</div>

				<div class="fly-panel" style="margin-bottom: 0;height: 1486px;">
					<div class="layui-tab layui-tab-brief">
						<ul class="layui-tab-title">
							<c:if test="${nh==null}">
								<li class="layui-this"><a href="javascript:;">推荐</a>
								</li>
								<li><a href="javascript:;">精贴</a>
								</li>
								<li><a href="javascript:;">热看</a>
								</li>
								<li><a href="javascript:;">热议</a>
								</li>
							</c:if>
							<c:if test="${nh==1}">
								<li><a href="javascript:;">推荐</a>
								</li>
								<li class="layui-this"><a href="javascript:;">精贴</a>
								</li>
								<li><a href="javascript:;">热看</a>
								</li>
								<li><a href="javascript:;">热议</a>
								</li>
							</c:if>
							<c:if test="${nh==2}">
								<li><a href="javascript:;">推荐</a>
								</li>
								<li><a href="javascript:;">精贴</a>
								</li>
								<li class="layui-this"><a href="javascript:;">热看</a>
								</li>
								<li><a href="javascript:;">热议</a>
								</li>
							</c:if>
							<c:if test="${nh==3}">
								<li><a href="javascript:;">推荐</a>
								</li>
								<li><a href="javascript:;">精贴</a>
								</li>
								<li><a href="javascript:;">热看</a>
								</li>
								<li class="layui-this"><a href="javascript:;">热议</a>
								</li>
							</c:if>
						</ul>
						<div class="layui-tab-content">

							<c:if test="${nh==null}">
								<div class="layui-tab-item layui-show">
									<ul class="fly-list" id="demo1">
										<c:forEach items="${postall }" var="pall">
											<li><a href="home.bb?usersid=${pall.users.usesid }"
												class="fly-avatar"> <img src="${pall.users.userpic }"
													alt="${pall.users.usersname}"> </a>
												<h2>
													<a class="layui-badge">${pall.posttype.ptypeName }</a> <a
														href="posts.bb?pid=${pall.pid }">${pall.ptitle }</a>
												</h2>
												<div class="fly-list-info">
													<a href="home.bb?usersid=${pall.users.usesid }" link> <cite>${pall.users.usersname}
													</cite> <i class="iconfont icon-renzheng"
														title="认证信息：${pall.users.usersname}"></i> <c:if
															test="${pall.users.grade>=0 and pall.users.grade<60}">
															<i class="layui-badge fly-badge-vip">LV 1</i>
														</c:if> <c:if
															test="${pall.users.grade>=60 and pall.users.grade<180}">
															<i class="layui-badge fly-badge-vip">LV 2</i>
														</c:if> <c:if
															test="${pall.users.grade>=180 and pall.users.grade<300}">
															<i class="layui-badge fly-badge-vip">LV 3</i>
														</c:if> <c:if
															test="${pall.users.grade>=300 and pall.users.grade<600}">
															<i class="layui-badge fly-badge-vip">LV 4</i>
														</c:if> <c:if test="${pall.users.grade>=600}">
															<i class="layui-badge fly-badge-vip">LV 5</i>
														</c:if> </a> <span><fmt:formatDate value="${pall.pdate }"
															pattern="yyyy年MM月dd日" /> </span> <span
														class="fly-list-kiss layui-hide-xs" title="悬赏飞吻"> <i
														class="iconfont icon-kiss"></i> ${pall.plike } </span> <span
														class="fly-list-nums"> <i class="iconfont"
														title="人气">&#xe60b;</i> ${pall.preadings } <i
														class="iconfont icon-pinglun1" title="回答"></i>${pall.pcomments
														} </span>
												</div> <c:if test="${pall.pelite == 1 }">
													<div class="fly-list-badge">
														<span class="layui-badge layui-bg-red">精帖</span>
													</div>
												</c:if>
												<div class="tzimg">
													<%-- <p style="padding: 10px;">
										${pall.pcontent}
									</p> --%>

													<a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/7.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/8.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/9.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/10.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/11.jpg" width="100px"
														height="100px"> </a>
												</div>
											</li>
										</c:forEach>
									</ul>
									<div style="text-align: center;" class="fly-panel" id="page">
										推荐当前页数:[${tjpage.curPage}/${tjpage.totalPage }] 
										<c:if test="${tjpage.curPage>1}">
											<a href="tj.bb?curPage=1">首页</a>
											<a href="tj.bb?curPage=${tjpage.curPage-1}">上一页</a>
										</c:if>
										<c:if test="${tjpage.curPage<tjpage.totalPage}">
											<a href="tj.bb?curPage=${tjpage.curPage+1}">下一页</a>
											<a href="tj.bb?curPage=${tjpage.totalPage}">末页</a>
										</c:if>
									</div>
								</div>

								<div class="layui-tab-item">
									<ul class="fly-list" id="demo1">
										<c:forEach items="${postelite }" var="pall">
											<li><a href="home.bb?usersid=${pall.users.usesid }"
												class="fly-avatar"> <img src="${pall.users.userpic }"
													alt="${pall.users.usersname}"> </a>
												<h2>
													<a class="layui-badge">${pall.posttype.ptypeName }</a> <a
														href="posts.bb?pid=${pall.pid }">${pall.ptitle }</a>
												</h2>
												<div class="fly-list-info">
													<a href="home.bb?usersid=${pall.users.usesid }" link> <cite>${pall.users.usersname}
													</cite> <i class="iconfont icon-renzheng"
														title="认证信息：${pall.users.usersname}"></i> <c:if
															test="${pall.users.grade>=0 and pall.users.grade<60}">
															<i class="layui-badge fly-badge-vip">LV 1</i>
														</c:if> <c:if
															test="${pall.users.grade>=60 and pall.users.grade<180}">
															<i class="layui-badge fly-badge-vip">LV 2</i>
														</c:if> <c:if
															test="${pall.users.grade>=180 and pall.users.grade<300}">
															<i class="layui-badge fly-badge-vip">LV 3</i>
														</c:if> <c:if
															test="${pall.users.grade>=300 and pall.users.grade<600}">
															<i class="layui-badge fly-badge-vip">LV 4</i>
														</c:if> <c:if test="${pall.users.grade>=600}">
															<i class="layui-badge fly-badge-vip">LV 5</i>
														</c:if> </a> <span><fmt:formatDate value="${pall.pdate }"
															pattern="yyyy年MM月dd日" /> </span> <span
														class="fly-list-kiss layui-hide-xs" title="悬赏飞吻"> <i
														class="iconfont icon-kiss"></i> ${pall.plike } </span> <span
														class="fly-list-nums"> <i class="iconfont"
														title="人气">&#xe60b;</i> ${pall.preadings } <i
														class="iconfont icon-pinglun1" title="回答"></i>${pall.pcomments
														} </span>
												</div> <c:if test="${pall.pelite == 1 }">
													<div class="fly-list-badge">
														<span class="layui-badge layui-bg-red">精帖</span>
													</div>
												</c:if>
												<div class="tzimg">
													<%-- <p style="padding: 10px;">
										${pall.pcontent}
									</p> --%>

													<a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/7.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/8.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/9.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/10.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/11.jpg" width="100px"
														height="100px"> </a>
												</div>
											</li>
										</c:forEach>
									</ul>
									<div style="text-align: center;" class="fly-panel" id="page">
										推荐当前页数:[${jtpage.curPage}/${jtpage.totalPage }] 
										<c:if test="${jtpage.curPage>1}">
											<a href="jt.bb?curPage=1">首页</a>
											<a href="jt.bb?curPage=${jtpage.curPage-1}">上一页</a>
										</c:if>
										<c:if test="${jtpage.curPage<jtpage.totalPage}">
											<a href="jt.bb?curPage=${jtpage.curPage+1}">下一页</a>
											<a href="jt.bb?curPage=${jtpage.totalPage}">末页</a>
										</c:if>
									</div>
								</div>

								<div class="layui-tab-item">
									<ul class="fly-list" id="demo1">
										<c:forEach items="${postreading }" var="pall">
											<li><a href="home.bb?usersid=${pall.users.usesid }"
												class="fly-avatar"> <img src="${pall.users.userpic }"
													alt="${pall.users.usersname}"> </a>
												<h2>
													<a class="layui-badge">${pall.posttype.ptypeName }</a> <a
														href="posts.bb?pid=${pall.pid }">${pall.ptitle }</a>
												</h2>
												<div class="fly-list-info">
													<a href="home.bb?usersid=${pall.users.usesid }" link> <cite>${pall.users.usersname}
													</cite> <i class="iconfont icon-renzheng"
														title="认证信息：${pall.users.usersname}"></i> <c:if
															test="${pall.users.grade>=0 and pall.users.grade<60}">
															<i class="layui-badge fly-badge-vip">LV 1</i>
														</c:if> <c:if
															test="${pall.users.grade>=60 and pall.users.grade<180}">
															<i class="layui-badge fly-badge-vip">LV 2</i>
														</c:if> <c:if
															test="${pall.users.grade>=180 and pall.users.grade<300}">
															<i class="layui-badge fly-badge-vip">LV 3</i>
														</c:if> <c:if
															test="${pall.users.grade>=300 and pall.users.grade<600}">
															<i class="layui-badge fly-badge-vip">LV 4</i>
														</c:if> <c:if test="${pall.users.grade>=600}">
															<i class="layui-badge fly-badge-vip">LV 5</i>
														</c:if> </a> <span><fmt:formatDate value="${pall.pdate }"
															pattern="yyyy年MM月dd日" /> </span> <span
														class="fly-list-kiss layui-hide-xs" title="悬赏飞吻"> <i
														class="iconfont icon-kiss"></i> ${pall.plike } </span> <span
														class="fly-list-nums"> <i class="iconfont"
														title="人气">&#xe60b;</i> ${pall.preadings } <i
														class="iconfont icon-pinglun1" title="回答"></i>${pall.pcomments
														} </span>
												</div> <c:if test="${pall.pelite == 1 }">
													<div class="fly-list-badge">
														<span class="layui-badge layui-bg-red">精帖</span>
													</div>
												</c:if>
												<div class="tzimg">
													<%-- <p style="padding: 10px;">
										${pall.pcontent}
									</p> --%>

													<a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/7.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/8.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/9.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/10.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/11.jpg" width="100px"
														height="100px"> </a>
												</div>
											</li>
										</c:forEach>
									</ul>
									<div style="text-align: center;" class="fly-panel" id="page">
										推荐当前页数:[${rkpage.curPage}/${rkpage.totalPage }] 
										<c:if test="${rkpage.curPage>1}">
											<a href="rk.bb?curPage=1">首页</a>
											<a href="rk.bb?curPage=${rkpage.curPage-1}">上一页</a>
										</c:if>
										<c:if test="${rkpage.curPage<rkpage.totalPage}">
											<a href="rk.bb?curPage=${rkpage.curPage+1}">下一页</a>
											<a href="rk.bb?curPage=${rkpage.totalPage}">末页</a>
										</c:if>
									</div>
								</div>

								<div class="layui-tab-item">
									<ul class="fly-list" id="demo1">
										<c:forEach items="${postcomment }" var="pall">
											<li><a href="home.bb?usersid=${pall.users.usesid }"
												class="fly-avatar"> <img src="${pall.users.userpic }"
													alt="${pall.users.usersname}"> </a>
												<h2>
													<a class="layui-badge">${pall.posttype.ptypeName }</a> <a
														href="posts.bb?pid=${pall.pid }">${pall.ptitle }</a>
												</h2>
												<div class="fly-list-info">
													<a href="home.bb?usersid=${pall.users.usesid }" link> <cite>${pall.users.usersname}
													</cite> <i class="iconfont icon-renzheng"
														title="认证信息：${pall.users.usersname}"></i> <c:if
															test="${pall.users.grade>=0 and pall.users.grade<60}">
															<i class="layui-badge fly-badge-vip">LV 1</i>
														</c:if> <c:if
															test="${pall.users.grade>=60 and pall.users.grade<180}">
															<i class="layui-badge fly-badge-vip">LV 2</i>
														</c:if> <c:if
															test="${pall.users.grade>=180 and pall.users.grade<300}">
															<i class="layui-badge fly-badge-vip">LV 3</i>
														</c:if> <c:if
															test="${pall.users.grade>=300 and pall.users.grade<600}">
															<i class="layui-badge fly-badge-vip">LV 4</i>
														</c:if> <c:if test="${pall.users.grade>=600}">
															<i class="layui-badge fly-badge-vip">LV 5</i>
														</c:if> </a> <span><fmt:formatDate value="${pall.pdate }"
															pattern="yyyy年MM月dd日" /> </span> <span
														class="fly-list-kiss layui-hide-xs" title="悬赏飞吻"> <i
														class="iconfont icon-kiss"></i> ${pall.plike } </span> <span
														class="fly-list-nums"> <i class="iconfont"
														title="人气">&#xe60b;</i> ${pall.preadings } <i
														class="iconfont icon-pinglun1" title="回答"></i>${pall.pcomments
														} </span>
												</div> <c:if test="${pall.pelite == 1 }">
													<div class="fly-list-badge">
														<span class="layui-badge layui-bg-red">精帖</span>
													</div>
												</c:if>
												<div class="tzimg">
													<%-- <p style="padding: 10px;">
										${pall.pcontent}
									</p> --%>

													<a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/7.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/8.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/9.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/10.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/11.jpg" width="100px"
														height="100px"> </a>
												</div>
											</li>
										</c:forEach>
									</ul>
									<div style="text-align: center;" class="fly-panel" id="page">
										推荐当前页数:[${rypage.curPage}/${rypage.totalPage }] 
										<c:if test="${rypage.curPage>1}">
											<a href="ry.bb?curPage=1">首页</a>
											<a href="ry.bb?curPage=${rypage.curPage-1}">上一页</a>
										</c:if>
										<c:if test="${rypage.curPage<rypage.totalPage}">
											<a href="ry.bb?curPage=${rypage.curPage+1}">下一页</a>
											<a href="ry.bb?curPage=${rypage.totalPage}">末页</a>
										</c:if>
									</div>
								</div>
							</c:if>

							<c:if test="${nh==1}">
								<div class="layui-tab-item">
									<ul class="fly-list" id="demo1">
										<c:forEach items="${postall }" var="pall">
											<li><a href="home.bb?usersid=${pall.users.usesid }"
												class="fly-avatar"> <img src="${pall.users.userpic }"
													alt="${pall.users.usersname}"> </a>
												<h2>
													<a class="layui-badge">${pall.posttype.ptypeName }</a> <a
														href="posts.bb?pid=${pall.pid }">${pall.ptitle }</a>
												</h2>
												<div class="fly-list-info">
													<a href="home.bb?usersid=${pall.users.usesid }" link> <cite>${pall.users.usersname}
													</cite> <i class="iconfont icon-renzheng"
														title="认证信息：${pall.users.usersname}"></i> <c:if
															test="${pall.users.grade>=0 and pall.users.grade<60}">
															<i class="layui-badge fly-badge-vip">LV 1</i>
														</c:if> <c:if
															test="${pall.users.grade>=60 and pall.users.grade<180}">
															<i class="layui-badge fly-badge-vip">LV 2</i>
														</c:if> <c:if
															test="${pall.users.grade>=180 and pall.users.grade<300}">
															<i class="layui-badge fly-badge-vip">LV 3</i>
														</c:if> <c:if
															test="${pall.users.grade>=300 and pall.users.grade<600}">
															<i class="layui-badge fly-badge-vip">LV 4</i>
														</c:if> <c:if test="${pall.users.grade>=600}">
															<i class="layui-badge fly-badge-vip">LV 5</i>
														</c:if> </a> <span><fmt:formatDate value="${pall.pdate }"
															pattern="yyyy年MM月dd日" /> </span> <span
														class="fly-list-kiss layui-hide-xs" title="悬赏飞吻"> <i
														class="iconfont icon-kiss"></i> ${pall.plike } </span> <span
														class="fly-list-nums"> <i class="iconfont"
														title="人气">&#xe60b;</i> ${pall.preadings } <i
														class="iconfont icon-pinglun1" title="回答"></i>${pall.pcomments
														} </span>
												</div> <c:if test="${pall.pelite == 1 }">
													<div class="fly-list-badge">
														<span class="layui-badge layui-bg-red">精帖</span>
													</div>
												</c:if>
												<div class="tzimg">
													<%-- <p style="padding: 10px;">
										${pall.pcontent}
									</p> --%>

													<a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/7.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/8.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/9.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/10.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/11.jpg" width="100px"
														height="100px"> </a>
												</div>
											</li>
										</c:forEach>
									</ul>
									<div style="text-align: center;" class="fly-panel" id="page">
										推荐当前页数:[${tjpage.curPage}/${tjpage.totalPage }] 
										<c:if test="${tjpage.curPage>1}">
											<a href="tj.bb?curPage=1">首页</a>
											<a href="tj.bb?curPage=${tjpage.curPage-1}">上一页</a>
										</c:if>
										<c:if test="${tjpage.curPage<tjpage.totalPage}">
											<a href="tj.bb?curPage=${tjpage.curPage+1}">下一页</a>
											<a href="tj.bb?curPage=${tjpage.totalPage}">末页</a>
										</c:if>
									</div>
								</div>

								<div class="layui-tab-item layui-show">
									<ul class="fly-list" id="demo1">
										<c:forEach items="${postelite }" var="pall">
											<li><a href="home.bb?usersid=${pall.users.usesid }"
												class="fly-avatar"> <img src="${pall.users.userpic }"
													alt="${pall.users.usersname}"> </a>
												<h2>
													<a class="layui-badge">${pall.posttype.ptypeName }</a> <a
														href="posts.bb?pid=${pall.pid }">${pall.ptitle }</a>
												</h2>
												<div class="fly-list-info">
													<a href="home.bb?usersid=${pall.users.usesid }" link> <cite>${pall.users.usersname}
													</cite> <i class="iconfont icon-renzheng"
														title="认证信息：${pall.users.usersname}"></i> <c:if
															test="${pall.users.grade>=0 and pall.users.grade<60}">
															<i class="layui-badge fly-badge-vip">LV 1</i>
														</c:if> <c:if
															test="${pall.users.grade>=60 and pall.users.grade<180}">
															<i class="layui-badge fly-badge-vip">LV 2</i>
														</c:if> <c:if
															test="${pall.users.grade>=180 and pall.users.grade<300}">
															<i class="layui-badge fly-badge-vip">LV 3</i>
														</c:if> <c:if
															test="${pall.users.grade>=300 and pall.users.grade<600}">
															<i class="layui-badge fly-badge-vip">LV 4</i>
														</c:if> <c:if test="${pall.users.grade>=600}">
															<i class="layui-badge fly-badge-vip">LV 5</i>
														</c:if> </a> <span><fmt:formatDate value="${pall.pdate }"
															pattern="yyyy年MM月dd日" /> </span> <span
														class="fly-list-kiss layui-hide-xs" title="悬赏飞吻"> <i
														class="iconfont icon-kiss"></i> ${pall.plike } </span> <span
														class="fly-list-nums"> <i class="iconfont"
														title="人气">&#xe60b;</i> ${pall.preadings } <i
														class="iconfont icon-pinglun1" title="回答"></i>${pall.pcomments
														} </span>
												</div> <c:if test="${pall.pelite == 1 }">
													<div class="fly-list-badge">
														<span class="layui-badge layui-bg-red">精帖</span>
													</div>
												</c:if>
												<div class="tzimg">
													<%-- <p style="padding: 10px;">
										${pall.pcontent}
									</p> --%>

													<a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/7.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/8.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/9.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/10.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/11.jpg" width="100px"
														height="100px"> </a>
												</div>
											</li>
										</c:forEach>
									</ul>
									<div style="text-align: center;" class="fly-panel" id="page">
										推荐当前页数:[${jtpage.curPage}/${jtpage.totalPage }] 
										<c:if test="${jtpage.curPage>1}">
											<a href="jt.bb?curPage=1">首页</a>
											<a href="jt.bb?curPage=${jtpage.curPage-1}">上一页</a>
										</c:if>
										<c:if test="${jtpage.curPage<jtpage.totalPage}">
											<a href="jt.bb?curPage=${jtpage.curPage+1}">下一页</a>
											<a href="jt.bb?curPage=${jtpage.totalPage}">末页</a>
										</c:if>
									</div>
								</div>

								<div class="layui-tab-item">
									<ul class="fly-list" id="demo1">
										<c:forEach items="${postreading }" var="pall">
											<li><a href="home.bb?usersid=${pall.users.usesid }"
												class="fly-avatar"> <img src="${pall.users.userpic }"
													alt="${pall.users.usersname}"> </a>
												<h2>
													<a class="layui-badge">${pall.posttype.ptypeName }</a> <a
														href="posts.bb?pid=${pall.pid }">${pall.ptitle }</a>
												</h2>
												<div class="fly-list-info">
													<a href="home.bb?usersid=${pall.users.usesid }" link> <cite>${pall.users.usersname}
													</cite> <i class="iconfont icon-renzheng"
														title="认证信息：${pall.users.usersname}"></i> <c:if
															test="${pall.users.grade>=0 and pall.users.grade<60}">
															<i class="layui-badge fly-badge-vip">LV 1</i>
														</c:if> <c:if
															test="${pall.users.grade>=60 and pall.users.grade<180}">
															<i class="layui-badge fly-badge-vip">LV 2</i>
														</c:if> <c:if
															test="${pall.users.grade>=180 and pall.users.grade<300}">
															<i class="layui-badge fly-badge-vip">LV 3</i>
														</c:if> <c:if
															test="${pall.users.grade>=300 and pall.users.grade<600}">
															<i class="layui-badge fly-badge-vip">LV 4</i>
														</c:if> <c:if test="${pall.users.grade>=600}">
															<i class="layui-badge fly-badge-vip">LV 5</i>
														</c:if> </a> <span><fmt:formatDate value="${pall.pdate }"
															pattern="yyyy年MM月dd日" /> </span> <span
														class="fly-list-kiss layui-hide-xs" title="悬赏飞吻"> <i
														class="iconfont icon-kiss"></i> ${pall.plike } </span> <span
														class="fly-list-nums"> <i class="iconfont"
														title="人气">&#xe60b;</i> ${pall.preadings } <i
														class="iconfont icon-pinglun1" title="回答"></i>${pall.pcomments
														} </span>
												</div> <c:if test="${pall.pelite == 1 }">
													<div class="fly-list-badge">
														<span class="layui-badge layui-bg-red">精帖</span>
													</div>
												</c:if>
												<div class="tzimg">
													<%-- <p style="padding: 10px;">
										${pall.pcontent}
									</p> --%>

													<a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/7.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/8.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/9.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/10.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/11.jpg" width="100px"
														height="100px"> </a>
												</div>
											</li>
										</c:forEach>
									</ul>
									<div style="text-align: center;" class="fly-panel" id="page">
										推荐当前页数:[${rkpage.curPage}/${rkpage.totalPage }] 
										<c:if test="${rkpage.curPage>1}">
											<a href="rk.bb?curPage=1">首页</a>
											<a href="rk.bb?curPage=${rkpage.curPage-1}">上一页</a>
										</c:if>
										<c:if test="${rkpage.curPage<rkpage.totalPage}">
											<a href="rk.bb?curPage=${rkpage.curPage+1}">下一页</a>
											<a href="rk.bb?curPage=${rkpage.totalPage}">末页</a>
										</c:if>
									</div>
								</div>

								<div class="layui-tab-item">
									<ul class="fly-list" id="demo1">
										<c:forEach items="${postcomment }" var="pall">
											<li><a href="home.bb?usersid=${pall.users.usesid }"
												class="fly-avatar"> <img src="${pall.users.userpic }"
													alt="${pall.users.usersname}"> </a>
												<h2>
													<a class="layui-badge">${pall.posttype.ptypeName }</a> <a
														href="posts.bb?pid=${pall.pid }">${pall.ptitle }</a>
												</h2>
												<div class="fly-list-info">
													<a href="home.bb?usersid=${pall.users.usesid }" link> <cite>${pall.users.usersname}
													</cite> <i class="iconfont icon-renzheng"
														title="认证信息：${pall.users.usersname}"></i> <c:if
															test="${pall.users.grade>=0 and pall.users.grade<60}">
															<i class="layui-badge fly-badge-vip">LV 1</i>
														</c:if> <c:if
															test="${pall.users.grade>=60 and pall.users.grade<180}">
															<i class="layui-badge fly-badge-vip">LV 2</i>
														</c:if> <c:if
															test="${pall.users.grade>=180 and pall.users.grade<300}">
															<i class="layui-badge fly-badge-vip">LV 3</i>
														</c:if> <c:if
															test="${pall.users.grade>=300 and pall.users.grade<600}">
															<i class="layui-badge fly-badge-vip">LV 4</i>
														</c:if> <c:if test="${pall.users.grade>=600}">
															<i class="layui-badge fly-badge-vip">LV 5</i>
														</c:if> </a> <span><fmt:formatDate value="${pall.pdate }"
															pattern="yyyy年MM月dd日" /> </span> <span
														class="fly-list-kiss layui-hide-xs" title="悬赏飞吻"> <i
														class="iconfont icon-kiss"></i> ${pall.plike } </span> <span
														class="fly-list-nums"> <i class="iconfont"
														title="人气">&#xe60b;</i> ${pall.preadings } <i
														class="iconfont icon-pinglun1" title="回答"></i>${pall.pcomments
														} </span>
												</div> <c:if test="${pall.pelite == 1 }">
													<div class="fly-list-badge">
														<span class="layui-badge layui-bg-red">精帖</span>
													</div>
												</c:if>
												<div class="tzimg">
													<%-- <p style="padding: 10px;">
										${pall.pcontent}
									</p> --%>

													<a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/7.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/8.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/9.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/10.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/11.jpg" width="100px"
														height="100px"> </a>
												</div>
											</li>
										</c:forEach>
									</ul>
									<div style="text-align: center;" class="fly-panel" id="page">
										推荐当前页数:[${rypage.curPage}/${rypage.totalPage }] 
										<c:if test="${rypage.curPage>1}">
											<a href="ry.bb?curPage=1">首页</a>
											<a href="ry.bb?curPage=${rypage.curPage-1}">上一页</a>
										</c:if>
										<c:if test="${rypage.curPage<rypage.totalPage}">
											<a href="ry.bb?curPage=${rypage.curPage+1}">下一页</a>
											<a href="ry.bb?curPage=${rypage.totalPage}">末页</a>
										</c:if>
									</div>
								</div>
							</c:if>

							<c:if test="${nh==2}">
								<div class="layui-tab-item">
									<ul class="fly-list" id="demo1">
										<c:forEach items="${postall }" var="pall">
											<li><a href="home.bb?usersid=${pall.users.usesid }"
												class="fly-avatar"> <img src="${pall.users.userpic }"
													alt="${pall.users.usersname}"> </a>
												<h2>
													<a class="layui-badge">${pall.posttype.ptypeName }</a> <a
														href="posts.bb?pid=${pall.pid }">${pall.ptitle }</a>
												</h2>
												<div class="fly-list-info">
													<a href="home.bb?usersid=${pall.users.usesid }" link> <cite>${pall.users.usersname}
													</cite> <i class="iconfont icon-renzheng"
														title="认证信息：${pall.users.usersname}"></i> <c:if
															test="${pall.users.grade>=0 and pall.users.grade<60}">
															<i class="layui-badge fly-badge-vip">LV 1</i>
														</c:if> <c:if
															test="${pall.users.grade>=60 and pall.users.grade<180}">
															<i class="layui-badge fly-badge-vip">LV 2</i>
														</c:if> <c:if
															test="${pall.users.grade>=180 and pall.users.grade<300}">
															<i class="layui-badge fly-badge-vip">LV 3</i>
														</c:if> <c:if
															test="${pall.users.grade>=300 and pall.users.grade<600}">
															<i class="layui-badge fly-badge-vip">LV 4</i>
														</c:if> <c:if test="${pall.users.grade>=600}">
															<i class="layui-badge fly-badge-vip">LV 5</i>
														</c:if> </a> <span><fmt:formatDate value="${pall.pdate }"
															pattern="yyyy年MM月dd日" /> </span> <span
														class="fly-list-kiss layui-hide-xs" title="悬赏飞吻"> <i
														class="iconfont icon-kiss"></i> ${pall.plike } </span> <span
														class="fly-list-nums"> <i class="iconfont"
														title="人气">&#xe60b;</i> ${pall.preadings } <i
														class="iconfont icon-pinglun1" title="回答"></i>${pall.pcomments
														} </span>
												</div> <c:if test="${pall.pelite == 1 }">
													<div class="fly-list-badge">
														<span class="layui-badge layui-bg-red">精帖</span>
													</div>
												</c:if>
												<div class="tzimg">
													<%-- <p style="padding: 10px;">
										${pall.pcontent}
									</p> --%>

													<a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/7.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/8.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/9.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/10.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/11.jpg" width="100px"
														height="100px"> </a>
												</div>
											</li>
										</c:forEach>
									</ul>
									<div style="text-align: center;" class="fly-panel" id="page">
										推荐当前页数:[${tjpage.curPage}/${tjpage.totalPage }] 
										<c:if test="${tjpage.curPage>1}">
											<a href="tj.bb?curPage=1">首页</a>
											<a href="tj.bb?curPage=${tjpage.curPage-1}">上一页</a>
										</c:if>
										<c:if test="${tjpage.curPage<tjpage.totalPage}">
											<a href="tj.bb?curPage=${tjpage.curPage+1}">下一页</a>
											<a href="tj.bb?curPage=${tjpage.totalPage}">末页</a>
										</c:if>
									</div>
								</div>

								<div class="layui-tab-item">
									<ul class="fly-list" id="demo1">
										<c:forEach items="${postelite }" var="pall">
											<li><a href="home.bb?usersid=${pall.users.usesid }"
												class="fly-avatar"> <img src="${pall.users.userpic }"
													alt="${pall.users.usersname}"> </a>
												<h2>
													<a class="layui-badge">${pall.posttype.ptypeName }</a> <a
														href="posts.bb?pid=${pall.pid }">${pall.ptitle }</a>
												</h2>
												<div class="fly-list-info">
													<a href="home.bb?usersid=${pall.users.usesid }" link> <cite>${pall.users.usersname}
													</cite> <i class="iconfont icon-renzheng"
														title="认证信息：${pall.users.usersname}"></i> <c:if
															test="${pall.users.grade>=0 and pall.users.grade<60}">
															<i class="layui-badge fly-badge-vip">LV 1</i>
														</c:if> <c:if
															test="${pall.users.grade>=60 and pall.users.grade<180}">
															<i class="layui-badge fly-badge-vip">LV 2</i>
														</c:if> <c:if
															test="${pall.users.grade>=180 and pall.users.grade<300}">
															<i class="layui-badge fly-badge-vip">LV 3</i>
														</c:if> <c:if
															test="${pall.users.grade>=300 and pall.users.grade<600}">
															<i class="layui-badge fly-badge-vip">LV 4</i>
														</c:if> <c:if test="${pall.users.grade>=600}">
															<i class="layui-badge fly-badge-vip">LV 5</i>
														</c:if> </a> <span><fmt:formatDate value="${pall.pdate }"
															pattern="yyyy年MM月dd日" /> </span> <span
														class="fly-list-kiss layui-hide-xs" title="悬赏飞吻"> <i
														class="iconfont icon-kiss"></i> ${pall.plike } </span> <span
														class="fly-list-nums"> <i class="iconfont"
														title="人气">&#xe60b;</i> ${pall.preadings } <i
														class="iconfont icon-pinglun1" title="回答"></i>${pall.pcomments
														} </span>
												</div> <c:if test="${pall.pelite == 1 }">
													<div class="fly-list-badge">
														<span class="layui-badge layui-bg-red">精帖</span>
													</div>
												</c:if>
												<div class="tzimg">
													<%-- <p style="padding: 10px;">
										${pall.pcontent}
									</p> --%>

													<a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/7.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/8.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/9.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/10.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/11.jpg" width="100px"
														height="100px"> </a>
												</div>
											</li>
										</c:forEach>
									</ul>
									<div style="text-align: center;" class="fly-panel" id="page">
										推荐当前页数:[${jtpage.curPage}/${jtpage.totalPage }] 
										<c:if test="${jtpage.curPage>1}">
											<a href="jt.bb?curPage=1">首页</a>
											<a href="jt.bb?curPage=${jtpage.curPage-1}">上一页</a>
										</c:if>
										<c:if test="${jtpage.curPage<jtpage.totalPage}">
											<a href="jt.bb?curPage=${jtpage.curPage+1}">下一页</a>
											<a href="jt.bb?curPage=${jtpage.totalPage}">末页</a>
										</c:if>
									</div>
								</div>

								<div class="layui-tab-item layui-show">
									<ul class="fly-list" id="demo1">
										<c:forEach items="${postreading }" var="pall">
											<li><a href="home.bb?usersid=${pall.users.usesid }"
												class="fly-avatar"> <img src="${pall.users.userpic }"
													alt="${pall.users.usersname}"> </a>
												<h2>
													<a class="layui-badge">${pall.posttype.ptypeName }</a> <a
														href="posts.bb?pid=${pall.pid }">${pall.ptitle }</a>
												</h2>
												<div class="fly-list-info">
													<a href="home.bb?usersid=${pall.users.usesid }" link> <cite>${pall.users.usersname}
													</cite> <i class="iconfont icon-renzheng"
														title="认证信息：${pall.users.usersname}"></i> <c:if
															test="${pall.users.grade>=0 and pall.users.grade<60}">
															<i class="layui-badge fly-badge-vip">LV 1</i>
														</c:if> <c:if
															test="${pall.users.grade>=60 and pall.users.grade<180}">
															<i class="layui-badge fly-badge-vip">LV 2</i>
														</c:if> <c:if
															test="${pall.users.grade>=180 and pall.users.grade<300}">
															<i class="layui-badge fly-badge-vip">LV 3</i>
														</c:if> <c:if
															test="${pall.users.grade>=300 and pall.users.grade<600}">
															<i class="layui-badge fly-badge-vip">LV 4</i>
														</c:if> <c:if test="${pall.users.grade>=600}">
															<i class="layui-badge fly-badge-vip">LV 5</i>
														</c:if> </a> <span><fmt:formatDate value="${pall.pdate }"
															pattern="yyyy年MM月dd日" /> </span> <span
														class="fly-list-kiss layui-hide-xs" title="悬赏飞吻"> <i
														class="iconfont icon-kiss"></i> ${pall.plike } </span> <span
														class="fly-list-nums"> <i class="iconfont"
														title="人气">&#xe60b;</i> ${pall.preadings } <i
														class="iconfont icon-pinglun1" title="回答"></i>${pall.pcomments
														} </span>
												</div> <c:if test="${pall.pelite == 1 }">
													<div class="fly-list-badge">
														<span class="layui-badge layui-bg-red">精帖</span>
													</div>
												</c:if>
												<div class="tzimg">
													<%-- <p style="padding: 10px;">
										${pall.pcontent}
									</p> --%>

													<a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/7.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/8.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/9.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/10.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/11.jpg" width="100px"
														height="100px"> </a>
												</div>
											</li>
										</c:forEach>
									</ul>
									<div style="text-align: center;" class="fly-panel" id="page">
										推荐当前页数:[${rkpage.curPage}/${rkpage.totalPage }] 
										<c:if test="${rkpage.curPage>1}">
											<a href="rk.bb?curPage=1">首页</a>
											<a href="rk.bb?curPage=${rkpage.curPage-1}">上一页</a>
										</c:if>
										<c:if test="${rkpage.curPage<rkpage.totalPage}">
											<a href="rk.bb?curPage=${rkpage.curPage+1}">下一页</a>
											<a href="rk.bb?curPage=${rkpage.totalPage}">末页</a>
										</c:if>
									</div>
								</div>

								<div class="layui-tab-item">
									<ul class="fly-list" id="demo1">
										<c:forEach items="${postcomment }" var="pall">
											<li><a href="home.bb?usersid=${pall.users.usesid }"
												class="fly-avatar"> <img src="${pall.users.userpic }"
													alt="${pall.users.usersname}"> </a>
												<h2>
													<a class="layui-badge">${pall.posttype.ptypeName }</a> <a
														href="posts.bb?pid=${pall.pid }">${pall.ptitle }</a>
												</h2>
												<div class="fly-list-info">
													<a href="home.bb?usersid=${pall.users.usesid }" link> <cite>${pall.users.usersname}
													</cite> <i class="iconfont icon-renzheng"
														title="认证信息：${pall.users.usersname}"></i> <c:if
															test="${pall.users.grade>=0 and pall.users.grade<60}">
															<i class="layui-badge fly-badge-vip">LV 1</i>
														</c:if> <c:if
															test="${pall.users.grade>=60 and pall.users.grade<180}">
															<i class="layui-badge fly-badge-vip">LV 2</i>
														</c:if> <c:if
															test="${pall.users.grade>=180 and pall.users.grade<300}">
															<i class="layui-badge fly-badge-vip">LV 3</i>
														</c:if> <c:if
															test="${pall.users.grade>=300 and pall.users.grade<600}">
															<i class="layui-badge fly-badge-vip">LV 4</i>
														</c:if> <c:if test="${pall.users.grade>=600}">
															<i class="layui-badge fly-badge-vip">LV 5</i>
														</c:if> </a> <span><fmt:formatDate value="${pall.pdate }"
															pattern="yyyy年MM月dd日" /> </span> <span
														class="fly-list-kiss layui-hide-xs" title="悬赏飞吻"> <i
														class="iconfont icon-kiss"></i> ${pall.plike } </span> <span
														class="fly-list-nums"> <i class="iconfont"
														title="人气">&#xe60b;</i> ${pall.preadings } <i
														class="iconfont icon-pinglun1" title="回答"></i>${pall.pcomments
														} </span>
												</div> <c:if test="${pall.pelite == 1 }">
													<div class="fly-list-badge">
														<span class="layui-badge layui-bg-red">精帖</span>
													</div>
												</c:if>
												<div class="tzimg">
													<%-- <p style="padding: 10px;">
										${pall.pcontent}
									</p> --%>

													<a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/7.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/8.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/9.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/10.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/11.jpg" width="100px"
														height="100px"> </a>
												</div>
											</li>
										</c:forEach>
									</ul>
									<div style="text-align: center;" class="fly-panel" id="page">
										推荐当前页数:[${rypage.curPage}/${rypage.totalPage }] 
										<c:if test="${rypage.curPage>1}">
											<a href="ry.bb?curPage=1">首页</a>
											<a href="ry.bb?curPage=${rypage.curPage-1}">上一页</a>
										</c:if>
										<c:if test="${rypage.curPage<rypage.totalPage}">
											<a href="ry.bb?curPage=${rypage.curPage+1}">下一页</a>
											<a href="ry.bb?curPage=${rypage.totalPage}">末页</a>
										</c:if>
									</div>
								</div>
							</c:if>

							<c:if test="${nh==3}">
								<div class="layui-tab-item">
									<ul class="fly-list" id="demo1">
										<c:forEach items="${postall }" var="pall">
											<li><a href="home.bb?usersid=${pall.users.usesid }"
												class="fly-avatar"> <img src="${pall.users.userpic }"
													alt="${pall.users.usersname}"> </a>
												<h2>
													<a class="layui-badge">${pall.posttype.ptypeName }</a> <a
														href="posts.bb?pid=${pall.pid }">${pall.ptitle }</a>
												</h2>
												<div class="fly-list-info">
													<a href="home.bb?usersid=${pall.users.usesid }" link> <cite>${pall.users.usersname}
													</cite> <i class="iconfont icon-renzheng"
														title="认证信息：${pall.users.usersname}"></i> <c:if
															test="${pall.users.grade>=0 and pall.users.grade<60}">
															<i class="layui-badge fly-badge-vip">LV 1</i>
														</c:if> <c:if
															test="${pall.users.grade>=60 and pall.users.grade<180}">
															<i class="layui-badge fly-badge-vip">LV 2</i>
														</c:if> <c:if
															test="${pall.users.grade>=180 and pall.users.grade<300}">
															<i class="layui-badge fly-badge-vip">LV 3</i>
														</c:if> <c:if
															test="${pall.users.grade>=300 and pall.users.grade<600}">
															<i class="layui-badge fly-badge-vip">LV 4</i>
														</c:if> <c:if test="${pall.users.grade>=600}">
															<i class="layui-badge fly-badge-vip">LV 5</i>
														</c:if> </a> <span><fmt:formatDate value="${pall.pdate }"
															pattern="yyyy年MM月dd日" /> </span> <span
														class="fly-list-kiss layui-hide-xs" title="悬赏飞吻"> <i
														class="iconfont icon-kiss"></i> ${pall.plike } </span> <span
														class="fly-list-nums"> <i class="iconfont"
														title="人气">&#xe60b;</i> ${pall.preadings } <i
														class="iconfont icon-pinglun1" title="回答"></i>${pall.pcomments
														} </span>
												</div> <c:if test="${pall.pelite == 1 }">
													<div class="fly-list-badge">
														<span class="layui-badge layui-bg-red">精帖</span>
													</div>
												</c:if>
												<div class="tzimg">
													<%-- <p style="padding: 10px;">
										${pall.pcontent}
									</p> --%>

													<a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/7.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/8.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/9.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/10.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/11.jpg" width="100px"
														height="100px"> </a>
												</div>
											</li>
										</c:forEach>
									</ul>
									<div style="text-align: center;" class="fly-panel" id="page">
										推荐当前页数:[${tjpage.curPage}/${tjpage.totalPage }] 
										<c:if test="${tjpage.curPage>1}">
											<a href="tj.bb?curPage=1">首页</a>
											<a href="tj.bb?curPage=${tjpage.curPage-1}">上一页</a>
										</c:if>
										<c:if test="${tjpage.curPage<tjpage.totalPage}">
											<a href="tj.bb?curPage=${tjpage.curPage+1}">下一页</a>
											<a href="tj.bb?curPage=${tjpage.totalPage}">末页</a>
										</c:if>
									</div>
								</div>

								<div class="layui-tab-item">
									<ul class="fly-list" id="demo1">
										<c:forEach items="${postelite }" var="pall">
											<li><a href="home.bb?usersid=${pall.users.usesid }"
												class="fly-avatar"> <img src="${pall.users.userpic }"
													alt="${pall.users.usersname}"> </a>
												<h2>
													<a class="layui-badge">${pall.posttype.ptypeName }</a> <a
														href="posts.bb?pid=${pall.pid }">${pall.ptitle }</a>
												</h2>
												<div class="fly-list-info">
													<a href="home.bb?usersid=${pall.users.usesid }" link> <cite>${pall.users.usersname}
													</cite> <i class="iconfont icon-renzheng"
														title="认证信息：${pall.users.usersname}"></i> <c:if
															test="${pall.users.grade>=0 and pall.users.grade<60}">
															<i class="layui-badge fly-badge-vip">LV 1</i>
														</c:if> <c:if
															test="${pall.users.grade>=60 and pall.users.grade<180}">
															<i class="layui-badge fly-badge-vip">LV 2</i>
														</c:if> <c:if
															test="${pall.users.grade>=180 and pall.users.grade<300}">
															<i class="layui-badge fly-badge-vip">LV 3</i>
														</c:if> <c:if
															test="${pall.users.grade>=300 and pall.users.grade<600}">
															<i class="layui-badge fly-badge-vip">LV 4</i>
														</c:if> <c:if test="${pall.users.grade>=600}">
															<i class="layui-badge fly-badge-vip">LV 5</i>
														</c:if> </a> <span><fmt:formatDate value="${pall.pdate }"
															pattern="yyyy年MM月dd日" /> </span> <span
														class="fly-list-kiss layui-hide-xs" title="悬赏飞吻"> <i
														class="iconfont icon-kiss"></i> ${pall.plike } </span> <span
														class="fly-list-nums"> <i class="iconfont"
														title="人气">&#xe60b;</i> ${pall.preadings } <i
														class="iconfont icon-pinglun1" title="回答"></i>${pall.pcomments
														} </span>
												</div> <c:if test="${pall.pelite == 1 }">
													<div class="fly-list-badge">
														<span class="layui-badge layui-bg-red">精帖</span>
													</div>
												</c:if>
												<div class="tzimg">
													<%-- <p style="padding: 10px;">
										${pall.pcontent}
									</p> --%>

													<a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/7.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/8.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/9.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/10.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/11.jpg" width="100px"
														height="100px"> </a>
												</div>
											</li>
										</c:forEach>
									</ul>
									<div style="text-align: center;" class="fly-panel" id="page">
										推荐当前页数:[${jtpage.curPage}/${jtpage.totalPage }] 
										<c:if test="${jtpage.curPage>1}">
											<a href="jt.bb?curPage=1">首页</a>
											<a href="jt.bb?curPage=${jtpage.curPage-1}">上一页</a>
										</c:if>
										<c:if test="${jtpage.curPage<jtpage.totalPage}">
											<a href="jt.bb?curPage=${jtpage.curPage+1}">下一页</a>
											<a href="jt.bb?curPage=${jtpage.totalPage}">末页</a>
										</c:if>
									</div>
								</div>

								<div class="layui-tab-item">
									<ul class="fly-list" id="demo1">
										<c:forEach items="${postreading }" var="pall">
											<li><a href="home.bb?usersid=${pall.users.usesid }"
												class="fly-avatar"> <img src="${pall.users.userpic }"
													alt="${pall.users.usersname}"> </a>
												<h2>
													<a class="layui-badge">${pall.posttype.ptypeName }</a> <a
														href="posts.bb?pid=${pall.pid }">${pall.ptitle }</a>
												</h2>
												<div class="fly-list-info">
													<a href="home.bb?usersid=${pall.users.usesid }" link> <cite>${pall.users.usersname}
													</cite> <i class="iconfont icon-renzheng"
														title="认证信息：${pall.users.usersname}"></i> <c:if
															test="${pall.users.grade>=0 and pall.users.grade<60}">
															<i class="layui-badge fly-badge-vip">LV 1</i>
														</c:if> <c:if
															test="${pall.users.grade>=60 and pall.users.grade<180}">
															<i class="layui-badge fly-badge-vip">LV 2</i>
														</c:if> <c:if
															test="${pall.users.grade>=180 and pall.users.grade<300}">
															<i class="layui-badge fly-badge-vip">LV 3</i>
														</c:if> <c:if
															test="${pall.users.grade>=300 and pall.users.grade<600}">
															<i class="layui-badge fly-badge-vip">LV 4</i>
														</c:if> <c:if test="${pall.users.grade>=600}">
															<i class="layui-badge fly-badge-vip">LV 5</i>
														</c:if> </a> <span><fmt:formatDate value="${pall.pdate }"
															pattern="yyyy年MM月dd日" /> </span> <span
														class="fly-list-kiss layui-hide-xs" title="悬赏飞吻"> <i
														class="iconfont icon-kiss"></i> ${pall.plike } </span> <span
														class="fly-list-nums"> <i class="iconfont"
														title="人气">&#xe60b;</i> ${pall.preadings } <i
														class="iconfont icon-pinglun1" title="回答"></i>${pall.pcomments
														} </span>
												</div> <c:if test="${pall.pelite == 1 }">
													<div class="fly-list-badge">
														<span class="layui-badge layui-bg-red">精帖</span>
													</div>
												</c:if>
												<div class="tzimg">
													<%-- <p style="padding: 10px;">
										${pall.pcontent}
									</p> --%>

													<a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/7.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/8.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/9.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/10.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/11.jpg" width="100px"
														height="100px"> </a>
												</div>
											</li>
										</c:forEach>
									</ul>
									<div style="text-align: center;" class="fly-panel" id="page">
										推荐当前页数:[${rkpage.curPage}/${rkpage.totalPage }] 
										<c:if test="${rkpage.curPage>1}">
											<a href="rk.bb?curPage=1">首页</a>
											<a href="rk.bb?curPage=${rkpage.curPage-1}">上一页</a>
										</c:if>
										<c:if test="${rkpage.curPage<rkpage.totalPage}">
											<a href="rk.bb?curPage=${rkpage.curPage+1}">下一页</a>
											<a href="rk.bb?curPage=${rkpage.totalPage}">末页</a>
										</c:if>
									</div>
								</div>

								<div class="layui-tab-item layui-show">
									<ul class="fly-list" id="demo1">
										<c:forEach items="${postcomment }" var="pall">
											<li><a href="home.bb?usersid=${pall.users.usesid }"
												class="fly-avatar"> <img src="${pall.users.userpic }"
													alt="${pall.users.usersname}"> </a>
												<h2>
													<a class="layui-badge">${pall.posttype.ptypeName }</a> <a
														href="posts.bb?pid=${pall.pid }">${pall.ptitle }</a>
												</h2>
												<div class="fly-list-info">
													<a href="home.bb?usersid=${pall.users.usesid }" link> <cite>${pall.users.usersname}
													</cite> <i class="iconfont icon-renzheng"
														title="认证信息：${pall.users.usersname}"></i> <c:if
															test="${pall.users.grade>=0 and pall.users.grade<60}">
															<i class="layui-badge fly-badge-vip">LV 1</i>
														</c:if> <c:if
															test="${pall.users.grade>=60 and pall.users.grade<180}">
															<i class="layui-badge fly-badge-vip">LV 2</i>
														</c:if> <c:if
															test="${pall.users.grade>=180 and pall.users.grade<300}">
															<i class="layui-badge fly-badge-vip">LV 3</i>
														</c:if> <c:if
															test="${pall.users.grade>=300 and pall.users.grade<600}">
															<i class="layui-badge fly-badge-vip">LV 4</i>
														</c:if> <c:if test="${pall.users.grade>=600}">
															<i class="layui-badge fly-badge-vip">LV 5</i>
														</c:if> </a> <span><fmt:formatDate value="${pall.pdate }"
															pattern="yyyy年MM月dd日" /> </span> <span
														class="fly-list-kiss layui-hide-xs" title="悬赏飞吻"> <i
														class="iconfont icon-kiss"></i> ${pall.plike } </span> <span
														class="fly-list-nums"> <i class="iconfont"
														title="人气">&#xe60b;</i> ${pall.preadings } <i
														class="iconfont icon-pinglun1" title="回答"></i>${pall.pcomments
														} </span>
												</div> <c:if test="${pall.pelite == 1 }">
													<div class="fly-list-badge">
														<span class="layui-badge layui-bg-red">精帖</span>
													</div>
												</c:if>
												<div class="tzimg">
													<%-- <p style="padding: 10px;">
										${pall.pcontent}
									</p> --%>

													<a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/7.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/8.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/9.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/10.jpg" width="100px"
														height="100px"> </a> <a href="posts.bb?pid=${pall.pid }"><img
														src="BB/res/images/avatar/11.jpg" width="100px"
														height="100px"> </a>
												</div>
											</li>
										</c:forEach>
									</ul>
									<div style="text-align: center;" class="fly-panel" id="page">
										推荐当前页数:[${rypage.curPage}/${rypage.totalPage }] 
										<c:if test="${rypage.curPage>1}">
											<a href="ry.bb?curPage=1">首页</a>
											<a href="ry.bb?curPage=${rypage.curPage-1}">上一页</a>
										</c:if>
										<c:if test="${rypage.curPage<rypage.totalPage}">
											<a href="ry.bb?curPage=${rypage.curPage+1}">下一页</a>
											<a href="ry.bb?curPage=${rypage.totalPage}">末页</a>
										</c:if>
									</div>
								</div>
							</c:if>


						</div>
					</div>
				</div>
			</div>
			<div class="layui-col-md4">
				<div class="fly-panel fly-rank fly-rank-reply"
					style="height: 300px;">
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
				<div class="fly-panel fly-rank fly-rank-reply" id="LAY_replyRank">
					<h3 class="fly-panel-title">
						<i class="layui-icon" style="font-size: 20px;margin-right: 10px;">&#xe681;</i>标签云：
					</h3>
					<div id="tagscloud">
						<c:forEach items="${lablelist }" var="ll">
							<a href="likeptitl.bb?lable=${ll.lablename }" id="sjs"
								class="tagc3">${ll.lablename} </a>
							<a href="likeptitl.bb?lable=${ll.lablename }" id="sjs"
								class="tagc2">${ll.lablename} </a>
						</c:forEach>
					</div>
				</div>
				<div class="fly-panel fly-signin">
					<div class="fly-panel-title">
						签到 <i class="fly-mid"></i> <a href="javascript:;" class="fly-link"
							id="LAY_signinHelp">说明</a> <span class="fly-signin-days">已签到
							<cite> <c:if test="${days==null}">
							0
							</c:if> <c:if test="${days!=null}">
							1
							</c:if> </cite> 天</span>
					</div>
					<div class="fly-panel-main fly-signin-main">
						<c:if test="${myuser.usesid==null}">
							<input type="submit" value="今日签到"
								class="layui-btn layui-btn-danger" onclick="alert('请先登录哦亲');">
							<span>可获得<cite>5</cite>经验</span>
						</c:if>
						<c:if test="${myuser.usesid!=null}">
							<c:if test="${qdflag==null}">
								<form action="qiandao.bb" method="post">
									<input type="hidden" name="usersid" value="${myuser.usesid}">
									<input type="submit" value="今日签到"
										class="layui-btn layui-btn-danger"> <span>可获得<cite>5</cite>经验</span>
								</form>
							</c:if>
							<c:if test="${qdflag=='true'}">
								<button class="layui-btn layui-btn-disabled">今日已签到</button>
								<span>获得了<cite>5</cite>经验</span>
							</c:if>
						</c:if>
					</div>
				</div>
				<div class="fly-panel">
					<div class="layui-tab layui-tab-brief" lay-filter="dome">
						<ul class="layui-tab-title">
							<li class="layui-this"><i class="layui-icon">&#xe857;</i>等级榜</li>
							<li><i class="layui-icon">&#xe637;</i>签到榜</li>
							<li><i class="layui-icon">&#xe63c;</i>发帖榜</li>
							<li><i class="layui-icon">&#xe642;</i>回帖榜</li>
						</ul>
						<div class="layui-tab-content">
							<div class="layui-tab-item layui-show">
								<ul class="fly-gg">
									<c:forEach var="dj" items="#{dj}" varStatus="calc">
										<li><a href="home.bb?usersid=${dj.usesid}"
											class="fly-avatar"> <img src="${dj.userpic}"
												alt="${dj.usersname}"> </a> <a class="layui-badge">第${calc.count}名</a>
											<c:if test="${calc.count==1}">
												<img src="BB/res/images/top01.png" width="20px">
											</c:if> <c:if test="${calc.count==2}">
												<img src="BB/res/images/top02.png" width="20px">
											</c:if> <c:if test="${calc.count==3}">
												<img src="BB/res/images/top03.png" width="20px">
											</c:if> <a href="#">${dj.usersname}</a> <c:if
												test="${dj.grade>=0&&dj.grade<100}">
												<i class="iconfont icon-renzheng layui-hide-xs" title="LV.1"></i>
												<i class="layui-badge fly-badge-vip layui-hide-xs">LV.1</i>
											</c:if> <c:if test="${dj.grade>=100&&dj.grade<200}">
												<i class="iconfont icon-renzheng layui-hide-xs" title="LV.2"></i>
												<i class="layui-badge fly-badge-vip layui-hide-xs">LV.2</i>
											</c:if> <c:if test="${dj.grade>=200&&dj.grade<300}">
												<i class="iconfont icon-renzheng layui-hide-xs" title="LV.3"></i>
												<i class="layui-badge fly-badge-vip layui-hide-xs">LV.3</i>
											</c:if> <c:if test="${dj.grade>=300&&dj.grade<400}">
												<i class="iconfont icon-renzheng layui-hide-xs" title="LV.4"></i>
												<i class="layui-badge fly-badge-vip layui-hide-xs">LV.4</i>
											</c:if> <c:if test="${dj.grade>=400}">
												<i class="iconfont icon-renzheng layui-hide-xs" title="LV.5"></i>
												<i class="layui-badge fly-badge-vip layui-hide-xs">LV.5</i>
											</c:if> <br />
											<div style="float: right;">

												<c:if test="${myuser.usesid==dj.usesid}">
													<a href="BB/html/user/set.jsp"> <input type="button"
														class="layui-btn" value="✎修改" style="margin-top:-20px">
													</a>
												</c:if>
												<c:if test="${myuser.usesid!=dj.usesid}">
													<c:forEach var="phb" items="${djflag}" varStatus="calcs">
														<c:if test="${calc.count==calcs.count}">
															<c:if test="${phb=='true'}">
																<a href="attention.bb?usersid=${dj.usesid}&zt=1"> <input
																	type="button" class="layui-btn layui-btn-primary"
																	value="已关注" style="margin-top:-20px"> </a>
															</c:if>
															<c:if test="${phb=='false'}">
																<a href="attention.bb?usersid=${dj.usesid}&zt=0"> <input
																	type="button" class="layui-btn layui-btn-normal"
																	value="✚关注" style="margin-top:-20px"> </a>
															</c:if>
														</c:if>
													</c:forEach>
												</c:if>
											</div>
											<div class="fly-list-info">
												<span class="phb-span">经验数:</span> <span class="phb-span">${dj.grade}</span>
												<!-- <span class="phb-span phb-hts">回帖数:</span> <span
											style="phb-span">999</span> -->
											</div>
										</li>
									</c:forEach>
								</ul>
							</div>

							<div class="layui-tab-item">数据拉取失败</div>
							<div class="layui-tab-item">数据拉取失败</div>
							<div class="layui-tab-item">数据拉取失败</div>
						</div>
					</div>
				</div>
				<dl class="fly-panel fly-list-one">
					<dt class="fly-panel-title">本周热议</dt>
					<dd>
						<a href="javascript:;">震惊！知心团队竟成为世界第一团队 ！</a> <span><i
							class="iconfont icon-pinglun1"></i> 16</span>
					</dd>
					<dd>
						<a href="javascript:;">震惊！知心团队放弃阿里年薪百万自制研发项目！</a> <span><i
							class="iconfont icon-pinglun1"></i> 16</span>
					</dd>
					<dd>
						<a href="javascript:;">震惊！知心团队竟一夜制作超强项目！</a> <span><i
							class="iconfont icon-pinglun1"></i> 16</span>
					</dd>
					<dd>
						<a href="javascript:;">震惊！知心团队竟成为世界第一团队 ！</a> <span><i
							class="iconfont icon-pinglun1"></i> 16</span>
					</dd>
					<dd>
						<a href="javascript:;">震惊！知心团队放弃阿里年薪百万自制研发项目！</a> <span><i
							class="iconfont icon-pinglun1"></i> 16</span>
					</dd>
					<dd>
						<a href="javascript:;">震惊！知心团队竟一夜制作超强项目！</a> <span><i
							class="iconfont icon-pinglun1"></i> 16</span>
					</dd>
					<dd>
						<a href="javascript:;">震惊！知心团队竟成为世界第一团队 ！</a> <span><i
							class="iconfont icon-pinglun1"></i> 16</span>
					</dd>
					<dd>
						<a href="javascript:;">震惊！知心团队放弃阿里年薪百万自制研发项目！</a> <span><i
							class="iconfont icon-pinglun1"></i> 16</span>
					</dd>
					<dd>
						<a href="javascript:;">震惊！知心团队竟一夜制作超强项目！</a> <span><i
							class="iconfont icon-pinglun1"></i> 16</span>
					</dd>
					<!-- 无数据时 -->
					<!--
        <div class="fly-none">没有相关数据</div>
        -->
				</dl>
				<div class="fly-panel">
					<div class="fly-panel-title">这里可作为广告区域</div>
					<div class="fly-panel-main">
						<a href="javascript:;" target="_blank" class="fly-zanzhu"
							time-limit="2017.09.25-2099.01.01"
							style="background-color: #5FB878;">广告铺招租！</a>
					</div>
				</div>
				<div class="fly-panel fly-link">
					<h3 class="fly-panel-title">友情链接</h3>
					<dl class="fly-panel-main">
						<dd>
							<a href="http://www.jeasyui.net/" target="_blank">easyui</a>
						</dd>
						<dd>
							<a href="http://www.miniui.com/" target="_blank">miniui</a>
						</dd>
						<dd>
							<a href="https://cn.vuejs.org/" target="_blank">vue.js</a>
						</dd>
						<dd>
							<a href="https://www.layui.com/" target="_blank">layui</a>
						</dd>
						<dd>
							<a
								href="http://qm.qq.com/cgi-bin/qm/qr?k=w25BYOBp6drj-inZVeU7widbgL42-MCY"
								class="fly-link">申请友链</a>
						</dd>
					</dl>
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
	<script src="BB/res/mods/tagscloud.js" type="text/javascript"></script>
	<script src="BB/res/time/time.js"></script>



	<!-- <script>
	layui.use('element', function(){
	  var element = layui.element;
	  element.on('tab(dome)', function(data){
	    $.ajax({
            type: 'GET',
            url: 'rank.bb?xb='+data.index,
            dataType: 'text',
       	});
	  });
	});
	</script> -->

	<!--重要文件-->
	<script>
		layui.config({
			version : "3.0.0",
			base : 'BB/res/mods/' //这里实际使用时，建议改成绝对路径
		}).extend({
			fly : 'index'
		}).use('fly');
	</script>

	<!--公告-->
	<script>
		layui.use('carousel', function() {
			var carousel = layui.carousel;
			//建造实例
			carousel.render({
				elem : '#test1',
				width : '100%' //设置容器宽度
				,
				height : '50px',
				anim : 'updown' //切换动画方式
				,
				arrow : 'none',
				indicator : 'none'
			});
		});
	</script>
	<script src="/js/layui.js" charset="utf-8"></script>

	<!--分页-->

	<style type="text/css">
/* 分页 开始*/
#page {
	color: #3C3C3C;
	font-size: 15px;
	padding-bottom: 20px;
}

#page a {
	border: 1px solid #33A98F;
	/* border-width:1px 2px 3px 2px; */
	padding: 5px 8px 5px 8px;
	font-size: 16px;
	margin: 0px;
}

.mousePage {
	background-color: #33A98F;
	color: #fff;
}
/* 分页 结束*/
</style>
</body>
</html>
