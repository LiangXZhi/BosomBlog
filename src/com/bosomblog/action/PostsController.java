package com.bosomblog.action;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bosomblog.data.Pading;
import com.bosomblog.entity.Collect;
import com.bosomblog.entity.Comment;
import com.bosomblog.entity.Demo1;
import com.bosomblog.entity.Demo2;
import com.bosomblog.entity.PostType;
import com.bosomblog.entity.Posts;
import com.bosomblog.entity.Users;
import com.bosomblog.service.CollectService;
import com.bosomblog.service.CommentService;
import com.bosomblog.service.LableService;
import com.bosomblog.service.NotifyService;
import com.bosomblog.service.PostTypeService;
import com.bosomblog.service.PostsService;
import com.bosomblog.service.UsersService;

@Controller
@RequestMapping("/")
public class PostsController {

	@Autowired
	private PostsService postsService;
	@Autowired
	private LableService lableService;
	@Autowired
	private NotifyService notifyService;
	@Autowired
	private CommentService commentService;
	@Autowired
	private UsersService usersService;
	@Autowired
	private PostTypeService postTypeService;
	@Autowired
	private CollectService collectService;

	@RequestMapping("/top")
	public String selectList(HttpServletRequest request) {

		request.setAttribute("postlist", postsService.findPostByList());
		request.setAttribute("lablelist", lableService.findLableName());
		request.setAttribute("notifylist", notifyService.findNotifies());

		return "/indexfol.bb";
	}

	/*
	 * 获取所有博文信息
	 */
	@RequestMapping("/centreall")
	public String selectAll(HttpServletRequest request, HttpSession session) {
		Pading tjpage = new Pading();
		tjpage.setIndexpage(1);// 首页
		tjpage.setCurPage(tjpage.getIndexpage());
		// 当前页的所有推荐博客信息
		List<Posts> plist = postsService.findPostAll((tjpage.getCurPage() - 1)
				* tjpage.getPageSize(), tjpage.getPageSize());
		// 分页信息
		tjpage.setCount(postsService.findPostByCount());

		if (tjpage.getCount() % tjpage.getPageSize() != 0) {
			tjpage.setTotalPage((postsService.findPostByCount() / tjpage
					.getPageSize()) + 1);
		} else {
			tjpage.setTotalPage(postsService.findPostByCount()
					/ tjpage.getPageSize());
		}
		session.setAttribute("tjpage", tjpage);
		session.setAttribute("postall", plist);// 推荐
		return "/centrealljt.bb";
	}

	@RequestMapping("/centrealljt")
	public String selectAlljt(HttpServletRequest request, HttpSession session) {
		Pading jtpage = new Pading();
		jtpage.setIndexpage(1);// 首页
		jtpage.setCurPage(jtpage.getIndexpage());
		// 当前页的所有推荐博客信息
		List<Posts> plist = postsService.findPostByPelite(
				(jtpage.getCurPage() - 1) * jtpage.getPageSize(),
				jtpage.getPageSize());
		jtpage.setCount(postsService.selectByJtCount());// 总数

		if (jtpage.getCount() % jtpage.getPageSize() != 0) {
			jtpage.setTotalPage((postsService.selectByJtCount() / jtpage
					.getPageSize()) + 1);
		} else {
			jtpage.setTotalPage(postsService.selectByJtCount()
					/ jtpage.getPageSize());
		}
		session.setAttribute("jtpage", jtpage);
		session.setAttribute("postelite", plist);// 精贴
		return "/centreallrk.bb";
	}

	@RequestMapping("/centreallrk")
	public String selectAllrk(HttpServletRequest request, HttpSession session) {
		Pading rkpage = new Pading();
		rkpage.setIndexpage(1);// 首页
		rkpage.setCurPage(rkpage.getIndexpage());
		// 当前页的所有推荐博客信息
		List<Posts> postreading = postsService.findPostByPreadings(
				(rkpage.getCurPage() - 1) * rkpage.getPageSize(),
				rkpage.getPageSize());
		// 分页信息
		rkpage.setCount(postsService.findPostByCount());

		if (rkpage.getCount() % rkpage.getPageSize() != 0) {
			rkpage.setTotalPage((postsService.findPostByCount() / rkpage
					.getPageSize()) + 1);
		} else {
			rkpage.setTotalPage(postsService.findPostByCount()
					/ rkpage.getPageSize());
		}
		session.setAttribute("rkpage", rkpage);
		session.setAttribute("postreading", postreading);// 推荐
		return "/centreallry.bb";
	}

