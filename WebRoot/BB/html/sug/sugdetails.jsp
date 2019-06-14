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

<title>建议内容</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="keywords" content="知心博客">
<meta name="description" content="知心博客是一个免费的IT交流平台">
<link href="BB/res/images/logo_tb.png" rel="icon" type="image/x-ico">
<link rel="manifest" href="%PUBLIC_URL%/manifest.json">
<link rel="stylesheet" type="text/css" href="BB/res/assets/waifu.css" />
<link rel="stylesheet" href="BB/res/layui/css/layui.css">
<link rel="stylesheet" href="BB/res/css/global.css">
<link rel="stylesheet" type="text/css" href="BB/res/css/top.css">
<!--特殊样式 begin-->
<link rel="stylesheet" type="text/css" href="BB/res/shubiao/shubiao.css">
<script src="BB/res/shubiao/shubiao.js"></script>
<script src="BB/res/topcat/js/jquery-1.8.3.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="BB/res/topcat/css/szgotop.css">
<script src="BB/res/topcat/js/szgotop.js"></script>
<!--特殊样式 end-->
<link rel="stylesheet" type="text/css" href="BB/res/css/lazhu.css">
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
						</dl>
					</li>
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

	<div class="layui-container">
		<div class="layui-row layui-col-space15">

			<div class="layui-col-md4" style="width: 20%;">
				<!--头像和用户名-->
				<div class="" style="padding: 20px 0; text-align: center;">
					<img src="BB/res/images/about/tx2.png" style="max-width: 100%;"
						alt="layui">
					<p
						style="position: relative; color: #666;  margin-top: 10px;font-weight: bold;font-size: 20px;">吾乃路飞哥</p>
				</div>
				<style type="text/css">
.liebiao dd {
	line-height: 30px;
}
</style>
				<dl class="fly-panel fly-list-one liebiao"
					style="background-color: #FF905C;">
					<dt class="fly-panel-title">常用链接</dt>

					<dd>
						<img src="BB/res/images/about/tubiao.png" width="25px"
							height="25px" /> <a href="">基于 layui 的极简社区页面模版</a>
					</dd>
					<dd>
						<img src="BB/res/images/about/tubiao.png" width="25px"
							height="25px" /> <a href="">基于 layui 的极简社区页面模版</a>
					</dd>
					<dd>
						<img src="BB/res/images/about/tubiao.png" width="25px"
							height="25px" /> <a href="">基于 layui 的极简社区页面模版</a>
					</dd>
					<dd>
						<img src="BB/res/images/about/tubiao.png" width="25px"
							height="25px" /> <a href="">基于 layui 的极简社区页面模版</a>
					</dd>
					<dd>
						<img src="BB/res/images/about/tubiao.png" width="25px"
							height="25px" /> <a href="">基于 layui 的极简社区页面模版</a>
					</dd>
					<dd>
						<img src="BB/res/images/about/tubiao.png" width="25px"
							height="25px" /> <a href="">基于 layui 的极简社区页面模版</a>
					</dd>
					<dd>
						<img src="BB/res/images/about/tubiao.png" width="25px"
							height="25px" /> <a href="">基于 layui 的极简社区页面模版</a>
					</dd>
					<dd>
						<img src="BB/res/images/about/tubiao.png" width="25px"
							height="25px" /> <a href="">基于 layui 的极简社区页面模版</a>
					</dd>
					<dd>
						<img src="BB/res/images/about/tubiao.png" width="25px"
							height="25px" /> <a href="">基于 layui 的极简社区页面模版</a>
					</dd>
					<dd>
						<img src="BB/res/images/about/tubiao.png" width="25px"
							height="25px" /> <a href="">基于 layui 的极简社区页面模版</a>
					</dd>

					<!-- 无数据时 -->
					<!--
        <div class="fly-none">没有相关数据</div>
        -->
				</dl>

				<div style="width: 100%;height: 300px;">
					<style type="text/css">
.wrapper {
	position: absolute;
	left: 50%;
	top: 85%;
	transform: scale(1, 1) translate(-50%, -50%);
}
</style>
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
			</div>
			<!--左侧栏完-->

			<!--建议内容-->
			<div class="layui-col-md8 content detail"
				style="width: 80%;margin-top: 20px;">
				<div class="fly-panel">
					<ul class="fly-gg">
						<li><a href="#" class="fly-avatar"> <img
								src="BB/res/images/about/tubiao.png" alt="年华"
								class="layui-anim layui-anim-scaleSpring"> </a>
							<h2>
								<a href="#">markdown折叠部分内代码块失效</a>
							</h2>
							<div class="fly-list-info">
								<span style="color: #009D19;">2019-5-17</span> <span>来自</span> <a
									href="#"> <cite>Luffy</cite> </a> <span class="fly-list-nums"><i
									class="iconfont" title="人气">&#xe60b;</i> 155<i
									class="iconfont icon-pinglun1" title="回答"></i> 5 </span>
							</div></li>
					</ul>
					<div class="fly-panel detail-box" style="padding-left: 60px;">
						<p>
							该模版由 layui官方社区（<a href="http://fly.layui.com/" target="_blank">fly.layui.com</a>）倾情提供，只为表明我们对
							layui 执着的信念、以及对未来持续加强的承诺。该模版基于 layui 搭建而成，可作为极简通用型社区的页面支撑。
						</p>
						<p>更新日志：</p>
						<pre>
