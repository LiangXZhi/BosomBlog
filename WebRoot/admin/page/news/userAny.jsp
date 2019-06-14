<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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

<title>My JSP 'userAny.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="admin/layui/css/layui.css" media="all" />
<link rel="stylesheet" href="admin/css/index.css" media="all" />
<link rel="stylesheet" href="admin/css/shubiao/shubiao.css" media="all">
<script type="text/javascript" src="admin/css/shubiao/shubiao.js"></script>
<style type="text/css">
	.aa{
	text-align: right;
	}
	.bb{
	text-align: left;
	}
</style>
</head>

<body>
	<center>
	
	<table class="layui-table">
		<colgroup>
			<col width="150">
			<col width="200">
			<col>
		</colgroup>
		<tr>
			<td class="aa">用户编号:</td>
			<td class="bb">${usera.usesid}</td>
		</tr>
		<tr>
			<td class="aa">用户头像:</td>
			<td class="bb"><image src="${usera.userpic}" width="40px;"></td>
		</tr>
		<tr>
			<td class="aa">用户昵称:</td>
			<td class="bb">${usera.usersname}</td>
		</tr>
		<tr>
			<td class="aa">用户密码:</td>
			<td class="bb">${usera.password}</td>
		</tr>
		<tr>
			<td class="aa">用户手机:</td>
			<td class="bb">${usera.phone}</td>
		</tr>
		<tr>
			<td class="aa">用户性别:</td>
			<td class="bb">${usera.sex}</td>
		</tr>
		<tr>
			<td class="aa">用户生日:</td>
			<td class="bb">
			<fmt:formatDate value="${usera.birthday}"
								pattern="yyyy年MM月dd日" />
			</td>
		</tr>
		<tr>
			<td class="aa">所在地:</td>
			<td class="bb">${usera.address}</td>
		</tr>
		
		<tr>
			<td class="aa">个人简介:</td>
			<td class="bb">${usera.intro}</td>
		</tr>
		<tr>
			<td class="aa">经验:</td>
			<td class="bb">${usera.grade}</td>
		</tr>
		<tr>
			<td class="aa">账号创建时间:</td>
			<td class="bb">
			<fmt:formatDate value="${usera.createtime}"
								pattern="yyyy年MM月dd日" />
			
			</td>
		</tr>
		<tr>
			<td class="aa">封号状态:</td>
			<td class="bb">
				<c:if test="${usera.banaccount==1}">
					封号
				</c:if>
				<c:if test="${usera.banaccount==0}">
					正常
				</c:if>
			</td>
		</tr>
	</table>
	<button class="layui-btn layui-btn-fluid" type="button" onclick="javascript:history.go(-1)">返回</button>
		
	</center>
	<script type="text/javascript" src="admin/layui/layui.js"></script>
</body>

</html>
