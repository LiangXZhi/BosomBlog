layui.use([ 'form', 'layer', 'layedit', 'laydate', 'upload' ], function() {
	var form = layui.form
	layer = parent.layer === undefined ? layui.layer : top.layer,
			laypage = layui.laypage, upload = layui.upload,
			layedit = layui.layedit, laydate = layui.laydate, $ = layui.jquery;

	// 用于同步编辑器内容到textarea
	layedit.sync(editIndex);

	form.verify({
		newsName : function(val) {
			if (val == '') {
				return "文章标题不能为空";
			}
		},
		content : function(val) {
			if (val == '') {
				return "文章内容不能为空";
			}
		}
	})

	// 创建一个编辑器
	var editIndex = layedit.build('news_content', {
		height : 535,
		uploadImage : {
			url : "/BosomBlog/admin/json/newsImg.json"
		}
	});

})