	@RequestMapping("/centreallry")
	public String selectAllry(HttpServletRequest request, HttpSession session) {
		Pading rypage = new Pading();
		rypage.setIndexpage(1);// 首页
		rypage.setCurPage(rypage.getIndexpage());
		// 当前页的所有推荐博客信息
		List<Posts> postcomment = postsService.findPostByPcomments(
				(rypage.getCurPage() - 1) * rypage.getPageSize(),
				rypage.getPageSize());
		// 分页信息
		rypage.setCount(postsService.findPostByCount());

		if (rypage.getCount() % rypage.getPageSize() != 0) {
			rypage.setTotalPage((postsService.findPostByCount() / rypage
					.getPageSize()) + 1);
		} else {
			rypage.setTotalPage(postsService.findPostByCount()
					/ rypage.getPageSize());
		}
		session.setAttribute("rypage", rypage);
		session.setAttribute("postcomment", postcomment);// 推荐
		return "/top.bb";
	}

	/*
	 * List<Posts> postelite =
	 * postsService.findPostByPelite((tjpage.getCurPage() - 1)
	 * tjpage.getPageSize(), tjpage.getPageSize());
	 * session.setAttribute("postelite", postelite); 显示分页信息
	 */
	/*
	 * @RequestMapping("/fy") public String selectfy(@RequestParam("curPage")
	 * int curPage, HttpServletRequest request) {
	 * 
	 * Pading page = new Pading(); // 获取当前页 if (curPage == 0) { curPage = 1; }
	 * // System.out.println("******"+curPage); page.setCurPage(curPage);
	 * 
	 * int count = postsService.findPostByCount();// 总数据条数 page.setCount(count);
	 * page.setTotalPage(count / page.getPageSize() + 1); //
	 * System.out.println("总页数"+count/page.getPageSize()+1); //
	 * System.out.println("每页数量"+page.getPageSize());
	 * 
	 * // 当前条数和要显示的数据条数 int pages = (curPage - 1) * page.getPageSize(); //
	 * System.out.println("从第"+pages+"页开始"); int limit = page.getPageSize(); //
	 * System.out.println(limit); List<Posts> plist =
	 * postsService.findPostAll(pages, limit);
	 * 
	 * request.setAttribute("postall", plist);// 推荐 request.setAttribute("page",
	 * page);
	 * 
	 * request.setAttribute("postelite", postsService.findPostByPelite()); // 精贴
	 * request.setAttribute("postreading", postsService.findPostByPreadings());
	 * // 阅读 request.setAttribute("postcomment",
	 * postsService.findPostByPcomments());// 评论
	 * 
	 * // 总帖子数 request.setAttribute("postcount", count); return
	 * selectList(request); }
	 */

