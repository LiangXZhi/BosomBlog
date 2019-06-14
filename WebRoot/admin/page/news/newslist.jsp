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

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="admin/layui/css/layui.css" media="all" />
<link rel="stylesheet" href="admin/css/public.css" media="all" />
<script type="text/javascript" src="admin/css/shubiao/shubiao.js"></script>


</head>

<body class="childrenBody">
	<form class="layui-form" action="sell.bb" method="post">
		<blockquote class="layui-elem-quote quoteBox">
			<form class="layui-form">
				<div class="layui-inline">
					<div class="layui-input-inline">
						<input type="text" class="layui-input searchVal"
							placeholder="请输入搜索的内容" name="num" />
					</div>
					<button class="layui-btn search_btn" data-type="reload"
						type="submit">搜索</button>
				</div>
			</form>
		</blockquote>
		<table id="newsList" lay-filter="newsList" class="layui-table">
			<thead>
				<tr>
					<th>序号</th>
					<th>用户头像</th>
					<th>用户昵称</th>
					<th>用户手机</th>
					<th>用户性别</th>
					<th>用户生日</th>
					<th>所在地</th>
					<th>个人介绍</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${empty users}">
					<tr>
						<td colspan="9" style="text-align: center;">没有相关的用户！</td>
					</tr>
				</c:if>
				<c:if test="${not empty users}">
					<c:forEach var="u" items="${users}" varStatus="user">
						<tr>
							<td>${user.count}</td>
							<td><image src="${u.userpic}" width="40px;">
							</td>
							<td>${u.usersname}</td>
							<td>${u.phone}</td>
							<td>${u.sex}</td>
							<td><fmt:formatDate value="${u.birthday}"
									pattern="yyyy年MM月dd日" /></td>
							<td>${u.address}</td>
							<td>${u.intro}</td>
							<td><a href="userany.bb?id=${u.usesid}"><span
									class="layui-badge layui-bg-green">查看</span> </a> <c:if
									test="${u.banaccount==1}">
									<a href="coll.bb?userid=${u.usesid}&banaccount=${u.banaccount}"
										onclick="return confirm('确认解除触封号')"> <span
										class="layui-badge layui-bg-green">封号</span> </a>
								</c:if> <c:if test="${u.banaccount==0}">
									<a href="coll.bb?userid=${u.usesid}&banaccount=${u.banaccount}"
										onclick="return confirm('确认封号吗？')"> <span
										class="layui-badge layui-bg-green">正常</span> </a>
								</c:if></td>
						</tr>
					</c:forEach>
				</c:if>
			</tbody>
		</table>
	</form>
	<script type="text/javascript" src="admin/layui/layui.js"></script>
	<script type="text/javascript" src="BB/res/mods/jquery-3.3.1.min.js"></script>

</body>
</html>
