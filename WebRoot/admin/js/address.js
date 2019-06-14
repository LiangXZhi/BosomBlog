layui.define(["form","jquery"],function(exports){
    var form = layui.form,
    $ = layui.jquery,
    Address = {
        provinces : function() {
            //����ʡ����
            var proHtml = '',that = this;
            $.get("admin/json/address.json", function (data) {
                for (var i = 0; i < data.length; i++) {
                    proHtml += '<option value="' + data[i].code + '">' + data[i].name + '</option>';
                }
                //��ʼ��ʡ����
                $("select[name=province]").append(proHtml);
                form.render();
                form.on('select(province)', function (proData) {
                    $("select[name=area]").html('<option value="">��ѡ����/��</option>');
                    var value = proData.value;
                    if (value > 0) {
                        that.citys(data[$(this).index() - 1].childs);
                    } else {
                        $("select[name=city]").attr("disabled", "disabled");
                    }
                });
            })
        },
        //����������
        citys : function(citys) {
            var cityHtml = '<option value="">��ѡ����</option>',that = this;
            for (var i = 0; i < citys.length; i++) {
                cityHtml += '<option value="' + citys[i].code + '">' + citys[i].name + '</option>';
            }
            $("select[name=city]").html(cityHtml).removeAttr("disabled");
            form.render();
            form.on('select(city)', function (cityData) {
                var value = cityData.value;
                if (value > 0) {
                    that.areas(citys[$(this).index() - 1].childs);
                } else {
                    $("select[name=area]").attr("disabled", "disabled");
                }
            });
        },
        //������/������
        areas : function(areas) {
            var areaHtml = '<option value="">��ѡ����/��</option>';
            for (var i = 0; i < areas.length; i++) {
                areaHtml += '<option value="' + areas[i].code + '">' + areas[i].name + '</option>';
            }
            $("select[name=area]").html(areaHtml).removeAttr("disabled");
            form.render();
        }
    };
    exports("address",Address);
})