	/*
	 * 查看帖子内容
	 */
	@RequestMapping("/posts")
	public String seleteById(@RequestParam("pid") int pid,
			HttpServletRequest request) {
		// 4、找评论的同时，获取评论的人名字

		// 创建一个集合，用来保存需要传递到jsp页面的评论信息
		List<Demo2> demo2list = new ArrayList<Demo2>();
		// 1、获取所有一级评论
		List<Comment> commengList = commentService.findCommentsByPid(pid);
		// 2、循环一级评论
		for (Comment c : commengList) {
			// 创建用来保存需要再页面显示的数据
			List<Demo1> demo1list = new ArrayList<Demo1>();
			// 实例化demo1，用来获取需要再页面显示的数据
			Demo1 demo1 = new Demo1();
			demo1.userpic = c.getUsers().getUserpic();// 用户头像
			demo1.userid = c.getUsers().getUsesid();// 用户编号
			demo1.uname = c.getUsers().getUsersname();// 用户昵称
			demo1.ugrade = c.getUsers().getGrade();// 用户等级
			demo1.cid = c.getCid();// 评论编号
			demo1.cdate = c.getCdate();// 评论日期
			demo1.ccontent = c.getCcontent();// 评论内容
			// demo1.sjid = c.getCsuperiorid();//上级ID
			// demo1.yjid = c.getParentid();//一级评论
			demo1.pid = c.getPid();// 博文编号
			demo1.px = 1;// 排序编号，用来在页面上确定是否是一级评论
			demo1list.add(demo1);
			// System.out.println("2222222222*"+demo1list);
			// 3、获取一级评论下的所有评论
			List<Comment> yjcommentlist = commentService.findCommentsByCid(pid,
					demo1.cid);
			// System.out.println("111111111*"+yjcommentlist);
			int i = 0;
			for (Comment c2 : yjcommentlist) {
				// 实例化demo1，用来获取需要再页面显示的数据
				Demo1 demo11 = new Demo1();
				demo11.userpic = c2.getUsers().getUserpic();// 用户头像
				demo11.userid = c2.getUsers().getUsesid();// 用户编号
				demo11.uname = c2.getUsers().getUsersname();// 用户昵称
				demo11.ugrade = c2.getUsers().getGrade();// 用户等级
				demo11.cid = c2.getCid();// 评论编号
				demo11.cdate = c2.getCdate();// 评论日期
				demo11.ccontent = c2.getCcontent();// 评论内容
				demo11.sjid = c2.getCsuperiorid();// 上级ID
				demo11.yjid = c2.getParentid();// 一级评论
				demo11.pid = c2.getPid();// 博文编号
				// 根据上级评论查找上级评论者昵称和编号
				Comment com = commentService
						.findUNameByCid(c2.getCsuperiorid());
				demo11.sjname = com.getUsers().getUsersname();
				demo11.sjuid = com.getUsers().getUsesid();
				demo11.px = i + 2;// 排序编号，表示以及评论下的所有评论级数
				i++;// 代表一级评论下的其余评论级数
				demo1list.add(demo11);
				// System.out.println("333333*"+demo1list);
			}
			// 获取Demo2对象，并保存获取的评论集合
			Demo2 demo2 = new Demo2();
			demo2.demo1list = demo1list;
			demo2list.add(demo2);
		}
		// System.out.println("********"+demo2list);
		// System.out.println(demo2list.get(0).getDemo1list().get(0).userpic);
		request.setAttribute("demo2list", demo2list);// 包装好的评论信息

		request.setAttribute("posts", postsService.findPostById(pid));
		// request.setAttribute("comments",
		// commentService.findCommentsByPid(pid));

		// 浏览量+1
		Posts posts = new Posts();
		posts.setPid(pid);
		postsService.updateReadingadd(posts);
		// System.out.println(commentService.findCommentsByPid(pid));

		return "/postsFlag.bb";
	}

	/*
	 * 添加一条博文
	 */
	@RequestMapping("/addpost")
	public String insertPosts(@RequestParam("ptitle") String ptitle,
			@RequestParam("pcontent") String pcontent,
			@RequestParam("pprivate") Integer pprivate,
			@RequestParam("users") Integer userid,
			@RequestParam("posttype") Integer ptypeid) {

		Users user = new Users();
		user.setUsesid(userid);// 用户编号
		PostType postType = new PostType();
		postType.setPtypeId(ptypeid);// 评论编号

		Posts posts = new Posts();
		posts.setUsers(user);
		posts.setPosttype(postType);
		posts.setPtitle(ptitle);// 博文标题
		posts.setPcontent(pcontent);// 博文内容
		posts.setPprivate(pprivate);// 是否分享
		posts.setPcomments(0);// 评论数
		posts.setPdate(new Date());// 当前时间
		posts.setPreadings(0);// 浏览量
		posts.setPstatus(0);// 是否置顶
		posts.setPlike(0);// 喜欢数
		posts.setPaudit(1);// 审核是否通过，1代表审核中
		posts.setPelite(0);// 是否是精贴，0代表不是

		postsService.insertPost(posts);
		// 经验+10
		usersService.updataUserGrade(userid, 10);
		return "/centreall.bb";
	}

	/*
	 * 获取所有博文类型
	 */
	@RequestMapping("/posttype")
	public String getPostTypeAll(HttpServletRequest request) {
		request.setAttribute("ptypelist", postTypeService.findPostTypeAll());
		return "/BB/html/jie/add.jsp";
	}

	// 后台查询所有博客信息
	@RequestMapping("/sells")
	public String selectByExample(HttpServletRequest request) {
		List<Posts> posts = postsService.selectByAllmsg();
		request.setAttribute("posts", posts);
		return "/admin/page/news/newsAll.jsp";
	}

	// 后台根据id查询所有博文
	@RequestMapping("/rells")
	public String selectByany(HttpServletRequest request,
			@RequestParam("id") int id) {
		Posts posts = postsService.selectByany(id);
		request.setAttribute("posts", posts);
		return "/admin/page/news/postsCha.jsp";
	}

