layui.use(['form','layer','jquery'],function(){
	var form = layui.form,
		layer = parent.layer === undefined ? layui.layer : top.layer,
		laypage = layui.laypage,
		$ = layui.jquery;

 	var systemParameter;
 	form.on("submit(systemParameter)",function(data){
 		systemParameter = '{"cmsName":"'+$(".cmsName").val()+'",';  //ģ������
 		systemParameter += '"version":"'+$(".version").val()+'",';	 //��ǰ�汾
 		systemParameter += '"author":"'+$(".author").val()+'",'; //��������
 		systemParameter += '"homePage":"'+$(".homePage").val()+'",'; //��վ��ҳ
 		systemParameter += '"server":"'+$(".server").val()+'",'; //����������
 		systemParameter += '"dataBase":"'+$(".dataBase").val()+'",'; //���ݿ�汾
 		systemParameter += '"maxUpload":"'+$(".maxUpload").val()+'",'; //����ϴ�����
 		systemParameter += '"userRights":"'+$(".userRights").val()+'",'; //�û�Ȩ��
 		systemParameter += '"description":"'+$(".description").val()+'",'; //վ������
 		systemParameter += '"powerby":"'+$(".powerby").val()+'",'; //��Ȩ��Ϣ
 		systemParameter += '"record":"'+$(".record").val()+'",'; //��վ������
 		systemParameter += '"keywords":"'+$(".keywords").val()+'"}'; //Ĭ�Ϲؼ���
 		window.sessionStorage.setItem("systemParameter",systemParameter);
 		//����loading
 		var index = top.layer.msg('�����ύ�У����Ժ�',{icon: 16,time:false,shade:0.8});
        setTimeout(function(){
            layer.close(index);
			layer.msg("ϵͳ���������޸ĳɹ���");
        },500);
 		return false;
 	})


 	//����Ĭ������
 	if(window.sessionStorage.getItem("systemParameter")){
 		var data = JSON.parse(window.sessionStorage.getItem("systemParameter"));
 		fillData(data);
 	}else{
 		$.ajax({
			url : "../../json/systemParameter.json",
			type : "get",
			dataType : "json",
			success : function(data){
				fillData(data);
			}
		})
 	}

 	//������ݷ���
 	function fillData(data){
 		$(".version").val(data.version);      //��ǰ�汾
		$(".author").val(data.author);        //��������
		$(".homePage").val(data.homePage);    //��վ��ҳ
		$(".server").val(data.server);        //����������
		$(".dataBase").val(data.dataBase);    //���ݿ�汾
		$(".maxUpload").val(data.maxUpload);  //����ϴ�����
		$(".userRights").val(data.userRights);//��ǰ�û�Ȩ��
		$(".cmsName").val(data.cmsName);      //ģ������
		$(".description").val(data.description);//վ������
		$(".powerby").val(data.powerby);      //��Ȩ��Ϣ
		$(".record").val(data.record);      //��վ������
		$(".keywords").val(data.keywords);    //Ĭ�Ϲؼ���
 	}
 	
})
