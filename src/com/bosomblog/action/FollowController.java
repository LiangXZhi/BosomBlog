package com.bosomblog.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bosomblog.entity.Follow;
import com.bosomblog.entity.Users;
import com.bosomblog.service.FollowService;
import com.bosomblog.service.UsersService;

@Controller
@RequestMapping("/")
public class FollowController {
	@Autowired
	private FollowService followService;
	@Autowired
	private UsersService usersService;

	@RequestMapping("/follow")
	public String follow(@RequestParam("usersid") int usersid,
			HttpServletRequest request) {
		List<Users> foll = followService.queryFollowByid(usersid);
		request.setAttribute("foll", foll);
		return "/friend.bb";
	}

	@SuppressWarnings("unchecked")
	@RequestMapping("/friend")
	public String friend(HttpServletRequest request,HttpSession session) {
		Users myuser = (Users) session.getAttribute("myuser");
		List<Users> fanss = (List<Users>) request.getAttribute("fanss");
		List<Users> foll = (List<Users>) request.getAttribute("foll");
		List<Users> fri = new ArrayList<Users>();
		if (fanss.size() >= foll.size()) {
			for (Users u1 : fanss) {
				for (Users u2 : foll) {
					if (u1.getUsesid() == u2.getUsesid()) {
						fri.add(u1);
					}
				}
			}
		} else {
			for (Users u1 : foll) {
				for (Users u2 : fanss) {
					if (u1.getUsesid() == u2.getUsesid()) {
						fri.add(u1);
					}
				}
			}
		}
		int fssize = fanss.size();
		int fosize = foll.size();
		int frsize = fri.size();
		request.setAttribute("fri", fri);
		request.setAttribute("fssize", fssize);
		request.setAttribute("fosize", fosize);
		request.setAttribute("frsize", frsize);
		Users users1 = usersService.queryByPhone(myuser.getPhone());
		session.setAttribute("myuser", users1);
		return "/BB/html/user/friend.jsp";
	}

	@RequestMapping("/homefol")
	public String homefol(@RequestParam("usersid") int usersid,
			HttpServletRequest request, HttpSession session) {
		String flog = "false";
		Users myuser = null;
		if (session.getAttribute("myuser") == null) {
			return "/BB/html/user/login.jsp";
		} else {
			myuser = (Users) session.getAttribute("myuser");
		}
		List<Users> fo = followService.queryFollowByid(myuser.getUsesid());
		for (Users u : fo) {
			if (usersid == u.getUsesid()) {
				flog = "true";
			}
		}
		//刷新用户状态
		Users users1 = usersService.queryByPhone(myuser.getPhone());
		session.setAttribute("myuser", users1);
		//返回flog
		request.setAttribute("flog", flog);
		return "/BB/html/user/home.jsp";
	}

	@RequestMapping("/attention")
	public String attention(@RequestParam("usersid") int usersid,
			@RequestParam("zt") int zt, HttpSession session,
			HttpServletRequest request) {
		if (session.getAttribute("myuser")==null) {
			return "/BB/html/user/login.jsp";
		}else {
			Users us = (Users) session.getAttribute("myuser");
			Follow follow = new Follow();
			follow.setUsersid(us.getUsesid());
			follow.setFollow(usersid);
			follow.setCreateAt(new Date());
			if (zt == 0) {
				followService.insert(follow);
			} else if (zt == 1) {
				followService.deleteByUsersid(follow);
			}
		}
		return "addfans.bb";
	}

	@SuppressWarnings("unchecked")
	@RequestMapping("/indexfol")
	public String indexfol(HttpServletRequest request, HttpSession session) {
		String[] djflag = new String[5];
		for (int i = 0; i < 5; i++) {
			djflag[i] = "false";
		}
		if (session.getAttribute("myuser") == null) {
			
		} else {
			Users myuser = (Users) session.getAttribute("myuser");
			List<Users> fo = followService.queryFollowByid(myuser.getUsesid());
			List<Users> dj = (List<Users>) session.getAttribute("dj");
			int i = 0;
			for (Users d : dj) {
				for (Users f : fo) {
					if (d.getUsesid() == f.getUsesid()) {
						djflag[i] = "true";
						break;
					}
				}
				i++;
			}
			//刷新用户状态
			Users users1 = usersService.queryByPhone(myuser.getPhone());
			session.setAttribute("myuser", users1);
		}
		request.setAttribute("djflag", djflag);
		return "/index.jsp";
	}
}
