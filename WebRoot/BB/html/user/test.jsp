<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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

<title>My JSP 'test.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="BB/res/layui/css/layui.css">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<button type="button" class="layui-btn upload-img" id="test1">
		<i class="layui-icon">&#xe67c;</i>上传头像
	</button>
	<script src="BB/res/layui/layui.js"></script>
	<script type="text/javascript">
		layui.use('upload', function() {
			var upload = layui.upload;
			var uploadInst = upload.render({
				elem : '#test1',
				url : '/touxiang.bb',
				datatype : 'post',
				done : function(res) {
					//上传完毕回调
				},
				error : function() {
					//请求异常回调
				}
			});
		});
	</script>
</body>
</html>
