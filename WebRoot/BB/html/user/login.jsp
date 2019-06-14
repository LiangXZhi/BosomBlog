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

<meta charset="utf-8">
<title>登录</title>
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
<link rel="stylesheet" type="text/css" href="BB/res/shubiao/shubiao.css">
<link rel="stylesheet" type="text/css" href="BB/res/css/top.css">
<script src="BB/res/shubiao/shubiao.js"></script>
<style type="text/css">
.wrapper {
	position: absolute;
	left: 50%;
	top: 98%;
	transform: scale(1.5, 1.5) translate(-50%, -50%);
}
</style>
<script type="text/javascript">
    function tc(){
        alert('请先登录哦！亲')
        return false;
    }
</script>
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
								<a href="BB/html/case/case.jsp" onClick="return tc()"><img
									src="BB/res/images/tb/java.png" width="20px">Java</a>
							</div>
						</dd>
						<dd>
							<div>
								<a href="BB/html/case/case.jsp" onClick="return tc()"><img
									src="BB/res/images/tb/SQL.png" width="20px">MySQL</a>
							</div>
						</dd>
						<dd>
							<div>
								<a href="BB/html/case/case.jsp" onClick="return tc()"><img
									src="BB/res/images/tb/HTML.png" width="20px">HTML</a>
							</div>
						</dd>
						<dd>
							<div>
								<a href="BB/html/case/case.jsp" onClick="return tc()"><img
									src="BB/res/images/tb/js.png" width="20px">JS</a>
							</div>
						</dd>
						<dd>
							<div>
								<a href="BB/html/case/case.jsp" onClick="return tc()"><img
									src="BB/res/images/tb/Jquery.png" width="20px">JQuery</a>
							</div>
						</dd>
						<dd>
							<div>
								<a href="BB/html/case/case.jsp" onClick="return tc()"><img
									src="BB/res/images/tb/vuejs.png" width="20px">Vue.Js</a>
							</div>
						</dd>
						<dd>
							<div>
								<a href="BB/html/case/case.jsp" onClick="return tc()"><img
									src="BB/res/images/tb/C.png" width="20px">C/C#</a>
							</div>
						</dd>
						<dd>
							<div>
								<a href="BB/html/case/case.jsp" onClick="return tc()"><img
									src="BB/res/images/tb/php.png" width="20px">PHP</a>
							</div>
						</dd>
						<dd>
							<div>
								<a href="BB/html/case/case.jsp" onClick="return tc()"><img
									src="BB/res/images/tb/python.png" width="20px">Python</a>
							</div>
						</dd>
					</dl>
				</li>
				<li class="layui-nav-item"><a href="javascript:;" onClick="return tc()"><i
						class="layui-icon">&#xe65f;</i>关于</a>
					<dl class="layui-nav-child layui-nav-item2" style="width: 100px;">
						<dd>
							<a href="BB/html/sug/about.jsp" onClick="return tc()"><i class="layui-icon">&#xe705;</i><span>博客简介</span>
							</a>
						</dd>
						<dd>
							<a href="BB/html/sug/suglist.jsp" onClick="return tc()"><i
								class="layui-icon">&#xe6b2;</i><span>提出建议</span> </a>
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
				<!-- 未登入的状态 -->
				<li class="layui-nav-item"><a href="BB/html/user/login.jsp">登入</a>
				</li>
				<li class="layui-nav-item"><a href="BB/html/user/reg.jsp">注册</a>
				</li>
				<!--
      <li class="layui-nav-item layui-hide-xs"> <a href="/app/qq/" onclick="layer.msg('正在通过QQ登入', {icon:16, shade: 0.1, time:0})" title="QQ登入" class="iconfont icon-qq"></a> </li>
      <li class="layui-nav-item layui-hide-xs"> <a href="/app/weibo/" onclick="layer.msg('正在通过微博登入', {icon:16, shade: 0.1, time:0})" title="微博登入" class="iconfont icon-weibo"></a> </li>
-->

				<!-- 登入后的状态 -->
				<!--
      <li class="layui-nav-item"> <a class="fly-nav-avatar" href="javascript:;"> <cite class="layui-hide-xs">年华</cite> <i class="iconfont icon-renzheng layui-hide-xs" title="认证信息：layui 作者"></i> <i class="layui-badge fly-badge-vip layui-hide-xs">VIP3</i> <img src="https://tva1.sinaimg.cn/crop.0.0.118.118.180/5db11ff4gw1e77d3nqrv8j203b03cweg.jpg" class="layui-anim-rotate layui-anim-loop"> </a>
        <dl class="layui-nav-child">
          <dd><a href="#"><i class="layui-icon">&#xe620;</i>基本设置</a></dd>
          <dd><a href="#"><i class="iconfont icon-tongzhi" style="top: 4px;"></i>我的消息</a></dd>
          <dd><a href="#"><i class="layui-icon" style="margin-left: 2px; font-size: 22px;">&#xe68e;</i>我的主页</a></dd>
          <dd><a href="#"><i class="layui-icon">&#xe60a;</i>我的发帖</a></dd>
          <dd><a href="#"><i class="layui-icon">&#xe600;</i>我的收藏</a></dd>
          <hr style="margin: 5px 0;">
          <dd><a href="/user/logout/" style="text-align: center;">退出</a></dd>
        </dl>
      </li>
