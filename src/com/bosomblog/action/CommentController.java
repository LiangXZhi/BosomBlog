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
		//��Ϊusers��һ���������������������۱�Ŵ�Ϊ���棬Ȼ�������ݿ��б���ü���
		comments.setCid(uid);
		comments.setCdate(new Date());
		
		if (csuperiorid != null) {
			comments.setCsuperiorid(csuperiorid); //�����ϼ�ID��ֵ
			
			//�����ϼ�����ID����ϼ����۵ĸ���ID��
			//�����Ϊ����ֵ����ǰ���۵ĸ���ID�ֶΣ�
			//���Ϊ�գ������õ�ǰ���۵ĸ���ID�����ϼ�����ID
			Integer parentid = commentService.findParentidByCid(csuperiorid);
			if (parentid == null) {
				comments.setParentid(csuperiorid); //���ø���ID��ֵ
			}else{
				comments.setParentid(parentid); //���ø���ID��ֵ
			}
		}
		
		commentService.insertComments(comments);//�������
		//����������+1
		Posts posts = new Posts();
		posts.setPid(pid);
		postsService.updateCommentadd(posts);
		return "redirect:/posts.bb?pid="+pid;//�ض�����������ʾҳ��
	}
	
	//���ݲ��ı�ź����۱��ɾ������
	@RequestMapping("/deletecid")
	public String delete(@RequestParam("cid") Integer cid ,@RequestParam("pid") Integer pid){
		commentService.deleteCommentsByid(cid); //ɾ������
		//����������-1
		Posts posts = new Posts();
		posts.setPid(pid);
		postsService.updateCommentdown(posts);
		return "/posts.bb?pid="+pid;
	}
	
}
