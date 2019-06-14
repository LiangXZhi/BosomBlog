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

<title>发布博文</title>
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
<!--特殊样式 begin-->
<link rel="stylesheet" type="text/css" href="BB/res/shubiao/shubiao.css">
<script src="BB/res/shubiao/shubiao.js"></script>
<link rel="stylesheet" type="text/css"
	href="BB/res/topcat/css/szgotop.css">
<script src="BB/res/topcat/js/szgotop.js"></script>
<!--特殊样式 end-->
<link rel="stylesheet" type="text/css" href="BB/res/css/lazhu.css">
<link rel="stylesheet" type="text/css" href="BB/res/css/top.css">
<script charset="utf-8" src="js/kindeditor/kindeditor-all-min.js"></script>
<script charset="utf-8" src="js/kindeditor/lang/zh-CN.js"></script>
<script type="text/javascript">  
   var editor;
        KindEditor.ready(function(K) {
            editor = K.create('textarea[name="content"]', {
                resizeType: 1,
                 uploadJson : '/BosomBlogs/upload.do',// 上传图片接口  项目名（此处项目名是wenjiqiwu）+上传图片的路径
                 filePostName: 'imgFile',// name属性默认值 
                allowPreviewEmoticons: false
            });
        });

        function save() {
            //取得HTML内容?
            //同步数据后可以直接取得textarea的value?
            editor.sync();
            html = document.getElementById('L_content').value; //原生API
            $("#Lcontent").val(html); //把KindEditor产生的html代码放到schtmlnr里面，用于提交
           	alert("修改成功~")
            return true;
        }
</script>
</head>
<body>

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


	<div class="layui-container fly-marginTop">
		<div class="fly-panel" pad20 style="padding-top: 5px;">
			<!--<div class="fly-none">没有权限</div>-->
			<div class="layui-form layui-form-pane">
				<div class="layui-tab layui-tab-brief" lay-filter="user">
					<ul class="layui-tab-title">
						<li class="layui-this">编辑博文<!-- 编辑帖子 -->
						</li>
					</ul>
					<div class="layui-form layui-tab-content" id="LAY_ucm"
						style="padding: 20px 0;">
						<div class="layui-tab-item layui-show">
							<!--编辑博文  start -->
							<form action="updatepostsave.bb" method="post"
								onsubmit="return save();">
								<div class="layui-row layui-col-space15 layui-form-item">

									<div class="layui-col-md9">
										<label for="L_title" class="layui-form-label">标题</label>
										<div class="layui-input-block">
											<input type="text" id="L_title" name="ptitle" required
												lay-verify="required" autocomplete="off" class="layui-input"
												value="${updatepost.ptitle }">
											<!-- <input type="hidden" name="id" value="{{d.edit.id}}"> -->
										</div>
									</div>
									<div class="layui-col-md3">
										<label class="layui-form-label">博文类型</label>
										<div class="layui-input-block">
											<select lay-verify="required" name="posttype"
												lay-filter="column">
												<option value="${updatepost.posttype.ptypeId}"
													selected="selected">${updatepost.posttype.ptypeName
													}</option>
												<c:forEach items="${ptypelist }" var="ptype">
													<option value="${ptype.ptypeId }">${ptype.ptypeName
														}</option>
												</c:forEach>
											</select>
										</div>
									</div>
								</div>

								<div class="layui-form-item layui-form-text">
									<div class="layui-input-block">
										<textarea id="L_content" name="content" placeholder="详细描述"
											class="layui-textarea fly-editor" style="height: 260px;">${updatepost.pcontent }</textarea>
										<textarea id="Lcontent" name="pcontent" style="display: none;"></textarea>

									</div>
								</div>
								<div class="layui-form-item">
									<div class="layui-inline">
										<label class="layui-form-label">是否分享</label>
										<div class="layui-input-inline" style="width: 190px;">
											<select name="pprivate">
												<c:if test="${updatepost.pprivate == 0 }">
													<option value="0">分享</option>
													<option value="1">私密</option>
												</c:if>
												<c:if test="${updatepost.pprivate == 1 }">
													<option value="1">私密</option>
													<option value="0">分享</option>
												</c:if>
											</select>
										</div>
										<div class="layui-form-mid layui-word-aux">博文发布后需要等待审核哦~</div>
									</div>
								</div>
								<!-- <div class="layui-form-item">
                <label for="L_vercode" class="layui-form-label">人类验证</label>
                <div class="layui-input-inline">
                  <input type="text" id="L_vercode" name="vercode" required lay-verify="required" placeholder="请回答后面的问题" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-mid">
                  <span style="color: #c00;">1+1=?</span>
                </div>
              </div> -->
								<div class="layui-form-item">
									<input type="hidden" name="pid" value="${updatepost.pid }" />
									<input type="hidden" name="users" value="${myuser.usesid}">
									<button type="submit" onclick="return insertpost()"
										class="layui-btn" lay-filter="*" lay-submit>立即发布</button>
								</div>
							</form>
							<!-- 编辑博文  end -->
						</div>
					</div>
				</div>
			</div>
		</div>
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
  version: "3.0.0"
  ,base: 'BB/res/mods/'
}).extend({
  fly: 'index'
}).use('fly');
</script>
	<script type="text/javascript">
	function insertpost(){
			if(${salary==null}){
				alert("请先登录哦~");
				returnfalse;
			}else{
				returntrue;			
			}
		}
	</script>
</body>
</html>