-->
			</ul>
		</div>
	</div>
	<div class="layui-container fly-marginTop" style="width: 350px;">
		<div class="fly-panel fly-panel-user" pad20>
			<div class="layui-tab layui-tab-brief" lay-filter="user">
				<ul class="layui-tab-title">
					<li class="layui-this">登入</li>
					<li><a href="BB/html/user/reg.jsp">注册</a></li>
				</ul>
				<div class="layui-form layui-tab-content" id="LAY_ucm"
					style="padding: 20px 0;">
					<div class="layui-tab-item layui-show">
						<div class="layui-form layui-form-pane">

							<!--登录之后操作-->
							<form method="post" action="login.bb">
								<div class="layui-form-item">
									<label for="L_email" class="layui-form-label">手机：</label>
									<div class="layui-input-inline">
										<input type="text" id="phone1" name="phone" required
											lay-verify="required" autocomplete="off" class="layui-input"
											autocomplete="off" placeholder="手机号">
									</div>
								</div>
								<div class="layui-form-item">
									<label for="L_pass" class="layui-form-label">密码：</label>
									<div class="layui-input-inline">
										<input type="password" id="L_pass" name="password" required
											lay-verify="required" autocomplete="off" class="layui-input"
											placeholder="密码哦">
									</div>
								</div>
								<div class="layui-form-item" id="yzmdiv">
									<canvas id="canvas" width="100" height="43"></canvas>
									<div class="layui-input-inline">
										<input type="text" class="layui-input input-val" required
											placeholder="验证码" id="yzm">
									</div>
								</div>
								<div class="layui-form-item">
									<input type="submit" class="layui-btn" value="立即登录"> <span
										style="padding-left:20px;"> <a href="forget.jsp">忘记密码？</a>
									</span> <span style="padding-left:20px;color:red;"> ${msg} </span>
								</div>
								<div style="height: 190px;margin-top: 50px;">
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
									</div>
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
				2019 &copy; </span><a href="BB/html/sug/about.jsp" target="_blank">知心团队 出品</a>
		</p>
		<p>
			<a class="BB/html/sug/social zzwm" href="javascript:"><img class="qrcode" src="BB/res/images/skm.jpg" alt="赞赏我们"><i class="layui-icon">&#xe62e;</i><span>赞赏我们</span></a>
			<a href="https://qm.qq.com/cgi-bin/qm/qr?k=xWdCIC7-VktYNeNdvO612l7lNQj5m_8o" target="_blank"><i class="layui-icon">&#xe612;</i>联系我们</a>
			<a href="javascript:;" target="_blank"><i class="layui-icon">&#xe641;</i>微信公众号</a>
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
layui.cache.page = 'user';
layui.config({
  version: "3.0.0"
  ,base: 'BB/res/mods/'
}).extend({
  fly: 'index'
}).use('fly');
</script>
	<script>
    $(function(){
        var show_num = [];
        draw(show_num);
        $("#canvas").on('click',function(){
            draw(show_num);
        });
        $("#yzm").blur(function(){
            var val = $(".input-val").val().toLowerCase();
            var num = show_num.join("");
            if(val==''){
                document.getElementById('yzm').placeholder='请输入验证码';
            }else if(val == num){
                document.getElementById('yzm').value='验证成功';
                document.getElementById('yzm').disabled='disabled';
            }else{
                document.getElementById('yzm').value='';
                document.getElementById('yzm').placeholder='验证错误';
                draw(show_num);
            }
        });
    })

    function draw(show_num) {
        var canvas_width=$('#canvas').width();
        var canvas_height=$('#canvas').height();
        var canvas = document.getElementById("canvas");//获取到canvas的对象，演员
        var context = canvas.getContext("2d");//获取到canvas画图的环境，演员表演的舞台
        canvas.width = canvas_width;
        canvas.height = canvas_height;
        var sCode = "A,B,C,E,F,G,H,J,K,L,M,N,P,Q,R,S,T,W,X,Y,Z,a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,1,2,3,4,5,6,7,8,9,0";
        var aCode = sCode.split(",");
        var aLength = aCode.length;//获取到数组的长度
        
        for (var i = 0; i <= 3; i++) {
            var j = Math.floor(Math.random() * aLength);//获取到随机的索引值
            var deg = Math.random() * 30 * Math.PI / 180;//产生0~30之间的随机弧度
            var txt = aCode[j];//得到随机的一个内容
            show_num[i] = txt.toLowerCase();
            var x = 10 + i * 20;//文字在canvas上的x坐标
            var y = 20 + Math.random() * 8;//文字在canvas上的y坐标
            context.font = "bold 23px 微软雅黑";

            context.translate(x, y);
            context.rotate(deg);

            context.fillStyle = randomColor();
            context.fillText(txt, 0, 0);

            context.rotate(-deg);
            context.translate(-x, -y);
        }
        for (var i = 0; i <= 5; i++) { //验证码上显示线条
            context.strokeStyle = randomColor();
            context.beginPath();
            context.moveTo(Math.random() * canvas_width, Math.random() * canvas_height);
            context.lineTo(Math.random() * canvas_width, Math.random() * canvas_height);
            context.stroke();
        }
        for (var i = 0; i <= 30; i++) { //验证码上显示小点
            context.strokeStyle = randomColor();
            context.beginPath();
            var x = Math.random() * canvas_width;
            var y = Math.random() * canvas_height;
            context.moveTo(x, y);
            context.lineTo(x + 1, y + 1);
            context.stroke();
        }
    }

    function randomColor() {//得到随机的颜色值
        var r = Math.floor(Math.random() * 256);
        var g = Math.floor(Math.random() * 256);
        var b = Math.floor(Math.random() * 256);
        return "rgb(" + r + "," + g + "," + b + ")";
    }
</script>
</html>
