package com.bosomblog.action;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bosomblog.entity.Comment;
import com.bosomblog.entity.Posts;
import com.bosomblog.service.CommentService;
import com.bosomblog.service.PostsService;

@Controller
@RequestMapping("/")
public class CommentController {

	@Autowired
	private CommentService commentService;
	@Autowired
	private PostsService postsService;
	
	@RequestMapping("/addcomment")
	public String add(@RequestParam("pid") Integer pid,
			@RequestParam("ccontent") String ccontent , 
			@RequestParam("users") Integer uid,
			@RequestParam(value = "csuperiorid" , required = false) Integer csuperiorid){
		Comment comments = new Comment();
		comments.setPid(pid);
		comments.setCcontent(ccontent);
		//因为users是一个对象，所以这里先用评论编号代为保存，然后在数据库中保存好即可
		comments.setCid(uid);
		comments.setCdate(new Date());
		
		if (csuperiorid != null) {
			comments.setCsuperiorid(csuperiorid); //设置上级ID的值
			
			//根据上级评论ID获得上级评论的父级ID，
			//如果不为空则赋值给当前评论的父级ID字段，
			//如果为空，这设置当前评论的父级ID等于上级评论ID
			Integer parentid = commentService.findParentidByCid(csuperiorid);
			if (parentid == null) {
				comments.setParentid(csuperiorid); //设置父级ID的值
			}else{
				comments.setParentid(parentid); //设置父级ID的值
			}
		}
		
		commentService.insertComments(comments);//添加评论
		//博文评论数+1
		Posts posts = new Posts();
		posts.setPid(pid);
		postsService.updateCommentadd(posts);
		return "redirect:/posts.bb?pid="+pid;//重定向至博文显示页面
	}
	
	//根据博文编号和评论编号删除评论
	@RequestMapping("/deletecid")
	public String delete(@RequestParam("cid") Integer cid ,@RequestParam("pid") Integer pid){
		commentService.deleteCommentsByid(cid); //删除评论
		//博文评论数-1
		Posts posts = new Posts();
		posts.setPid(pid);
		postsService.updateCommentdown(posts);
		return "/posts.bb?pid="+pid;
	}
	
}
