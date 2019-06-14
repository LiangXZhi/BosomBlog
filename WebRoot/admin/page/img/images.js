layui.config({
	base : "../../js/"
}).use(['flow','form','layer','upload'],function(){
    var flow = layui.flow,
        form = layui.form,
        layer = parent.layer === undefined ? layui.layer : top.layer,
        upload = layui.upload,
        $ = layui.jquery;

    //������ͼƬ
    var imgNums = 15;  //��ҳ��ʾͼƬ����
    flow.load({
        elem: '#Images', //����������
        done: function(page, next){ //������һҳ
            $.get("../../json/images.json",function(res){
                //ģ�����
                var imgList = [],data = res.data;
                var maxPage = imgNums*page < data.length ? imgNums*page : data.length;
                setTimeout(function(){
                    for(var i=imgNums*(page-1); i<maxPage; i++){
                        imgList.push('<li><img layer-src="../../'+ data[i].src +'" src="../../'+ data[i].thumb +'" alt="'+data[i].alt+'"><div class="operate"><div class="check"><input type="checkbox" name="belle" lay-filter="choose" lay-skin="primary" title="'+data[i].alt+'"></div><i class="layui-icon img_del">&#xe640;</i></div></li>');
                    }
                    next(imgList.join(''), page < (data.length/imgNums));
                    form.render();
                }, 500);
            });
        }
    });

    //����ͼƬ�ĸ߶�
    $(window).resize(function(){
        $("#Images li img").height($("#Images li img").width());
    })

    //��ͼƬ�ϴ�
    upload.render({
        elem: '.uploadNewImg',
        url: '../../json/userface.json',
        multiple: true,
        before: function(obj){
            //Ԥ�������ļ�ʾ������֧��ie8
            obj.preview(function(index, file, result){
                $('#Images').prepend('<li><img layer-src="'+ result +'" src="'+ result +'" alt="'+ file.name +'" class="layui-upload-img"><div class="operate"><div class="check"><input type="checkbox" name="belle" lay-filter="choose" lay-skin="primary" title="'+file.name+'"></div><i class="layui-icon img_del">&#xe640;</i></div></li>')
                //����ͼƬ�ĸ߶�
                $("#Images li img").height($("#Images li img").width());
                form.render("checkbox");
            });
        },
        done: function(res){
            //�ϴ����
        }
    });

    //������
    $("body").on("click","#Images img",function(){
        parent.showImg();
    })

    //ɾ������ͼƬ
    $("body").on("click",".img_del",function(){
        var _this = $(this);
        layer.confirm('ȷ��ɾ��ͼƬ"'+_this.siblings().find("input").attr("title")+'"��',{icon:3, title:'��ʾ��Ϣ'},function(index){
            _this.parents("li").hide(1000);
            setTimeout(function(){_this.parents("li").remove();},950);
            layer.close(index);
        });
    })

    //ȫѡ
    form.on('checkbox(selectAll)', function(data){
        var child = $("#Images li input[type='checkbox']");
        child.each(function(index, item){
            item.checked = data.elem.checked;
        });
        form.render('checkbox');
    });

    //ͨ���ж��Ƿ�ȫ��ѡ����ȷ��ȫѡ��ť�Ƿ�ѡ��
    form.on("checkbox(choose)",function(data){
        var child = $(data.elem).parents('#Images').find('li input[type="checkbox"]');
        var childChecked = $(data.elem).parents('#Images').find('li input[type="checkbox"]:checked');
        if(childChecked.length == child.length){
            $(data.elem).parents('#Images').siblings("blockquote").find('input#selectAll').get(0).checked = true;
        }else{
            $(data.elem).parents('#Images').siblings("blockquote").find('input#selectAll').get(0).checked = false;
        }
        form.render('checkbox');
    })

    //����ɾ��
    $(".batchDel").click(function(){
        var $checkbox = $('#Images li input[type="checkbox"]');
        var $checked = $('#Images li input[type="checkbox"]:checked');
        if($checkbox.is(":checked")){
            layer.confirm('ȷ��ɾ��ѡ�е�ͼƬ��',{icon:3, title:'��ʾ��Ϣ'},function(index){
                var index = layer.msg('ɾ���У����Ժ�',{icon: 16,time:false,shade:0.8});
                setTimeout(function(){
                    //ɾ������
                    $checked.each(function(){
                        $(this).parents("li").hide(1000);
                        setTimeout(function(){$(this).parents("li").remove();},950);
                    })
                    $('#Images li input[type="checkbox"],#selectAll').prop("checked",false);
                    form.render();
                    layer.close(index);
                    layer.msg("ɾ���ɹ�");
                },2000);
            })
        }else{
            layer.msg("��ѡ����Ҫɾ����ͼƬ");
        }
    })

})