package com.bosomblog.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bosomblog.entity.Collect;
import com.bosomblog.entity.Users;
import com.bosomblog.service.CollectService;

@Controller
@RequestMapping("/")
public class CollectController {

	@Autowired
	private CollectService collectService;

	// 添加收藏记录
	@RequestMapping("/addcollect")
	public String insertCollect(@RequestParam("uid") Integer uid,
			@RequestParam("pid") Integer pid) {

		Collect collect = new Collect();
		collect.setPid(pid);
		collect.setUsersid(uid);

		collectService.insertCollect(collect);
		return "redirect:/posts.bb?pid=" + pid;
	}

	// 取消收藏记录
	@RequestMapping("/deletecollect")
	public String deletecollect(@RequestParam("uid") Integer uid,
			@RequestParam("pid") Integer pid) {

		Collect collect = new Collect();
		collect.setPid(pid);
		collect.setUsersid(uid);
		collectService.deleteCollect(collect);
		return "redirect:/posts.bb?pid=" + pid;
	}

	// 博客收藏flag
	@RequestMapping("/postsFlag")
	public String postsFlag(HttpSession session, @RequestParam("pid") int pid,
			HttpServletRequest request) {
		String postsflag = null;
		if (session.getAttribute("myuser") == null) {

		} else {
			Users myuser = (Users) session.getAttribute("myuser");
			List<Collect> collects = collectService.findPidByUid(myuser
					.getUsesid());

			for (Collect c : collects) {
				if (pid == c.getPid()) {
					postsflag = "true";
				}
			}
		}
		request.setAttribute("postsflag", postsflag);
		return "/BB/html/jie/detail.jsp";
	}
}
