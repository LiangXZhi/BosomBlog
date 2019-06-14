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

<title>博客详情</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="keywords" content="知心博客">
<meta name="description" content="知心博客是一个免费的IT交流平台">
<link href="BB/res/images/logo_tb.png" rel="icon" type="image/x-ico">
<link rel="manifest" href="%PUBLIC_URL%/manifest.json">
<link rel="stylesheet" type="text/css" href="BB/res/assets/waifu.css" />
<link rel="stylesheet" href="BB/res/layui/css/layui.css">
<link rel="stylesheet" href="BB/res/css/global.css">
<link rel="stylesheet" type="text/css" href="BB/res/shubiao/shubiao.css">
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
	<!--回到顶部cat  begin-->
	<div class="back-to-top cd-top faa-float animated cd-is-visible"
		id="scrolltop" style="top: -900px;"></div>
	<!--回到顶部cat  end-->
	<div class="layui-container">
		<!--<div class="layui-row layui-col-space15">-->
		<!--<div class="layui-col-md8 content detail">-->
		<!-- 博文内容 start -->
		<div class="fly-panel detail-box">
			<h1>${posts.ptitle }</h1>
			<div class="fly-detail-info">

				<span class="layui-badge layui-bg-green fly-detail-column">${posts.posttype.ptypeName}</span>
				<!-- <span class="layui-badge" style="background-color: #5FB878;">已结</span> -->

				<c:if test="${posts.pstatus == 1 }">
					<span class="layui-badge layui-bg-black">置顶</span>
				</c:if>
				<c:if test="${posts.pelite == 1 }">
					<span class="layui-badge layui-bg-red">精帖</span>
				</c:if>
				<span class="fly-list-nums"> <i class="iconfont" title="回答">&#xe60c;</i>${posts.pcomments
					} <i class="iconfont" title="人气">&#xe60b;</i> ${posts.preadings } </span>
			</div>

			<div class="detail-about">
				<a class="fly-avatar" href="home.bb?usersid=${posts.users.usesid }"><img
					src="${posts.users.userpic }" alt="${posts.users.usersname}">
				</a>
				<div class="fly-detail-user">
					<a href="home.bb?usersid=${posts.users.usesid }" class="fly-link">
						<cite>${posts.users.usersname}</cite> <i
						class="iconfont icon-renzheng"
						title="认证信息：${posts.users.usersname}"></i> <c:if
							test="${posts.users.grade>=0 and posts.users.grade<60}">
							<i class="layui-badge fly-badge-vip">LV 1</i>
						</c:if> <c:if test="${posts.users.grade>=60 and posts.users.grade<180}">
							<i class="layui-badge fly-badge-vip">LV 2</i>
						</c:if> <c:if test="${posts.users.grade>=180 and posts.users.grade<300}">
							<i class="layui-badge fly-badge-vip">LV 3</i>
						</c:if> <c:if test="${posts.users.grade>=300 and posts.users.grade<600}">
							<i class="layui-badge fly-badge-vip">LV 4</i>
						</c:if> <c:if test="${posts.users.grade>=600}">
							<i class="layui-badge fly-badge-vip">LV 5</i>
						</c:if> </a> <span><fmt:formatDate value="${posts.pdate }"
							pattern="yyyy-MM-dd" /> </span>
				</div>
				<div class="detail-hits" id="LAY_jieAdmin" data-id="123">
					<c:if test="${posts.users.usesid == myuser.usesid}">
						<span class="layui-btn layui-btn-xs jie-admin" type="edit">
							<a href="updatepost.bb?pid=${posts.pid }">编辑此贴</a> </span>
					</c:if>
					<c:if test="${posts.users.usesid != myuser.usesid}">
						<span class="layui-btn layui-btn-disabled" type="edit">编辑此贴</span>
					</c:if>
				</div>
			</div>

			<%-- <div class="detail-about"> <a class="fly-avatar" href="BB/html/user/home.jsp"> <img src="${posts.users.userpic }" alt="贤心"> </a>
          <div class="fly-detail-user"> <a href="BB/html/user/home.jsp" class="fly-link"> <cite>${pl.users.usersname}</cite> <i class="iconfont icon-renzheng" title="认证信息：{{ rows.user.approve }}"></i> <i class="layui-badge fly-badge-vip">LV ${posts.users.grade }</i> </a> <span><fmt:formatDate
											value="${posts.pdate }" pattern="yyyy年MM月dd日" /></span> </div>
          <div class="detail-hits" id="LAY_jieAdmin" data-id="123"> <span style="padding-right: 10px; color: #FF7200">${posts.plike }</span> <span class="layui-btn layui-btn-xs jie-admin" type="edit"><a href="add.jsp">编辑此贴</a></span> </div>
        </div> --%>
			<div class="detail-body photos">${posts.pcontent }</div>
			<c:if test="${myuser.usesid != posts.users.usesid}">
				<div style="float: right;margin-top: -10px;">
					<div class="jieda-reply" style="float: left;">
						<span class="jieda-zan zanok" type="zan"> <i
							class="iconfont icon-zan"></i> <em>66</em> </span>
					</div>
					<c:if test="${postsflag==null}">
						<span class="layui-badge layui-bg-red" onclick="shoucang()"
							id="sc">收藏</span>
					</c:if>
					<c:if test="${postsflag=='true'}">
						<span class="layui-badge layui-bg-green" id="ysc"
							onclick="qushou()">已收藏</span>
					</c:if>

				</div>
			</c:if>
		</div>
		<!-- 博文内容 end -->
		<div class="fly-panel detail-box" id="flyReply">
			<fieldset class="layui-elem-field layui-field-title"
				style="text-align: center;">
				<legend>回帖</legend>
			</fieldset>
			<!-- 评论列表 start -->
			<ul class="jieda" id="jieda">
				<c:if test="${not empty demo2list}">
					<c:forEach items="${demo2list }" var="demo2">
						<c:forEach items="${demo2.demo1list }" var="demo1">
							<li data-id="111" class="jieda-daan"><a
								name="item-1111111111"></a> <c:if test="${demo1.px == 1 }">
									<div class="detail-about detail-about-reply">
										<a class="fly-avatar" href="home.bb?usersid=${demo1.userid }">
											<img src="${demo1.userpic}" alt="${demo1.uname}"> </a>
										<div class="fly-detail-user">
											<a href="home.bb?usersid=${demo1.userid }" class="fly-link">
												<cite>${demo1.uname} </cite> <i
												class="iconfont icon-renzheng" title="认证信息：${demo1.uname}"></i>
												<c:if test="${demo1.ugrade>=0 and demo1.ugrade<60}">
													<i class="layui-badge fly-badge-vip">LV 1</i>
												</c:if> <c:if test="${demo1.ugrade>=60 and demo1.ugrade<180}">
													<i class="layui-badge fly-badge-vip">LV 2</i>
												</c:if> <c:if test="${demo1.ugrade>=180 and demo1.ugrade<300}">
													<i class="layui-badge fly-badge-vip">LV 3</i>
												</c:if> <c:if test="${demo1.ugrade>=300 and demo1.ugrade<600}">
													<i class="layui-badge fly-badge-vip">LV 4</i>
												</c:if> <c:if test="${demo1.ugrade>=600}">
													<i class="layui-badge fly-badge-vip">LV 5</i>
												</c:if> </a>
											<c:if test="${demo1.userid == posts.users.usesid }">
												<span>(楼主)</span>
											</c:if>
										</div>
										<div class="detail-hits">
											<span><fmt:formatDate value="${demo1.cdate}"
													pattern="yyyy-MM-dd HH:mm" /> </span>
										</div>
										<!-- <i class="iconfont icon-caina" title="最佳答案"></i> -->
									</div>

									<div class="detail-body jieda-body photos">
										<p style="margin-left: 50px; ">${demo1.ccontent }</p>
									</div>
									<div class="jieda-reply" style="margin-bottom: 20px;">
										<span type="reply"
											onclick="todwon('${demo1.uname}','${demo1.cid }')"> <i
											class="iconfont icon-svgmoban53"></i> 回复 </span>
										<c:if test="${demo1.userid == myuser.usesid}">
											<div class="jieda-admin">
												<span type="del"><a
													href="deletecid.bb?cid=${demo1.cid }&pid=${posts.pid}"
													onclick="return confirm('确认删除这条评论吗？')">删除</a> </span>
											</div>
										</c:if>
									</div>
								</c:if> <!--楼中楼 start-->
								<ul class="jieda" id="jieda" style="margin-left: 150px; ">
									<c:if test="${demo1.px != 1 }">
										<li data-id="111" class="jieda-daan"
											style="border-top: #E1DDDD 1px dashed; ">
											<div class="detail-about detail-about-reply">
												<a class="fly-avatar"
													href="home.bb?usersid=${demo1.userid }"> <img
													src="${demo1.userpic}" alt="${demo1.uname}"> </a>
												<div class="fly-detail-user">
													<a href="home.bb?usersid=${demo1.userid }" class="fly-link">
														<cite>${demo1.uname}</cite> <i
														class="iconfont icon-renzheng" title="认证信息：${demo1.uname}"></i>
														<c:if test="${demo1.ugrade>=0 and demo1.ugrade<60}">
															<i class="layui-badge fly-badge-vip">LV 1</i>
														</c:if> <c:if test="${demo1.ugrade>=60 and demo1.ugrade<180}">
															<i class="layui-badge fly-badge-vip">LV 2</i>
														</c:if> <c:if test="${demo1.ugrade>=180 and demo1.ugrade<300}">
															<i class="layui-badge fly-badge-vip">LV 3</i>
														</c:if> <c:if test="${demo1.ugrade>=300 and demo1.ugrade<600}">
															<i class="layui-badge fly-badge-vip">LV 4</i>
														</c:if> <c:if test="${demo1.ugrade>=600}">
															<i class="layui-badge fly-badge-vip">LV 5</i>
														</c:if> </a>
													<c:if test="${demo1.userid == posts.users.usesid }">
														<span>(楼主)</span>
													</c:if>
												</div>
												<div class="detail-hits">
													<span><fmt:formatDate value="${demo1.cdate}"
															pattern="yyyy-MM-dd HH:mm" /> </span>
												</div>
												<!-- <i class="iconfont icon-caina" title="最佳答案"></i> -->
											</div>
											<div class="detail-body jieda-body photos">
												<p style="margin-left: 50px; ">
													回复&nbsp;&nbsp;<a href="home.bb?usersid=${demo1.sjuid }">${demo1.sjname}</a>&nbsp;&nbsp;：${demo1.ccontent
													}
												</p>
											</div>
											<div class="jieda-reply" style="margin-bottom: 20px;">
												<span type="reply"
													onclick="todwon('${demo1.uname}','${demo1.cid }')">
													<i class="iconfont icon-svgmoban53"></i> 回复 </span>
												<c:if test="${demo1.userid == myuser.usesid}">
													<div class="jieda-admin">
														<span type="del"><a
															href="deletecid.bb?cid=${demo1.cid }&pid=${posts.pid}"
															onclick="return confirm('确认删除这条评论吗？')">删除</a> </span>
													</div>
												</c:if>
											</div>
										</li>
									</c:if>
								</ul> <!--楼中楼 end--></li>
						</c:forEach>
					</c:forEach>
				</c:if>

				<!-- 无数据时 -->
				<c:if test="${empty demo2list}">
					<p class="fly-none" style="min-height: 60px;">消灭零回复</p>
				</c:if>
			</ul>
			<!-- 评论列表 end -->


			<!--评论框-->
			<div class="layui-form layui-form-pane">
				<form action="addcomment.bb" method="post">
					<div class="layui-form-item layui-form-text">
						<a name="comment"></a>
						<div class="layui-input-block">
							<style type="text/css">