	// 后台根据博文标题和内容模糊查询
	@RequestMapping("/yells")
	public String selectgetsome(HttpServletRequest request,
			@RequestParam("sum") String sum) {
		List<Posts> posts = postsService.selectgetsome("%" + sum + "%");
		request.setAttribute("posts", posts);
		return "/admin/page/news/newsAll.jsp";
	}

	// 根据id删除
	@RequestMapping("/delect")
	public String delect(@RequestParam("id") int id, HttpServletRequest request) {
		List<Comment> ids = postsService.queryByPostsID(id);// 根据博文编号，查询所有评论
		List<Collect> collect = collectService.findCollectByPid(id);// 根据博文ID，查询所有收藏
		for (Comment c : ids) {
			commentService.deleteByPrimaryKey(c.getCid());
		}
		for (Collect collect2 : collect) {
			collectService.deleteCollectByPKey(collect2.getCollectid());
		}
		postsService.deleteByPrimaryKey(id);
		return "/sells.bb";
	}

	// 后台博客管理的置顶的修改
	@RequestMapping("/ieel")
	public String selectByPrimaryKey(@RequestParam("id") int id,
			HttpServletRequest request) {
		Posts posts = postsService.selectByPrimaryKey(id);
		if (posts.getPstatus() == 1) {
			posts.setPstatus(0);
			postsService.updateByPrimaryKeys(posts);
		} else if (posts.getPstatus() == 0) {
			posts.setPstatus(1);
			postsService.updateByPrimaryKeys(posts);
		}

		return "/sells.bb";
	}

	// 后台博客管理的精贴的修改
	@RequestMapping("/beel")
	public String selectByPrimaryKeys(@RequestParam("id") int id,
			HttpServletRequest request) {
		Posts posts = postsService.selectByPrimaryKey(id);
		if (posts.getPelite() == 1) {
			posts.setPelite(0);
			postsService.updateByPrimaryKeys(posts);
		} else if (posts.getPelite() == 0) {
			posts.setPelite(1);
			postsService.updateByPrimaryKeys(posts);
		}
		return "/sells.bb";
	}

	// 后台博客管理的审核状态的修改
	@RequestMapping("/yeel")
	public String selectByPrimaryKeya(@RequestParam("data") String data,
			HttpServletRequest request) {
		String[] parts = data.split("/");
		String part1 = parts[0];
		String part2 = parts[1];
		int pid = Integer.parseInt(part1);
		int p_audit = Integer.parseInt(part2);
		Posts posts = postsService.selectByPrimaryKey(pid);
		posts.setPaudit(p_audit);
		postsService.updateByPrimaryKeys(posts);
		return "/sells.bb";
	}

	/*
	 * // 分类下标控制器
	 * 
	 * @RequestMapping("/indexblog") public String indexblog(@RequestParam("xb")
	 * int xb) { if (xb == 0) { return "/centreall.bb"; } else if (xb == 1) {
	 * return "/centreall.bb"; } else if (xb == 2) { return "/centreall.bb"; }
	 * else if (xb == 3) { return "/centreall.bb"; } return null; }
	 */

	// 推荐
	@RequestMapping("/tj")
	public String tj(
			@RequestParam(value = "curPage", required = false) int curPage,
			HttpServletRequest request, HttpSession session) {
		Pading tjpage = new Pading();
		tjpage.setIndexpage(1);// 首页
		if (curPage == 0) {
			tjpage.setCurPage(tjpage.getIndexpage());
		} else {
			tjpage.setCurPage(curPage);
		}
		// 当前页的所有推荐博客信息
		List<Posts> plist = postsService.findPostAll((tjpage.getCurPage() - 1)
				* tjpage.getPageSize(), tjpage.getPageSize());
		tjpage.setCount(postsService.findPostByCount());

		if (tjpage.getCount() % tjpage.getPageSize() != 0) {
			tjpage.setTotalPage((postsService.findPostByCount() / tjpage
					.getPageSize()) + 1);
		} else {
			tjpage.setTotalPage(postsService.findPostByCount()
					/ tjpage.getPageSize());
		}
		session.setAttribute("tjpage", tjpage);
		session.setAttribute("postall", plist);// 推荐
		return "/top.bb";
	}