# v3.0 2017-11-30
* 采用 layui 2.2.3 作为 UI 支撑
* 全面同步最新的 Fly 社区风格，各种细节得到大幅优化
* 更友好的响应式适配能力
</pre>

						下载
						<hr>
						<p>
							官网：<a href="http://www.layui.com/template/fly/" target="_blank">http://www.layui.com/template/fly/</a><br>
							码云：<a href="https://gitee.com/sentsin/fly/" target="_blank">https://gitee.com/sentsin/fly/</a><br>
							GitHub：<a href="https://github.com/layui/fly" target="_blank">https://github.com/layui/fly</a>
						</p>
						封面
						<hr>
						<p>
							<img src="BB/res/images/fly.jpg" alt="Fly社区">
						</p>
					</div>

					<!--建议内容完-->

					<!--回复-->
					<div class="fly-panel detail-box" id="flyReply">
						<fieldset class="layui-elem-field layui-field-title"
							style="text-align: center;">
							<legend>解答</legend>
						</fieldset>

						<ul class="jieda" id="jieda">
							<li data-id="111" class="jieda-daan"><a
								name="item-1111111111"></a>
								<div class="detail-about detail-about-reply">
									<a class="fly-avatar" href=""> <img
										src="https://tva1.sinaimg.cn/crop.0.0.118.118.180/5db11ff4gw1e77d3nqrv8j203b03cweg.jpg"
										alt=" "> </a>
									<div class="fly-detail-user">
										<a href="" class="fly-link"> <cite>贤心</cite> <i
											class="iconfont icon-renzheng" title="认证信息：XXX"></i> <i
											class="layui-badge fly-badge-vip">VIP3</i> </a> <span>(楼主)</span>
										<!--
                <span style="color:#5FB878">(管理员)</span>
                <span style="color:#FF9E3F">（社区之光）</span>
                <span style="color:#999">（该号已被封）</span>
                -->
									</div>

									<div class="detail-hits">
										<span>2017-11-30</span>
									</div>

									<i class="iconfont icon-caina" title="最佳答案"></i>
								</div>
								<div class="detail-body jieda-body photos">
									<p>香菇那个蓝瘦，这是一条被采纳的回帖</p>
								</div>
								<div class="jieda-reply">
									<span class="jieda-zan zanok" type="zan"> <i
										class="iconfont icon-zan"></i> <em>66</em> </span> <span type="reply">
										<i class="iconfont icon-svgmoban53"></i> 回复 </span>
									<div class="jieda-admin">
										<span type="edit">编辑</span> <span type="del">删除</span>
										<!-- <span class="jieda-accept" type="accept">采纳</span> -->
									</div>
								</div></li>

							<li data-id="111"><a name="item-1111111111"></a>
								<div class="detail-about detail-about-reply">
									<a class="fly-avatar" href=""> <img
										src="https://tva1.sinaimg.cn/crop.0.0.118.118.180/5db11ff4gw1e77d3nqrv8j203b03cweg.jpg"
										alt=" "> </a>
									<div class="fly-detail-user">
										<a href="" class="fly-link"> <cite>贤心</cite> </a>
									</div>
									<div class="detail-hits">
										<span>2017-11-30</span>
									</div>
								</div>
								<div class="detail-body jieda-body photos">
									<p>蓝瘦那个香菇，这是一条没被采纳的回帖</p>
								</div>
								<div class="jieda-reply">
									<span class="jieda-zan" type="zan"> <i
										class="iconfont icon-zan"></i> <em>0</em> </span> <span type="reply">
										<i class="iconfont icon-svgmoban53"></i> 回复 </span>
									<div class="jieda-admin">
										<span type="edit">编辑</span> <span type="del">删除</span> <span
											class="jieda-accept" type="accept">采纳</span>
									</div>
								</div></li>

							<!-- 无数据时 -->
							<!-- <li class="fly-none">消灭零回复</li> -->
						</ul>

						<div class="layui-form layui-form-pane">
							<form action="/jie/reply/" method="post">
								<div class="layui-form-item layui-form-text">
									<a name="comment"></a>
									<div class="layui-input-block">
										<textarea id="L_content" name="content" required
											lay-verify="required" placeholder="请输入内容"
											class="layui-textarea fly-editor" style="height: 150px;"></textarea>
									</div>
								</div>
								<div class="layui-form-item">
									<input type="hidden" name="jid" value="123">
									<button class="layui-btn" lay-filter="*" lay-submit>提交回复</button>
								</div>
							</form>
						</div>
					</div>
					<!--回复类容完-->
				</div>
			</div>
		</div>

		<!--尾巴-->
		<div class="fly-footer">
			<p>
				<a href="index.bb" target="_blank">知心博客</a><span
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
				base : 'BB/res/mods/'
			}).extend({
				fly : 'index'
			}).use('fly');
		</script>
</body>
</html>
