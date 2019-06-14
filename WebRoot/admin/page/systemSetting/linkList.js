layui.use(['form','layer','laydate','table','upload'],function(){
    var form = layui.form,
        layer = parent.layer === undefined ? layui.layer : top.layer,
        $ = layui.jquery,
        laydate = layui.laydate,
        upload = layui.upload,
        table = layui.table;

    //�����б�
    var tableIns = table.render({
        elem: '#linkList',
        url : '../../json/linkList.json',
        page : true,
        cellMinWidth : 95,
        height : "full-104",
        limit : 20,
        limits : [10,15,20,25],
        id : "linkListTab",
        cols : [[
            {type: "checkbox", fixed:"left", width:50},
            {field: 'logo', title: 'LOGO', width:180, align:"center",templet:function(d){
                return '<a href="'+d.websiteUrl+'" target="_blank"><img src="'+d.logo+'" height="26" /></a>';
            }},
            {field: 'websiteName', title: '��վ����', minWidth:240},
            {field: 'websiteUrl', title: '��վ��ַ',width:300,templet:function(d){
                return '<a class="layui-blue" href="'+d.websiteUrl+'" target="_blank">'+d.websiteUrl+'</a>';
            }},
            {field: 'masterEmail', title: 'վ������',minWidth:200, align:'center'},
            {field: 'showAddress', title: 'չʾλ��', align:'center',templet:function(d){
                return d.showAddress == "checked" ? "��ҳ" : "��ҳ";
            }},
            {field: 'addTime', title: '���ʱ��', align:'center',minWidth:110},
            {title: '����', width:130,fixed:"right",align:"center", templet:function(){
                return '<a class="layui-btn layui-btn-xs" lay-event="edit">�༭</a><a class="layui-btn layui-btn-xs layui-btn-danger" lay-event="del">ɾ��</a>';
            }}
        ]]
    });

    //�������˹�����Ҫ��̨��ϣ�������ʱû�ж�̬Ч����ʾ��
    $(".search_btn").on("click",function(){
        if($(".searchVal").val() != ''){
            table.reload("linkListTab",{
                page: {
                    curr: 1 //���´ӵ� 1 ҳ��ʼ
                },
                where: {
                    key: $(".searchVal").val()  //�����Ĺؼ���
                }
            })
        }else{
            layer.msg("����������������");
        }
    });

    //�������
    function addLink(edit){
        var index = layer.open({
            title : "�������",
            type : 2,
            area : ["300px","385px"],
            content : "page/systemSetting/linksAdd.html",
            success : function(layero, index){
                var body = $($(".layui-layer-iframe",parent.document).find("iframe")[0].contentWindow.document.body);
                if(edit){
                    body.find(".linkLogo").css("background","#fff");
                    body.find(".linkLogoImg").attr("src",edit.logo);
                    body.find(".linkName").val(edit.websiteName);
                    body.find(".linkUrl").val(edit.websiteUrl);
                    body.find(".masterEmail").val(edit.masterEmail);
                    body.find(".showAddress").prop("checked",edit.showAddress);
                    form.render();
                }
                setTimeout(function(){
                    layui.layer.tips('����˴����������б�', '.layui-layer-setwin .layui-layer-close', {
                        tips: 3
                    });
                },500)
            }
        })
    }
    $(".addLink_btn").click(function(){
        addLink();
    })

    //����ɾ��
    $(".delAll_btn").click(function(){
        var checkStatus = table.checkStatus('linkListTab'),
            data = checkStatus.data,
            linkId = [];
        if(data.length > 0) {
            for (var i in data) {
                linkId.push(data[i].newsId);
            }
            layer.confirm('ȷ��ɾ��ѡ�е�������', {icon: 3, title: '��ʾ��Ϣ'}, function (index) {
                // $.get("ɾ�������ӿ�",{
                //     linkId : linkId  //����Ҫɾ����linkId��Ϊ��������
                // },function(data){
                tableIns.reload();
                layer.close(index);
                // })
            })
        }else{
            layer.msg("��ѡ����Ҫɾ��������");
        }
    })

    //�б����
    table.on('tool(linkList)', function(obj){
        var layEvent = obj.event,
            data = obj.data;

        if(layEvent === 'edit'){ //�༭
            addLink(data);
        } else if(layEvent === 'del'){ //ɾ��
            layer.confirm('ȷ��ɾ����������',{icon:3, title:'��ʾ��Ϣ'},function(index){
                // $.get("ɾ�������ӿ�",{
                //     linkId : data.linkId  //����Ҫɾ����linkId��Ϊ��������
                // },function(data){
                    tableIns.reload();
                    layer.close(index);
                // })
            });
        }
    });

    //�ϴ�logo
    upload.render({
        elem: '.linkLogo',
        url: '../../json/linkLogo.json',
        method : "get",  //�˴���Ϊ����ʾ֮�ã�ʵ��ʹ�����뽫��ɾ����Ĭ����post��ʽ�ύ
        done: function(res, index, upload){
            var num = parseInt(4*Math.random());  //����0-4��������������ʾһ��ͷ����Ϣ
            $('.linkLogoImg').attr('src',res.data[num].src);
            $('.linkLogo').css("background","#fff");
        }
    });

    //��ʽ��ʱ��
    function filterTime(val){
        if(val < 10){
            return "0" + val;
        }else{
            return val;
        }
    }
    //���ʱ��
    var time = new Date();
    var submitTime = time.getFullYear()+'-'+filterTime(time.getMonth()+1)+'-'+filterTime(time.getDate())+' '+filterTime(time.getHours())+':'+filterTime(time.getMinutes())+':'+filterTime(time.getSeconds());

    form.on("submit(addLink)",function(data){
        //����loading
        var index = top.layer.msg('�����ύ�У����Ժ�',{icon: 16,time:false,shade:0.8});
        // ʵ��ʹ��ʱ���ύ��Ϣ
        // $.post("�ϴ�·��",{
        //     linkLogoImg : $(".linkLogo").attr("src"),  //logo
        //     linkName : $(".linkName").val(),  //��վ����
        //     linkUrl : $(".linkUrl").val(),    //��ַ
        //     masterEmail : $('.masterEmail').val(),    //վ������
        //     showAddress : data.filed.showAddress == "on" ? "checked" : "",    //չʾλ��
        //     newsTime : submitTime,    //����ʱ��
        // },function(res){
        //
        // })
        setTimeout(function(){
            top.layer.close(index);
            top.layer.msg("������ӳɹ���");
            layer.closeAll("iframe");
            //ˢ�¸�ҳ��
            $(".layui-tab-item.layui-show",parent.document).find("iframe")[0].contentWindow.location.reload();
        },500);
        return false;
    })

})