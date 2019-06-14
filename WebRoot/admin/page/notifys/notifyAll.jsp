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

<title>My JSP 'notifyAll.jsp' starting page</title>

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
	width: 400px;
	white-space: nowrap;
	text-overflow: ellipsis;
	overflow: hidden;
}
</style>


</head>

<body class="childrenBody">

	<blockquote class="layui-elem-quote quoteBox">

		<div class="layui-inline">
			<form class="layui-form" method="post" action="rell.bb">
				<div class="layui-input-inline">
					<input type="text" class="layui-input searchVal"
						placeholder="请输入搜索的内容" name="num" />
				</div>
				<button class="layui-btn search_btn" data-type="reload"
					type="submit">搜索</button>
			</form>
		</div>

		<div class="layui-inline">
			<form class="layui-form" method="post" action="tell.bb">
				<div class="layui-input-inline">
					<input type="text" class="layui-input searchVal"
						placeholder="请输入公告的内容" name="contents" />
				</div>
				<button class="layui-btn search_btn" data-type="reload"
					type="submit">添加</button>
			</form>
		</div>


	</blockquote>
	<form class="layui-form">
		<table class="layui-table">
			<colgroup>
				<col width="150">
				<col width="500">
				<col>
			</colgroup>
			<thead>
				<tr>
					<th>序号</th>
					<th>公告内容</th>
					<th>公告发布时间</th>
					<th>用户是否可见</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${empty notifies}">
					<tr>
						<td colspan="9" style="text-align: center;">没有相关的公告！</td>
					</tr>
				</c:if>
				<c:if test="${not empty notifies}">
					<c:forEach var="n" items="${notifies}" varStatus="notify">
						<tr>

							<td>${notify.count}</td>
							<td><div id="aa">${n.notityContent}</div></td>
							<td><fmt:formatDate value="${n.sendtime}"
									pattern="yyyy年MM月dd日" />
							</td>
							<td><c:if test="${n.visible==0}">
									<input type="checkbox" name="valid" value="${n.notityId}"
										lay-skin="switch" checked lay-text="可见|隐藏">
								</c:if> <c:if test="${n.visible==1}">
									<input type="checkbox" name="valid" value="${n.notityId}"
										lay-skin="switch" lay-text="可见|隐藏">
								</c:if></td>
							<td><a href="kell.bb?id=${n.notityId}"
								onclick="return confirm('确认删除此公告吗？')"> <span
									class="layui-btn">删除</span> </a></td>
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
			form.on('switch', function(data) {
				$.ajax({
					type : 'GET',
					url : 'dell.bb?id=' + data.value,
					dataType : 'text',
				});
			});
		})
	</script>
</body>
</html>