	// 精贴
	@RequestMapping("/jt")
	public String jt(
			@RequestParam(value = "curPage", required = false) int curPage,
			HttpServletRequest request, HttpSession session) {
		Pading jtpage = new Pading();
		jtpage.setIndexpage(1);// 首页
		// 当前页
		if (curPage == 0) {
			jtpage.setCurPage(jtpage.getIndexpage());
		} else {
			jtpage.setCurPage(curPage);
		}
		// 当前页的所有推荐博客信息
		List<Posts> plist = postsService.findPostByPelite(
				(jtpage.getCurPage() - 1) * jtpage.getPageSize(),
				jtpage.getPageSize());
		jtpage.setCount(postsService.selectByJtCount());// 总数

		if (jtpage.getCount() % jtpage.getPageSize() != 0) {
			jtpage.setTotalPage((postsService.selectByJtCount() / jtpage
					.getPageSize()) + 1);
		} else {
			jtpage.setTotalPage(postsService.selectByJtCount()
					/ jtpage.getPageSize());
		}
		request.setAttribute("nh", 1);
		session.setAttribute("jtpage", jtpage);
		session.setAttribute("postelite", plist);// 精贴
		return "/top.bb";
	}

	// 热看
	@RequestMapping("/rk")
	public String rk(
			@RequestParam(value = "curPage", required = false) int curPage,
			HttpServletRequest request, HttpSession session) {
		Pading rkpage = new Pading();
		rkpage.setIndexpage(1);// 首页
		if (curPage == 0) {
			rkpage.setCurPage(rkpage.getIndexpage());
		} else {
			rkpage.setCurPage(curPage);
		}
		// 当前页的所有推荐博客信息
		List<Posts> postreading = postsService.findPostByPreadings(
				(rkpage.getCurPage() - 1) * rkpage.getPageSize(),
				rkpage.getPageSize());
		System.out.println(postreading);
		// 分页信息
		rkpage.setCount(postsService.findPostByCount());

		if (rkpage.getCount() % rkpage.getPageSize() != 0) {
			rkpage.setTotalPage((postsService.findPostByCount() / rkpage
					.getPageSize()) + 1);
		} else {
			rkpage.setTotalPage(postsService.findPostByCount()
					/ rkpage.getPageSize());
		}
		request.setAttribute("nh", 2);
		session.setAttribute("rkpage", rkpage);
		session.setAttribute("postreading", postreading);// 推荐
		return "/top.bb";
	}

	// 热议
	@RequestMapping("/ry")
	public String ry(
			@RequestParam(value = "curPage", required = false) int curPage,
			HttpServletRequest request, HttpSession session) {
		Pading rypage = new Pading();
		rypage.setIndexpage(1);// 首页
		if (curPage == 0) {
			rypage.setCurPage(rypage.getIndexpage());
		} else {
			rypage.setCurPage(curPage);
		}
		// 当前页的所有推荐博客信息
		List<Posts> postcomment = postsService.findPostByPcomments(
				(rypage.getCurPage() - 1) * rypage.getPageSize(),
				rypage.getPageSize());
		// 分页信息
		rypage.setCount(postsService.findPostByCount());

		if (rypage.getCount() % rypage.getPageSize() != 0) {
			rypage.setTotalPage((postsService.findPostByCount() / rypage
					.getPageSize()) + 1);
		} else {
			rypage.setTotalPage(postsService.findPostByCount()
					/ rypage.getPageSize());
		}
		request.setAttribute("nh", 3);
		session.setAttribute("rypage", rypage);
		session.setAttribute("postcomment", postcomment);// 推荐
		return "/top.bb";
	}

	// 个人中心中根据博文编号和用户编号删除
	@RequestMapping("/udelect")
	public String delectPostByPid(@RequestParam("pid") int pid,
			@RequestParam("uid") Integer uid, HttpServletRequest request) {
		List<Comment> ids = postsService.queryByPostsID(pid);// 根据博文编号，查询所有评论
		List<Collect> collect = collectService.findCollectByPid(pid);// 根据博文ID，查询所有收藏
		for (Comment c : ids) {
			commentService.deleteByPrimaryKey(c.getCid());
		}
		for (Collect collect2 : collect) {
			collectService.deleteCollectByPKey(collect2.getCollectid());
		}
		postsService.deleteByPrimaryKey(pid);
		return "redirect:home.bb?usersid=" + uid;
	}

