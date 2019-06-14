layui.config({
    base : "/admin/js"
}).use(['form','jquery',"address"],function() {
    var form = layui.form,
        $ = layui.jquery,
        address = layui.address;

    //�ж��Ƿ����ù�ͷ��������ù����޸Ķ��������͸��������е�ͷ�񣬷���ʹ��Ĭ��ͷ��
    if(window.sessionStorage.getItem('userFace')){
        $("#userFace").attr("src",window.sessionStorage.getItem('userFace'));
        $(".userAvatar").attr("src",$(".userAvatar").attr("src").split("images/")[0] + "images/" + window.sessionStorage.getItem('userFace').split("images/")[1]);
    }else{
        $("#userFace").attr("src","admin/images/face.jpg");
    }

    //�ж��Ƿ��޸Ĺ��û���Ϣ������޸Ĺ�������޸ĺ����Ϣ
    var menuText = $("#top_tabs",parent.document).text();  //�жϴ򿪵Ĵ����Ƿ���ڡ��������ϡ�ҳ��
    var citys,areas;
    if(window.sessionStorage.getItem('userInfo')){
        //��ȡʡ��Ϣ
        address.provinces();
        var userInfo = JSON.parse(window.sessionStorage.getItem('userInfo'));
        var citys;
        $(".realName").val(userInfo.realName); //�û���
        $(".userSex input[value="+userInfo.sex+"]").attr("checked","checked"); //�Ա�
        $(".userPhone").val(userInfo.userPhone); //�ֻ���
        $(".userBirthday").val(userInfo.userBirthday); //��������
        //���ʡ����Ϣ��ͬʱ��ȡ�м���Ϣ�б�
        $.get("admin/json/address.json", function (addressData) {
            $(".userAddress select[name='province']").val(userInfo.province); //ʡ
            var value = userInfo.province;
            if (value > 0) {
                address.citys(addressData[$(".userAddress select[name='province'] option[value='"+userInfo.province+"']").index()-1].childs);
                citys = addressData[$(".userAddress select[name='province'] option[value='"+userInfo.province+"']").index()-1].childs;
            } else {
                $('.userAddress select[name=city]').attr("disabled","disabled");
            }
            $(".userAddress select[name='city']").val(userInfo.city); //��
            //����м���Ϣ��ͬʱ��ȡ������Ϣ�б�
            var value = userInfo.city;
            if (value > 0) {
                address.areas(citys[$(".userAddress select[name=city] option[value='"+userInfo.city+"']").index()-1].childs);
            } else {
                $('.userAddress select[name=area]').attr("disabled","disabled");
            }
            $(".userAddress select[name='area']").val(userInfo.area); //��
            form.render();
        })
        for(key in userInfo){
            if(key.indexOf("like") != -1){
                $(".userHobby input[name='"+key+"']").attr("checked","checked");
            }
        }
        $(".userEmail").val(userInfo.userEmail); //�û�����
        $(".myself").val(userInfo.myself); //��������
        form.render();
    }
})