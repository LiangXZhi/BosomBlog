<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addressDoc.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="admin/layui/css/layui.css" media="all" />
	<link rel="stylesheet" href="admin/css/public.css" media="all" />

  </head>
  
  <body class="childrenBody">
	<blockquote class="layui-elem-quote">
		address模块是封装的一个省市区三级联动的功能，可以和form、layer等模块一样通过模块化引入进行使用。唯一的不同就是模块的存放路径和使用时的配置。下面将对此区别进行详细的描述。
	</blockquote>
	<blockquote class="layui-elem-quote">
		模块加载名称：<em class="layui-word-aux">address</em>
	</blockquote>
	<fieldset class="layui-elem-field layui-field-title magt30">
		<legend>核心方法</legend>
	</fieldset>
	<p>语法：<span class="layui-blue">layui.address()</span></p>
	<pre class="layui-code" lay-title="JavaScript">
		layui.use('address', function(){
		  var layui.address();
		});
	</pre>
	<p>上面说过，模块相对页面的存放路径不同，使用时也需要进行不同的配置。如果页面和此模块属于同级关系，则不用进行任何配置，直接引入即可使用。如果它们不属于同级关系，则需要通过查找address.js文件相对xx.js文件的相对路径进行配置，如：address.js文件与a文件夹属于同级，而a文件夹中包含b文件夹，b文件夹中包含xx.js，通过xx.js引入address模块则进行下面的配置</p>
	<pre class="layui-code" lay-title="JavaScript">
		layui.config({
		  base : "/admin/js/"  <em class="layui-word-aux">//如果a文件夹中直接就是xx.js文件，则为“../js/”</em>
		}).extend({
		  "address" : "address"
		})
	</pre>
	<fieldset class="layui-elem-field layui-field-title magt30">
		<legend>HTML数据格式</legend>
	</fieldset>
	<p>下面是HTML数据格式，<span class="layui-red">其中select的name值和lay-filter值是固定不可改变的</span>，因为模块中是通过查找对应name的select进行的赋值，通过form.on("select(filter)")执行选择的方法，所以这两个值是不可以随意更改的。如果需要改变请将模块源码中对应的值一同修改。另外需要注意的是“市”、“区/县”的select需要添加一个<span class="layui-blue">disabled属性</span>，主要是为了避免在没有选择省份的情况下先选择市、区造成错误。</p>
	<pre class="layui-code" lay-title="">
		//<em class="layui-word-aux">省份select</em>
		&lt;select name="province" lay-filter="province"&gt;
		  &lt;option value=""&gt;请选择省&lt;/option&gt;
		&lt;/select&gt;
		//<em class="layui-word-aux">市select</em>
		&lt;select name="city" lay-filter="city" disabled&gt;
		  &lt;option value=""&gt;请选择市&lt;/option&gt;
		&lt;/select&gt;
		//<em class="layui-word-aux">区/县select</em>
		&lt;select name="area" lay-filter="area" disabled&gt;
		  &lt;option value=""&gt;请选择县/区&lt;/option&gt;
		&lt;/select&gt;
	</pre>
	<fieldset class="layui-elem-field layui-field-title magt30">
		<legend>JSON数据格式</legend>
	</fieldset>
	<p>其中<span class="layui-blue">code</span>为地区id，用于给option赋值；<span class="layui-blue">name</span>为地区名称，用于设置option的text；<span class="layui-blue">childs</span>为当前区域的下级地区。</p>
	<pre class="layui-code" lay-title="JSON">
		[{
		  "code": "11",
		  "name": "北京市",
		  "childs": [{
		      "code": "1101",
		      "name": "市辖区",
		      "childs": [{
		          "code": "110101",
		          "name": "东城区"
		      }]
		  }]
		}]
	</pre>
	<script type="text/javascript" src="admin/layui/layui.js"></script>
	<script type="text/javascript">
        layui.use(['code'],function(){
            layui.code({
                about:false
            });
        })
	</script>
</body>
</html>
