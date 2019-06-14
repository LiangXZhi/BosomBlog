package com.bosomblog.action;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bosomblog.entity.Notify;
import com.bosomblog.service.NotifyService;

@Controller
@RequestMapping("/")
public class NotifysController {

	@Autowired
	private NotifyService notifyService;

	// ��̨��ѯ���й���
	@RequestMapping("/searchs")
	public String selectNotify(HttpServletRequest request) {
		List<Notify> notifies = notifyService.selectsByExample();
		request.setAttribute("notifies", notifies);
		return "/admin/page/notifys/notifyAll.jsp";
	}

	// ��̨����idɾ������
	@RequestMapping("/kell")
	public String deletsNotify(@RequestParam("id") int id,
			HttpServletRequest request) {
		notifyService.deleteByPrimaryKey(id);
		return "/searchs.bb";
	}

	// ��������ģ����ѯ
	@RequestMapping("/rell")
	public String selectBycontent(@RequestParam("num") String num,
			HttpServletRequest request) {
		List<Notify> notifies = notifyService.selectBycontent("%" + num + "%");
		request.setAttribute("notifies", notifies);

		return "/admin/page/notifys/notifyAll.jsp";
	}

	// ��ӹ�������
	@RequestMapping("/tell")
	public String insert(@RequestParam("contents") String contents,
			HttpServletRequest request) {
		Notify notifies = new Notify();
		notifies.setNotityTitle("����");
		notifies.setNotityContent(contents);
		notifies.setVisible(0);
		notifies.setSendtime(new Date());
		notifyService.insert(notifies);
		return "/searchs.bb";
	}

	// ��̨�ɼ�������
	@RequestMapping("/dell")
	public String updatebyone(@RequestParam("id") int id,
			HttpServletRequest request) {
		Notify notify = notifyService.selectByPrimaryKey(id);
		if (notify.getVisible() == 0) {
			notify.setVisible(1);
			notifyService.updateByone(notify);
		} else if (notify.getVisible() == 1) {
			notify.setVisible(0);
			notifyService.updateByone(notify);
		}
		return "/searchs.bb";

	}
}
