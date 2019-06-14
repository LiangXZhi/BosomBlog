package com.bosomblog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bosomblog.dao.CommentMapper;
import com.bosomblog.entity.Comment;

@Service
public class CommentService {

	@Autowired
	private CommentMapper commentMapper;

	public List<Comment> findCommentsByPid(int pid) {
		// System.out.println(commentMapper.getCommentsByPid(pid));
		return commentMapper.getCommentsByPid(pid);
	}

	  //根据博文ID查询对应的评论
	public List<Comment> findCommentsByPids(int pid) {
		return commentMapper.getCommentsByPids(pid);
	}

	// 根据博文编号查询对应评论,所有一级评论下的评论
	public List<Comment> findCommentsByCid(Integer pid, Integer cid) {
		// System.out.println(commentMapper.getCommentsByCid(pid,cid));
		return commentMapper.getCommentsByCid(pid, cid);
	}

	// 添加评论信息
	public int insertComments(Comment comment) {
		return commentMapper.insertSelective(comment);
	}

	// 删除指定评论信息评论信息
	public int deleteCommentsByid(Integer cid) {
		return commentMapper.deleteByPrimaryKey(cid);
	}

	// 根据上级评论ID查询上级评论者昵称
	public Comment findUNameByCid(Integer csuperiorId) {
		System.out.println("用户名："
				+ commentMapper.getUNameByCid(csuperiorId).getUsers()
						.getUsersname());
		return commentMapper.getUNameByCid(csuperiorId);
	}

	// 根据上级评论ID查询上级评论的父级评论ID
	public Integer findParentidByCid(Integer csuperiorId) {
		System.out.println("用户名："
				+ commentMapper.getUNameByCid(csuperiorId).getParentid());
		return commentMapper.getUNameByCid(csuperiorId).getParentid();
	}

	// 根据评论id删除
	public int deleteByPrimaryKey(int id) {
		return commentMapper.deleteByPrimaryKey(id);
	}
	
}