/* 获得焦点时的输入框高光效果 */
textarea:focus {
	border-color: rgba(82, 168, 236, 0.8);
	outline: 0;
	outline: thin dotted \9; /* IE6-9 */
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 8px
		rgba(82, 168, 236, 0.6);
}
</style>
							<textarea id="L_content" name="ccontent" required
								lay-verify="required" placeholder="请输入评论内容~"
								class="layui-textarea fly-editor" style="height: 150px;"></textarea>

						</div>
					</div>
					<div class="layui-form-item">
						<form>
							<!-- 上级ID -->
							<input type="hidden" name="csuperiorid" value="" id="csuperiorid" />

							<input type="hidden" name="pid" value="${posts.pid}"> <input
								type="hidden" name="users" value="${myuser.usesid}">
							<button type="submit" class="layui-btn" lay-filter="*" lay-submit
								onclick="return iflogin()">提交回复</button>
							<button type="button" class="layui-btn" onclick="closehf()">取消回复</button>
					</div>
				</form>
			</div>
		</div>
		<!--</div>-->
		<!--</div>-->
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
  version: "3.0.0"
  ,base: 'BB/res/mods/' //这里实际使用时，建议改成绝对路径
}).extend({
  fly: 'index'
}).use('fly');
</script>
	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript">
	function iflogin(){
		if(${salary==null}){
			alert("请先登录哦");
			return false;
		}else{
			alert("发送成功");
			return true;
		}
	}
	
	//点击返回头部效果
     $("#scrolltop").click(function(){
         $("html,body").animate({scrollTop:0});
     });
     
     function todwon(data ,cid){
			/* alert("哈哈哈");
			
			var name = data.type; */
			//评论库获得焦点
            $("#L_content").focus();
            /* $("#L_content").text("回复：" + data+"："); */
            $("#L_content").attr("placeholder","回复  "+data+" ：");
            $("#csuperiorid").val(cid);//给上级ID赋值
            $("body,html").animate({scrollTop: $("#footer").offset().top - 90}, 100);
			/* $('html,body').animate({scrollTop:$('#footer').offset().top}, 800); */
		}
	//取消提交按钮
	function closehf(){
		//评论库获得焦点
       	$("#L_content").blur();
		$("#L_content").attr("placeholder","请输入评论内容~");
		$("#csuperiorid").val("");//给上级ID赋值
	}
	//收藏按钮
	function shoucang(){
		if (${salary==null}) {
			alert("请先登录哦~");
		}else{
			$.ajax({
            type: 'GET',
            url: 'addcollect.bb?pid=${posts.pid }&uid=${myuser.usesid}',
            dataType: 'text',
	       	});
	       	window.parent.location.reload()
			alert("收藏成功！");
		}
	}
	function qushou(){
		if (${salary==null}) {
			alert("请先登录哦~");
		}else{
			$.ajax({
            type: 'GET',
            url: 'deletecollect.bb?pid=${posts.pid }&uid=${myuser.usesid}',
            dataType: 'text',
	       	});
	       	window.parent.location.reload()
			alert("取消收藏成功！");
		}
	}
</script>
</body>
</html>
