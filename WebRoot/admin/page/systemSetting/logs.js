layui.use(['table'],function(){
	var table = layui.table;

	//ϵͳ��־
    table.render({
        elem: '#logs',
        url : '../../json/logs.json',
        cellMinWidth : 95,
        page : true,
        height : "full-20",
        limit : 20,
        limits : [10,15,20,25],
        id : "systemLog",
        cols : [[
            {type: "checkbox", fixed:"left", width:50},
            {field: 'logId', title: '���', width:60, align:"center"},
            {field: 'url', title: '�����ַ', width:350},
            {field: 'method', title: '������ʽ', align:'center',templet:function(d){
                if(d.method.toUpperCase() == "GET"){
                    return '<span class="layui-blue">'+d.method+'</span>'
                }else{
                    return '<span class="layui-red">'+d.method+'</span>'
                }
            }},
            {field: 'ip', title: '����IP',  align:'center',minWidth:130},
            {field: 'timeConsuming', title: '��ʱ', align:'center',templet:function(d){
                return '<span class="layui-btn layui-btn-normal layui-btn-xs">'+d.timeConsuming+'</span>'
            }},
            {field: 'isAbnormal', title: '�Ƿ��쳣', align:'center',templet:function(d){
                if(d.isAbnormal == "����"){
                    return '<span class="layui-btn layui-btn-green layui-btn-xs">'+d.isAbnormal+'</span>'
                }else{
                    return '<span class="layui-btn layui-btn-danger layui-btn-xs">'+d.isAbnormal+'</span>'
                }
            }},
            {field: 'operator',title: '������', minWidth:100, templet:'#newsListBar',align:"center"},
            {field: 'operatingTime', title: '����ʱ��', align:'center', width:170}
        ]]
    });
 	
})
