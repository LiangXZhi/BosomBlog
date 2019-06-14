<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'postsCha.jsp' starting page</title>
    
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
    <script type="text/javascript" src="admin/layui/layui.js"></script>
    
    <center>
	<table class="layui-table">
		<colgroup>
			<col width="150">
			<col width="200">
			<col>
		</colgroup>
		<tr>
			<td class="aa">博文编号:</td>
			<td class="bb">${posts.pid}</td>
		</tr>
		<tr>
			<td class="aa">用户昵称:</td>
			<td class="bb">${posts.users.usersname}</td>
		</tr>
		<tr>
			<td class="aa">博文标题:</td>
			<td class="bb">${posts.ptitle}</td>
		</tr>
		<tr>
			<td class="aa">博文内容:</td>
			<td class="bb">${posts.pcontent}</td>
		</tr>
		<tr>
			<td class="aa">博文类型:</td>
			<td class="bb">${posts.posttype.ptypeName}</td>
		</tr>
		<tr>
			<td class="aa">发布日期:</td>
			<td class="bb"><fmt:formatDate value="${posts.pdate}" pattern="yyyy年MM月dd日" /></td>
		</tr>
		<tr>
			<td class="aa">阅读量:</td>
			<td class="bb">${posts.preadings}</td>
		</tr>
		<tr>
			<td class="aa">点赞数:</td>
			<td class="bb">${posts.plike}</td>
		</tr>
		<tr>
			<td class="aa">是否置顶:</td>
			<td class="bb">
				<c:if test="${posts.pstatus==1}">
					置顶
				</c:if>
				<c:if test="${posts.pstatus==0}">
					未置顶
				</c:if>
			</td>
		</tr>
		<tr>
			<td class="aa">是否精贴:</td>
			<td class="bb">
				<c:if test="${posts.pelite==1}">
					精贴
				</c:if>
				<c:if test="${posts.pelite==0}">
					一般帖子
				</c:if>
			</td>
		</tr>
		<tr>
			<td class="aa">帖子状态:</td>
			<td class="bb">
				<c:if test="${posts.pprivate==1}">
					私密
				</c:if>
				<c:if test="${posts.pprivate==0}">
					公开
				</c:if>
			</td>
		</tr>
		<tr>
			<td class="aa">审核状态:</td>
			<td class="bb">
				<c:if test="${posts.paudit==1}">
					审核中
				</c:if>
				<c:if test="${posts.paudit==2}">
					通过
				</c:if>
				<c:if test="${posts.paudit==3}">
					审核不通过
				</c:if>
			</td>
		</tr>
		
	</table>
	<button class="layui-btn layui-btn-fluid" type="button" onclick="javascript:history.go(-1)">返回</button>
		
	</center>
    
    
    
  </body>
</html>