	// 个人中心中根据博文编号和用户编号删除
	@RequestMapping("/udelecttopc")
	public String delectPostByPidToPC(@RequestParam("pid") int pid,
			@RequestParam("uid") Integer uid, HttpServletRequest request) {
		List<Comment> ids = postsService.queryByPostsID(pid);// 根据博文编号，查询所有评论
		List<Collect> collect = collectService.findCollectByPid(pid);// 根据博文ID，查询所有收藏
		for (Comment c : ids) {
			commentService.deleteByPrimaryKey(c.getCid());
		}
		for (Collect collect2 : collect) {
			collectService.deleteCollectByPKey(collect2.getCollectid());
		}
		postsService.deleteByPrimaryKey(pid);
		return "redirect:suposttopc.bb?uid=" + uid;
	}

	// 根据用户ID，查询所有博文
	@RequestMapping("/supost")
	public String selectAllByUid(@RequestParam("uid") Integer uid,
			HttpServletRequest request) {
		request.setAttribute("userpost", postsService.findAllByUid(uid));
		return "homefol.bb?usersid=" + uid;
	}

	// 根据用户ID，查询所有博文,并在博文中心显示
	@RequestMapping("/suposttopc")
	public String selectAllByUidToPC(@RequestParam("uid") Integer uid,
			HttpServletRequest request) {
		request.setAttribute("userpost", postsService.findAllByUid(uid));
		return "ucollectpost.bb?uid=" + uid;
	}

	// 根据用户ID，查询所有博文ID,并在博文中心显示
	@RequestMapping("/ucollectpost")
	public String selectPostIDByUid(@RequestParam("uid") Integer uid,
			HttpServletRequest request) {
		List<Collect> cpidlist = collectService.findPidByUid(uid);
		List<Posts> plist = new ArrayList<Posts>();
		for (Collect collect : cpidlist) {
			Posts post = postsService.findPostById(collect.getPid());
			plist.add(post);
		}
		request.setAttribute("upclist", plist);
		return "/BB/html/user/index.jsp";
	}

	// 保存博文需要修改的信息，并跳转页面
	@RequestMapping("/updatepost")
	public String selectPostsByPid(@RequestParam("pid") Integer pid,
			HttpServletRequest request) {
		request.setAttribute("updatepost", postsService.findPostById(pid));
		request.setAttribute("ptypelist", postTypeService.findPostTypeAll());
		System.out.println("*****" + postTypeService.findPostTypeAll());
		return "/BB/html/jie/updatepost.jsp";
	}

	/*
	 * 修改完毕，保存修改的博文信息
	 */
	@RequestMapping("/updatepostsave")
	public String updatePosts(@RequestParam("pid") Integer pid,
			@RequestParam("ptitle") String ptitle,
			@RequestParam("pcontent") String pcontent,
			@RequestParam("pprivate") Integer pprivate,
			@RequestParam("users") Integer userid,
			@RequestParam("posttype") Integer ptypeid) {

		PostType postType = new PostType();
		postType.setPtypeId(ptypeid);// 评论编号

		Posts posts = new Posts();
		posts.setPid(pid);
		posts.setPosttype(postType);
		posts.setPtitle(ptitle);// 博文标题
		posts.setPcontent(pcontent);// 博文内容
		posts.setPprivate(pprivate);// 是否分享
		posts.setPdate(new Date());// 当前时间

		System.out.println(posts);

		postsService.updatePost(posts);
		return "redirect:suposttopc.bb?uid=" + userid;
	}

	/*
	 * 根据博文类型编号，查询所有博文信息
	 */
	@RequestMapping("/selectptype")
	public String getPostsByPtypeId(@RequestParam("ptypeid") Integer ptypeid,
			HttpServletRequest request) {
		request.setAttribute("postslist",
				postsService.findPostsByPtypeID(ptypeid));
		request.setAttribute("ptypename",
				postTypeService.findPostTypeNameByKY(ptypeid));// 根据博文类型编号，查询博文类型
		return "/BB/html/case/case.jsp";
	}

	/*
	 * 根据博文标题模糊查询博文信息
	 */
	@RequestMapping("/likeptitl")
	public String getPostsByTitle(@RequestParam("lable") String lable,
			HttpServletRequest request) throws UnsupportedEncodingException {
		lable=new String(lable.getBytes("ISO-8859-1"), "UTF-8");
		System.out.println("*********"+lable);
		// 模糊查询出所有符合条件的博文信息
		request.setAttribute("postslist", postsService.findPostsByPTitle(lable));
		// 显示要查询的条件
		request.setAttribute("ptypename", lable);
		return "/BB/html/case/case.jsp";
	}
}
