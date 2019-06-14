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
	 * ��ȡ���в�����Ϣ
	 */
	@RequestMapping("/centreall")
	public String selectAll(HttpServletRequest request, HttpSession session) {
		Pading tjpage = new Pading();
		tjpage.setIndexpage(1);// ��ҳ
		tjpage.setCurPage(tjpage.getIndexpage());
		// ��ǰҳ�������Ƽ�������Ϣ
		List<Posts> plist = postsService.findPostAll((tjpage.getCurPage() - 1)
				* tjpage.getPageSize(), tjpage.getPageSize());
		// ��ҳ��Ϣ
		tjpage.setCount(postsService.findPostByCount());

		if (tjpage.getCount() % tjpage.getPageSize() != 0) {
			tjpage.setTotalPage((postsService.findPostByCount() / tjpage
					.getPageSize()) + 1);
		} else {
			tjpage.setTotalPage(postsService.findPostByCount()
					/ tjpage.getPageSize());
		}
		session.setAttribute("tjpage", tjpage);
		session.setAttribute("postall", plist);// �Ƽ�
		return "/centrealljt.bb";
	}

	@RequestMapping("/centrealljt")
	public String selectAlljt(HttpServletRequest request, HttpSession session) {
		Pading jtpage = new Pading();
		jtpage.setIndexpage(1);// ��ҳ
		jtpage.setCurPage(jtpage.getIndexpage());
		// ��ǰҳ�������Ƽ�������Ϣ
		List<Posts> plist = postsService.findPostByPelite(
				(jtpage.getCurPage() - 1) * jtpage.getPageSize(),
				jtpage.getPageSize());
		jtpage.setCount(postsService.selectByJtCount());// ����

		if (jtpage.getCount() % jtpage.getPageSize() != 0) {
			jtpage.setTotalPage((postsService.selectByJtCount() / jtpage
					.getPageSize()) + 1);
		} else {
			jtpage.setTotalPage(postsService.selectByJtCount()
					/ jtpage.getPageSize());
		}
		session.setAttribute("jtpage", jtpage);
		session.setAttribute("postelite", plist);// ����
		return "/centreallrk.bb";
	}

	@RequestMapping("/centreallrk")
	public String selectAllrk(HttpServletRequest request, HttpSession session) {
		Pading rkpage = new Pading();
		rkpage.setIndexpage(1);// ��ҳ
		rkpage.setCurPage(rkpage.getIndexpage());
		// ��ǰҳ�������Ƽ�������Ϣ
		List<Posts> postreading = postsService.findPostByPreadings(
				(rkpage.getCurPage() - 1) * rkpage.getPageSize(),
				rkpage.getPageSize());
		// ��ҳ��Ϣ
		rkpage.setCount(postsService.findPostByCount());

		if (rkpage.getCount() % rkpage.getPageSize() != 0) {
			rkpage.setTotalPage((postsService.findPostByCount() / rkpage
					.getPageSize()) + 1);
		} else {
			rkpage.setTotalPage(postsService.findPostByCount()
					/ rkpage.getPageSize());
		}
		session.setAttribute("rkpage", rkpage);
		session.setAttribute("postreading", postreading);// �Ƽ�
		return "/centreallry.bb";
	}

	@RequestMapping("/centreallry")
	public String selectAllry(HttpServletRequest request, HttpSession session) {
		Pading rypage = new Pading();
		rypage.setIndexpage(1);// ��ҳ
		rypage.setCurPage(rypage.getIndexpage());
		// ��ǰҳ�������Ƽ�������Ϣ
		List<Posts> postcomment = postsService.findPostByPcomments(
				(rypage.getCurPage() - 1) * rypage.getPageSize(),
				rypage.getPageSize());
		// ��ҳ��Ϣ
		rypage.setCount(postsService.findPostByCount());

		if (rypage.getCount() % rypage.getPageSize() != 0) {
			rypage.setTotalPage((postsService.findPostByCount() / rypage
					.getPageSize()) + 1);
		} else {
			rypage.setTotalPage(postsService.findPostByCount()
					/ rypage.getPageSize());
		}
		session.setAttribute("rypage", rypage);
		session.setAttribute("postcomment", postcomment);// �Ƽ�
		return "/top.bb";
	}

	/*
	 * List<Posts> postelite =
	 * postsService.findPostByPelite((tjpage.getCurPage() - 1)
	 * tjpage.getPageSize(), tjpage.getPageSize());
	 * session.setAttribute("postelite", postelite); ��ʾ��ҳ��Ϣ
	 */
	/*
	 * @RequestMapping("/fy") public String selectfy(@RequestParam("curPage")
	 * int curPage, HttpServletRequest request) {
	 * 
	 * Pading page = new Pading(); // ��ȡ��ǰҳ if (curPage == 0) { curPage = 1; }
	 * // System.out.println("******"+curPage); page.setCurPage(curPage);
	 * 
	 * int count = postsService.findPostByCount();// ���������� page.setCount(count);
	 * page.setTotalPage(count / page.getPageSize() + 1); //
	 * System.out.println("��ҳ��"+count/page.getPageSize()+1); //
	 * System.out.println("ÿҳ����"+page.getPageSize());
	 * 
	 * // ��ǰ������Ҫ��ʾ���������� int pages = (curPage - 1) * page.getPageSize(); //
	 * System.out.println("�ӵ�"+pages+"ҳ��ʼ"); int limit = page.getPageSize(); //
	 * System.out.println(limit); List<Posts> plist =
	 * postsService.findPostAll(pages, limit);
	 * 
	 * request.setAttribute("postall", plist);// �Ƽ� request.setAttribute("page",
	 * page);
	 * 
	 * request.setAttribute("postelite", postsService.findPostByPelite()); // ����
	 * request.setAttribute("postreading", postsService.findPostByPreadings());
	 * // �Ķ� request.setAttribute("postcomment",
	 * postsService.findPostByPcomments());// ����
	 * 
	 * // �������� request.setAttribute("postcount", count); return
	 * selectList(request); }
	 */

	/*
	 * �鿴��������
	 */
	@RequestMapping("/posts")
	public String seleteById(@RequestParam("pid") int pid,
			HttpServletRequest request) {
		// 4�������۵�ͬʱ����ȡ���۵�������

		// ����һ�����ϣ�����������Ҫ���ݵ�jspҳ���������Ϣ
		List<Demo2> demo2list = new ArrayList<Demo2>();
		// 1����ȡ����һ������
		List<Comment> commengList = commentService.findCommentsByPid(pid);
		// 2��ѭ��һ������
		for (Comment c : commengList) {
			// ��������������Ҫ��ҳ����ʾ������
			List<Demo1> demo1list = new ArrayList<Demo1>();
			// ʵ����demo1��������ȡ��Ҫ��ҳ����ʾ������
			Demo1 demo1 = new Demo1();
			demo1.userpic = c.getUsers().getUserpic();// �û�ͷ��
			demo1.userid = c.getUsers().getUsesid();// �û����
			demo1.uname = c.getUsers().getUsersname();// �û��ǳ�
			demo1.ugrade = c.getUsers().getGrade();// �û��ȼ�
			demo1.cid = c.getCid();// ���۱��
			demo1.cdate = c.getCdate();// ��������
			demo1.ccontent = c.getCcontent();// ��������
			// demo1.sjid = c.getCsuperiorid();//�ϼ�ID
			// demo1.yjid = c.getParentid();//һ������
			demo1.pid = c.getPid();// ���ı��
			demo1.px = 1;// �����ţ�������ҳ����ȷ���Ƿ���һ������
			demo1list.add(demo1);
			// System.out.println("2222222222*"+demo1list);
			// 3����ȡһ�������µ���������
			List<Comment> yjcommentlist = commentService.findCommentsByCid(pid,
					demo1.cid);
			// System.out.println("111111111*"+yjcommentlist);
			int i = 0;
			for (Comment c2 : yjcommentlist) {
				// ʵ����demo1��������ȡ��Ҫ��ҳ����ʾ������
				Demo1 demo11 = new Demo1();
				demo11.userpic = c2.getUsers().getUserpic();// �û�ͷ��
				demo11.userid = c2.getUsers().getUsesid();// �û����
				demo11.uname = c2.getUsers().getUsersname();// �û��ǳ�
				demo11.ugrade = c2.getUsers().getGrade();// �û��ȼ�
				demo11.cid = c2.getCid();// ���۱��
				demo11.cdate = c2.getCdate();// ��������
				demo11.ccontent = c2.getCcontent();// ��������
				demo11.sjid = c2.getCsuperiorid();// �ϼ�ID
				demo11.yjid = c2.getParentid();// һ������
				demo11.pid = c2.getPid();// ���ı��
				// �����ϼ����۲����ϼ��������ǳƺͱ��
				Comment com = commentService
						.findUNameByCid(c2.getCsuperiorid());
				demo11.sjname = com.getUsers().getUsersname();
				demo11.sjuid = com.getUsers().getUsesid();
				demo11.px = i + 2;// �����ţ���ʾ�Լ������µ��������ۼ���
				i++;// ����һ�������µ��������ۼ���
				demo1list.add(demo11);
				// System.out.println("333333*"+demo1list);
			}
			// ��ȡDemo2���󣬲������ȡ�����ۼ���
			Demo2 demo2 = new Demo2();
			demo2.demo1list = demo1list;
			demo2list.add(demo2);
		}
		// System.out.println("********"+demo2list);
		// System.out.println(demo2list.get(0).getDemo1list().get(0).userpic);
		request.setAttribute("demo2list", demo2list);// ��װ�õ�������Ϣ

		request.setAttribute("posts", postsService.findPostById(pid));
		// request.setAttribute("comments",
		// commentService.findCommentsByPid(pid));

		// �����+1
		Posts posts = new Posts();
		posts.setPid(pid);
		postsService.updateReadingadd(posts);
		// System.out.println(commentService.findCommentsByPid(pid));

		return "/postsFlag.bb";
	}

	/*
	 * ���һ������
	 */
	@RequestMapping("/addpost")
	public String insertPosts(@RequestParam("ptitle") String ptitle,
			@RequestParam("pcontent") String pcontent,
			@RequestParam("pprivate") Integer pprivate,
			@RequestParam("users") Integer userid,
			@RequestParam("posttype") Integer ptypeid) {

		Users user = new Users();
		user.setUsesid(userid);// �û����
		PostType postType = new PostType();
		postType.setPtypeId(ptypeid);// ���۱��

		Posts posts = new Posts();
		posts.setUsers(user);
		posts.setPosttype(postType);
		posts.setPtitle(ptitle);// ���ı���
		posts.setPcontent(pcontent);// ��������
		posts.setPprivate(pprivate);// �Ƿ����
		posts.setPcomments(0);// ������
		posts.setPdate(new Date());// ��ǰʱ��
		posts.setPreadings(0);// �����
		posts.setPstatus(0);// �Ƿ��ö�
		posts.setPlike(0);// ϲ����
		posts.setPaudit(1);// ����Ƿ�ͨ����1���������
		posts.setPelite(0);// �Ƿ��Ǿ�����0������

		postsService.insertPost(posts);
		// ����+10
		usersService.updataUserGrade(userid, 10);
		return "/centreall.bb";
	}

	/*
	 * ��ȡ���в�������
	 */
	@RequestMapping("/posttype")
	public String getPostTypeAll(HttpServletRequest request) {
		request.setAttribute("ptypelist", postTypeService.findPostTypeAll());
		return "/BB/html/jie/add.jsp";
	}

	// ��̨��ѯ���в�����Ϣ
	@RequestMapping("/sells")
	public String selectByExample(HttpServletRequest request) {
		List<Posts> posts = postsService.selectByAllmsg();
		request.setAttribute("posts", posts);
		return "/admin/page/news/newsAll.jsp";
	}

	// ��̨����id��ѯ���в���
	@RequestMapping("/rells")
	public String selectByany(HttpServletRequest request,
			@RequestParam("id") int id) {
		Posts posts = postsService.selectByany(id);
		request.setAttribute("posts", posts);
		return "/admin/page/news/postsCha.jsp";
	}

	// ��̨���ݲ��ı��������ģ����ѯ
	@RequestMapping("/yells")
	public String selectgetsome(HttpServletRequest request,
			@RequestParam("sum") String sum) {
		List<Posts> posts = postsService.selectgetsome("%" + sum + "%");
		request.setAttribute("posts", posts);
		return "/admin/page/news/newsAll.jsp";
	}

	// ����idɾ��
	@RequestMapping("/delect")
	public String delect(@RequestParam("id") int id, HttpServletRequest request) {
		List<Comment> ids = postsService.queryByPostsID(id);// ���ݲ��ı�ţ���ѯ��������
		List<Collect> collect = collectService.findCollectByPid(id);// ���ݲ���ID����ѯ�����ղ�
		for (Comment c : ids) {
			commentService.deleteByPrimaryKey(c.getCid());
		}
		for (Collect collect2 : collect) {
			collectService.deleteCollectByPKey(collect2.getCollectid());
		}
		postsService.deleteByPrimaryKey(id);
		return "/sells.bb";
	}

	// ��̨���͹�����ö����޸�
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

	// ��̨���͹���ľ������޸�
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

	// ��̨���͹�������״̬���޸�
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
	 * // �����±������
	 * 
	 * @RequestMapping("/indexblog") public String indexblog(@RequestParam("xb")
	 * int xb) { if (xb == 0) { return "/centreall.bb"; } else if (xb == 1) {
	 * return "/centreall.bb"; } else if (xb == 2) { return "/centreall.bb"; }
	 * else if (xb == 3) { return "/centreall.bb"; } return null; }
	 */

	// �Ƽ�
	@RequestMapping("/tj")
	public String tj(
			@RequestParam(value = "curPage", required = false) int curPage,
			HttpServletRequest request, HttpSession session) {
		Pading tjpage = new Pading();
		tjpage.setIndexpage(1);// ��ҳ
		if (curPage == 0) {
			tjpage.setCurPage(tjpage.getIndexpage());
		} else {
			tjpage.setCurPage(curPage);
		}
		// ��ǰҳ�������Ƽ�������Ϣ
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
		session.setAttribute("postall", plist);// �Ƽ�
		return "/top.bb";
	}

	// ����
	@RequestMapping("/jt")
	public String jt(
			@RequestParam(value = "curPage", required = false) int curPage,
			HttpServletRequest request, HttpSession session) {
		Pading jtpage = new Pading();
		jtpage.setIndexpage(1);// ��ҳ
		// ��ǰҳ
		if (curPage == 0) {
			jtpage.setCurPage(jtpage.getIndexpage());
		} else {
			jtpage.setCurPage(curPage);
		}
		// ��ǰҳ�������Ƽ�������Ϣ
		List<Posts> plist = postsService.findPostByPelite(
				(jtpage.getCurPage() - 1) * jtpage.getPageSize(),
				jtpage.getPageSize());
		jtpage.setCount(postsService.selectByJtCount());// ����

		if (jtpage.getCount() % jtpage.getPageSize() != 0) {
			jtpage.setTotalPage((postsService.selectByJtCount() / jtpage
					.getPageSize()) + 1);
		} else {
			jtpage.setTotalPage(postsService.selectByJtCount()
					/ jtpage.getPageSize());
		}
		request.setAttribute("nh", 1);
		session.setAttribute("jtpage", jtpage);
		session.setAttribute("postelite", plist);// ����
		return "/top.bb";
	}

	// �ȿ�
	@RequestMapping("/rk")
	public String rk(
			@RequestParam(value = "curPage", required = false) int curPage,
			HttpServletRequest request, HttpSession session) {
		Pading rkpage = new Pading();
		rkpage.setIndexpage(1);// ��ҳ
		if (curPage == 0) {
			rkpage.setCurPage(rkpage.getIndexpage());
		} else {
			rkpage.setCurPage(curPage);
		}
		// ��ǰҳ�������Ƽ�������Ϣ
		List<Posts> postreading = postsService.findPostByPreadings(
				(rkpage.getCurPage() - 1) * rkpage.getPageSize(),
				rkpage.getPageSize());
		System.out.println(postreading);
		// ��ҳ��Ϣ
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
		session.setAttribute("postreading", postreading);// �Ƽ�
		return "/top.bb";
	}

	// ����
	@RequestMapping("/ry")
	public String ry(
			@RequestParam(value = "curPage", required = false) int curPage,
			HttpServletRequest request, HttpSession session) {
		Pading rypage = new Pading();
		rypage.setIndexpage(1);// ��ҳ
		if (curPage == 0) {
			rypage.setCurPage(rypage.getIndexpage());
		} else {
			rypage.setCurPage(curPage);
		}
		// ��ǰҳ�������Ƽ�������Ϣ
		List<Posts> postcomment = postsService.findPostByPcomments(
				(rypage.getCurPage() - 1) * rypage.getPageSize(),
				rypage.getPageSize());
		// ��ҳ��Ϣ
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
		session.setAttribute("postcomment", postcomment);// �Ƽ�
		return "/top.bb";
	}

	// ���������и��ݲ��ı�ź��û����ɾ��
	@RequestMapping("/udelect")
	public String delectPostByPid(@RequestParam("pid") int pid,
			@RequestParam("uid") Integer uid, HttpServletRequest request) {
		List<Comment> ids = postsService.queryByPostsID(pid);// ���ݲ��ı�ţ���ѯ��������
		List<Collect> collect = collectService.findCollectByPid(pid);// ���ݲ���ID����ѯ�����ղ�
		for (Comment c : ids) {
			commentService.deleteByPrimaryKey(c.getCid());
		}
		for (Collect collect2 : collect) {
			collectService.deleteCollectByPKey(collect2.getCollectid());
		}
		postsService.deleteByPrimaryKey(pid);
		return "redirect:home.bb?usersid=" + uid;
	}

	// ���������и��ݲ��ı�ź��û����ɾ��
	@RequestMapping("/udelecttopc")
	public String delectPostByPidToPC(@RequestParam("pid") int pid,
			@RequestParam("uid") Integer uid, HttpServletRequest request) {
		List<Comment> ids = postsService.queryByPostsID(pid);// ���ݲ��ı�ţ���ѯ��������
		List<Collect> collect = collectService.findCollectByPid(pid);// ���ݲ���ID����ѯ�����ղ�
		for (Comment c : ids) {
			commentService.deleteByPrimaryKey(c.getCid());
		}
		for (Collect collect2 : collect) {
			collectService.deleteCollectByPKey(collect2.getCollectid());
		}
		postsService.deleteByPrimaryKey(pid);
		return "redirect:suposttopc.bb?uid=" + uid;
	}

	// �����û�ID����ѯ���в���
	@RequestMapping("/supost")
	public String selectAllByUid(@RequestParam("uid") Integer uid,
			HttpServletRequest request) {
		request.setAttribute("userpost", postsService.findAllByUid(uid));
		return "homefol.bb?usersid=" + uid;
	}

	// �����û�ID����ѯ���в���,���ڲ���������ʾ
	@RequestMapping("/suposttopc")
	public String selectAllByUidToPC(@RequestParam("uid") Integer uid,
			HttpServletRequest request) {
		request.setAttribute("userpost", postsService.findAllByUid(uid));
		return "ucollectpost.bb?uid=" + uid;
	}

	// �����û�ID����ѯ���в���ID,���ڲ���������ʾ
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

	// ���沩����Ҫ�޸ĵ���Ϣ������תҳ��
	@RequestMapping("/updatepost")
	public String selectPostsByPid(@RequestParam("pid") Integer pid,
			HttpServletRequest request) {
		request.setAttribute("updatepost", postsService.findPostById(pid));
		request.setAttribute("ptypelist", postTypeService.findPostTypeAll());
		System.out.println("*****" + postTypeService.findPostTypeAll());
		return "/BB/html/jie/updatepost.jsp";
	}

	/*
	 * �޸���ϣ������޸ĵĲ�����Ϣ
	 */
	@RequestMapping("/updatepostsave")
	public String updatePosts(@RequestParam("pid") Integer pid,
			@RequestParam("ptitle") String ptitle,
			@RequestParam("pcontent") String pcontent,
			@RequestParam("pprivate") Integer pprivate,
			@RequestParam("users") Integer userid,
			@RequestParam("posttype") Integer ptypeid) {

		PostType postType = new PostType();
		postType.setPtypeId(ptypeid);// ���۱��

		Posts posts = new Posts();
		posts.setPid(pid);
		posts.setPosttype(postType);
		posts.setPtitle(ptitle);// ���ı���
		posts.setPcontent(pcontent);// ��������
		posts.setPprivate(pprivate);// �Ƿ����
		posts.setPdate(new Date());// ��ǰʱ��

		System.out.println(posts);

		postsService.updatePost(posts);
		return "redirect:suposttopc.bb?uid=" + userid;
	}

	/*
	 * ���ݲ������ͱ�ţ���ѯ���в�����Ϣ
	 */
	@RequestMapping("/selectptype")
	public String getPostsByPtypeId(@RequestParam("ptypeid") Integer ptypeid,
			HttpServletRequest request) {
		request.setAttribute("postslist",
				postsService.findPostsByPtypeID(ptypeid));
		request.setAttribute("ptypename",
				postTypeService.findPostTypeNameByKY(ptypeid));// ���ݲ������ͱ�ţ���ѯ��������
		return "/BB/html/case/case.jsp";
	}

	/*
	 * ���ݲ��ı���ģ����ѯ������Ϣ
	 */
	@RequestMapping("/likeptitl")
	public String getPostsByTitle(@RequestParam("lable") String lable,
			HttpServletRequest request) throws UnsupportedEncodingException {
		lable=new String(lable.getBytes("ISO-8859-1"), "UTF-8");
		System.out.println("*********"+lable);
		// ģ����ѯ�����з��������Ĳ�����Ϣ
		request.setAttribute("postslist", postsService.findPostsByPTitle(lable));
		// ��ʾҪ��ѯ������
		request.setAttribute("ptypename", lable);
		return "/BB/html/case/case.jsp";
	}
}
