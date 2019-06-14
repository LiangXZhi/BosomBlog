package com.bosomblog.action;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bosomblog.entity.Fans;
import com.bosomblog.entity.Users;
import com.bosomblog.service.FansService;

@Controller
@RequestMapping("/")
public class FansController {
	@Autowired
	private FansService fansService;

	@RequestMapping("/fanes")
	public String fanes(@RequestParam("usersid") int usersid,
			HttpServletRequest request) {
		List<Users> fanss = fansService.queryFansByid(usersid);
		request.setAttribute("fanss", fanss);
		return "/follow.bb";
	}
	
	@RequestMapping("/addfans")
	public String addfans(@RequestParam("usersid") int usersid,
			@RequestParam("zt") int zt, HttpSession session,
			HttpServletRequest request) {
		if (session.getAttribute("myuser")==null) {
			return "/BB/html/user/login.jsp";
		}else {
			Users us = (Users) session.getAttribute("myuser");
			Fans fans=new Fans();
			fans.setUsersid(usersid);
			fans.setFans(us.getUsesid());
			fans.setCreateAt(new Date());
			if (zt == 0) {
				fansService.insert(fans);
			} else if (zt == 1) {
				fansService.deleteByUsersid(fans);
			}
		}
		return "home.bb?usersid=" + usersid;
	}
}
