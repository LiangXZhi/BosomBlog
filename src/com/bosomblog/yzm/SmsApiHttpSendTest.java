package com.bosomblog.yzm;

import com.bosomblog.yzm.Config;
import com.bosomblog.yzm.HttpUtil;

public class SmsApiHttpSendTest {

	public void execute(String phone, String yzm) throws Exception {
		StringBuilder sb = new StringBuilder();
		sb.append("accountSid").append("=").append(Config.ACCOUNT_SID);
		sb.append("&to").append("=").append(phone);
		sb.append("&param").append("=").append(yzm);
		sb.append("&templateid").append("=").append("2452");
		String body = sb.toString()
				+ HttpUtil.createCommonParam(Config.ACCOUNT_SID,
						Config.AUTH_TOKEN);
		String result = HttpUtil.post(Config.BASE_URL, body);
		System.out.println(result);

	}
}
