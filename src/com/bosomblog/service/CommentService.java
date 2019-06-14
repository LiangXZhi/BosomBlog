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

	  //���ݲ���ID��ѯ��Ӧ������
	public List<Comment> findCommentsByPids(int pid) {
		return commentMapper.getCommentsByPids(pid);
	}

	// ���ݲ��ı�Ų�ѯ��Ӧ����,����һ�������µ�����
	public List<Comment> findCommentsByCid(Integer pid, Integer cid) {
		// System.out.println(commentMapper.getCommentsByCid(pid,cid));
		return commentMapper.getCommentsByCid(pid, cid);
	}

	// ���������Ϣ
	public int insertComments(Comment comment) {
		return commentMapper.insertSelective(comment);
	}

	// ɾ��ָ��������Ϣ������Ϣ
	public int deleteCommentsByid(Integer cid) {
		return commentMapper.deleteByPrimaryKey(cid);
	}

	// �����ϼ�����ID��ѯ�ϼ��������ǳ�
	public Comment findUNameByCid(Integer csuperiorId) {
		System.out.println("�û�����"
				+ commentMapper.getUNameByCid(csuperiorId).getUsers()
						.getUsersname());
		return commentMapper.getUNameByCid(csuperiorId);
	}

	// �����ϼ�����ID��ѯ�ϼ����۵ĸ�������ID
	public Integer findParentidByCid(Integer csuperiorId) {
		System.out.println("�û�����"
				+ commentMapper.getUNameByCid(csuperiorId).getParentid());
		return commentMapper.getUNameByCid(csuperiorId).getParentid();
	}

	// ��������idɾ��
	public int deleteByPrimaryKey(int id) {
		return commentMapper.deleteByPrimaryKey(id);
	}
	
}
