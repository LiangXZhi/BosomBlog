package com.bosomblog.action;

import java.net.URLEncoder;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bosomblog.entity.Users;
import com.bosomblog.service.UsersService;
import com.bosomblog.yzm.RandomNum;
import com.bosomblog.yzm.SmsApiHttpSendTest;

@Controller
@RequestMapping("/")
public class UsersController {
	@Autowired
	private UsersService usersService;

	// 登录
	@RequestMapping("/login")
	public String login(@ModelAttribute("users") Users users2,
			HttpServletRequest request, HttpSession session) {
		if (usersService.queryByPhone(users2.getPhone()) != null) {
			Users users1 = usersService.queryByPhone(users2.getPhone());
			if (users2.getPassword().equals(users1.getPassword())) {
				session.setAttribute("myuser", users1);
				return "/index.bb";
			}
		}
		request.setAttribute("msg", "账号密码错误!");
		return "/BB/html/user/login.jsp";
	}

	private String yzm1 = null;

	// 发送yzm
	@SuppressWarnings("deprecation")
	@RequestMapping("yzm")
	public String yzm(@RequestParam("phone") String phone) {
		yzm1 = URLEncoder.encode(RandomNum.getRandom());
		SmsApiHttpSendTest am = new SmsApiHttpSendTest();
		try {
			am.execute(phone, yzm1);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/BB/html/user/reg.jsp";
	}

	// 注册
	@RequestMapping("/reg")
	public String reg(@RequestParam("phone") String phone,
			@RequestParam("pass") String pwd, @RequestParam("yzm") String yzm2,
			HttpServletRequest request) {
		if (usersService.queryByPhone(phone) != null) {
			request.setAttribute("msg", "该手机已注册");
			return "/BB/html/user/reg.jsp";
		} else {
			if (yzm1 == null) {
				request.setAttribute("msg", "请发送验证码!");
				return "/BB/html/user/reg.jsp";
			} else {
				if (yzm1.equals(yzm2)) {
					Users users = new Users();
					users.setUserpic("images/tx10.png");
					users.setUsersname("BB军成员");
					users.setPassword(pwd);
					users.setPhone(phone);
					users.setSex("男");
					users.setGrade(0);
					users.setCreatetime(new Date());
					users.setBanaccount(0);
					usersService.insertSelective(users);
				} else {
					request.setAttribute("msg", "验证码错误!");
					return "/BB/html/user/reg.jsp";
				}
			}

		}
		return "/BB/html/user/login.jsp";
	}

	// 退出登录
	@RequestMapping("/exit")
	public String exit(HttpSession session) {
		session.removeAttribute("myuser");
		session.invalidate();
		return "/index.bb";
	}

	// 修改个人信息
	@RequestMapping("/updateUser")
	public String updateUser(@ModelAttribute("users") Users users,
			HttpSession session, HttpServletRequest request) {
		usersService.updateByPhone(users);
		Users users1 = usersService.queryByPhone(users.getPhone());
		Users u = (Users) session.getAttribute("myuser");
		session.setAttribute("myuser", users1);
		return "/home.bb?usersid=" + u.getUsesid();
	}

	// 修改密码
	@RequestMapping("/repass")
	public String repass(@RequestParam("nowpass") String nowpass,
			@RequestParam("pass") String pass,
			@RequestParam("repass") String repass, HttpSession session,
			HttpServletRequest request) {
		Users users = (Users) session.getAttribute("myuser");
		if (!users.getPassword().equals(nowpass)) {
			request.setAttribute("msg", "原密码不正确!");
			Users users1 = usersService.queryByPhone(users.getPhone());
			session.setAttribute("myuser", users1);
			return "/BB/html/user/set.jsp";
		} else {
			Users user = new Users();
			user.setPassword(pass);
			user.setPhone(users.getPhone());
			usersService.updateByPhone(user);
			session.removeAttribute("myuser");
			session.invalidate();
		}
		return "/BB/html/user/login.jsp";
	}

	// 根据用户ID查询用户所有信息
	@RequestMapping("/home")
	public String home(@RequestParam("usersid") int usersid,
			HttpServletRequest request) {
		Users users = usersService.queryById(usersid);
		request.setAttribute("user", users);
		return "/supost.bb?uid="+usersid;
	}

	// 上传图片
	@RequestMapping("/touxiang")
	public String touxiang() {
		return "/centreall.bb";
	}
	
	//签到
	@RequestMapping("/qiandao")
	public String qiandao(@RequestParam("usersid") String usersid,HttpSession session) {
		usersService.updataUserGrade(Integer.valueOf(usersid), 5);
		session.setAttribute("qdflag", "true");
		session.setAttribute("days", 1);
		return "/index.bb";
	}

	// 排行榜控制器
//	@RequestMapping("/rank")
//	public String rank(@RequestParam("xb") int xb) {
//		if (xb == 0) {
//			return "dj.bb";
//		} else if (xb == 1) {
//			System.out.println("签到");
//		} else if (xb == 2) {
//			return "ft.bb";
//		} else if (xb == 3) {
//			System.out.println("回帖");
//		}
//		return "centreall.bb";
//	}

	// 用户等级排行榜
	@RequestMapping("/index")
	public String dj(HttpSession session) {
		List<Users> dj = usersService.orderByGrade();
		session.setAttribute("dj", dj);
		return "/centreall.bb";
	}

	// 用户签到排行榜
	@RequestMapping("/qd")
	public String qd(HttpSession session) {

		return "/centreall.bb";
	}

	// 用户发帖排行榜
	@RequestMapping("/ft")
	public String ft(HttpSession session) {
		List<Users> ft = usersService.orderByFt();
		session.setAttribute("ft", ft);
		return "/centreall.bb";
	}

	// 用户回帖排行榜
	@RequestMapping("/ht")
	public String ht(HttpSession session) {

		return "/centreall.bb";
	}
}
