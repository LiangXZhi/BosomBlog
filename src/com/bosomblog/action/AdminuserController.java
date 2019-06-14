package com.bosomblog.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bosomblog.entity.Administrator;
import com.bosomblog.entity.Users;
import com.bosomblog.service.AdminuserService;

@Controller
@RequestMapping("/")
public class AdminuserController {

	@Autowired
	private AdminuserService adminuserService;

	// ����Ա��¼
	@RequestMapping("/login_a")
	public String login_a(
			@ModelAttribute("administrator") Administrator administrator,
			HttpServletRequest request, HttpSession session) {
		if (adminuserService.selectByaname(administrator.getAname()) != null) {
			Administrator administrator2 = adminuserService
					.selectByaname(administrator.getAname());
			if (administrator2.getApassword().equals(
					administrator.getApassword())) {
				session.setAttribute("administrator", administrator);
				return "/admin/index.jsp";
			}
		}
		request.setAttribute("msg", "�˺��������!");
		return "/admin/login.jsp";
	}
	
	//����Ա�˳���¼
	@RequestMapping("/adminexit")
	public String adminexit(HttpSession session) {
		session.removeAttribute("administrator");
		session.invalidate();
		return "/admin/login.jsp";
	}

	// �û���������Ϣ
	@RequestMapping("/search")
	public String search(HttpServletRequest request) {
		List<Users> list = adminuserService.selectAll();
		request.setAttribute("users", list);
		return "/admin/page/news/newslist.jsp";
	}

	// �����û���Ϣ����ʾ
	@RequestMapping("/userany")
	public String userany(@ModelAttribute("users") Users us,
			@RequestParam("id") int userid, HttpServletRequest request) {
		Users users = adminuserService.selectByusersKey(userid);
		request.setAttribute("usera", users);
		return "/admin/page/news/userAny.jsp";
	}

	// ����id�޸ķ��
	@RequestMapping("/coll")
	public String coll(@RequestParam("userid") int userid,
			@RequestParam("banaccount") int banaccount) {
		Users users1 = new Users();
		users1.setUsesid(userid);
		if (banaccount == 0) {
			users1.setBanaccount(1);
		} else if (banaccount == 1) {
			users1.setBanaccount(0);
		}
		adminuserService.updateByPrimaryKeySelective(users1);
		return "/search.bb";
	}

	// �����ǳƺ��ֻ���ģ����ѯ
	@RequestMapping("/sell")
	public String coll(@RequestParam("num") String num,
			HttpServletRequest request) {
		List<Users> users = adminuserService
				.selectByKeyExample("%" + num + "%");
		request.setAttribute("users", users);
		return "/admin/page/news/newslist.jsp";
	}

}
