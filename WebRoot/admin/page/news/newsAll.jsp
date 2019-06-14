<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="admin/layui/css/layui.css" media="all" />
<link rel="stylesheet" href="admin/css/public.css" media="all" />
<script type="text/javascript" src="admin/css/shubiao/shubiao.js"></script>

<style type="text/css">
#aa {
	width: 100px;
	white-space: nowrap;
	text-overflow: ellipsis;
	overflow: hidden;
}
</style>
</head>

<body class="childrenBody">
	<blockquote class="layui-elem-quote quoteBox">
		<form class="layui-form" action="yells.bb" method="post">
			<div class="layui-inline">
				<div class="layui-input-inline">
					<input type="text" class="layui-input searchVal"
						placeholder="请输入搜索的内容" name="sum" />
				</div>
				<button class="layui-btn search_btn" data-type="reload"
					type="submit">搜索</button>
			</div>

		</form>
	</blockquote>
	<form class="layui-form" action="sells.bb" method="post">
		<table id="" lay-filter="newsList" class="layui-table">
			<thead>
				<tr>
					<th>序号</th>
					<th>用户昵称</th>
					<th>博文标题</th>
					<th>发布日期</th>
					<th>博文类型</th>
					<th>审核</th>
					<th>是否置顶</th>
					<th>是否精贴</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${empty posts}">
					<tr>
						<td colspan="9" style="text-align: center;">没有相关的博客！</td>
					</tr>
				</c:if>
				<c:if test="${not empty posts}">
					<c:forEach var="p" items="${posts}" varStatus="posts">
						<tr>
							<td>${posts.count}</td>
							<td>${p.users.usersname}</td>
							<td><div id="aa">
									<a href="posts.bb?pid=${p.pid}" target="_blank">
										${p.ptitle} </a>
								</div></td>

							<td><fmt:formatDate value="${p.pdate}" pattern="yyyy年MM月dd日"></fmt:formatDate>
							</td>
							<td>${p.posttype.ptypeName}</td>
							<td style="width:100px;"><select name="city">
									<c:if test="${p.paudit==1}">
										<option value="${p.pid}/1" selected="selected">待审核</option>
										<option value="${p.pid}/2">审核通过</option>
										<option value="${p.pid}/3">审核不通过</option>
									</c:if>
									<c:if test="${p.paudit==2}">
										<option value="${p.pid}/1">待审核</option>
										<option value="${p.pid}/2" selected="selected">审核通过</option>
										<option value="${p.pid}/3">审核不通过</option>
									</c:if>
									<c:if test="${p.paudit==3}">
										<option value="${p.pid}/1">待审核</option>
										<option value="${p.pid}/2">审核通过</option>
										<option value="${p.pid}/3" selected="selected">审核不通过</option>
									</c:if>
							</select></td>
							<td><c:if test="${p.pstatus==1}">
									<input type="checkbox" name="visible" lay-filter="bood"
										lay-skin="switch" checked lay-text="置顶|取消" value="${p.pid}">
								</c:if> <c:if test="${p.pstatus==0}">
									<input type="checkbox" name="visible" lay-filter="bood"
										lay-skin="switch" lay-text="置顶|取消" value="${p.pid}">
								</c:if></td>
							<td><c:if test="${p.pelite==1}">
									<input type="checkbox" name="valid" lay-skin="switch" checked
										lay-text="精贴|取消" lay-filter="good" value="${p.pid}">
								</c:if> <c:if test="${p.pelite==0}">
									<input type="checkbox" name="valid" lay-filter="good"
										lay-skin="switch" lay-text="精贴|取消" value="${p.pid}">
								</c:if></td>
							<td><a href="delect.bb?id=${p.pid}"
								onclick="return confirm('确认删除吗？')"><span class="layui-btn"><i
										class="layui-icon">&#xe640;</i>删除</span> </a></td>
						</tr>
					</c:forEach>
				</c:if>
			</tbody>
		</table>


	</form>
	<script type="text/javascript" src="admin/layui/layui.js"></script>
	<script type="text/javascript" src="BB/res/mods/jquery-3.3.1.min.js"></script>
	<script type="text/javascript">
		layui.use([ 'form' ], function() {
			form = layui.form;
			form.on('switch(bood)', function(data) {
				$.ajax({
					type : 'GET',
					url : 'ieel.bb?id=' + data.value,
					dataType : 'text',
				});
			});
			form.on('switch(good)', function(data) {
				$.ajax({
					type : 'GET',
					url : 'beel.bb?id=' + data.value,
					dataType : 'text',
				});
			});
			form.on('select', function(data) {
				$.ajax({
					type : 'GET',
					url : 'yeel.bb?data=' + data.value,
					dataType : 'text',
				});
			});
		})
	</script>
</body>
</html>
