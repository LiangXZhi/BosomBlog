package com.bosomblog.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bosomblog.dao.PostsMapper;
import com.bosomblog.entity.Comment;
import com.bosomblog.entity.Posts;

@Service
public class PostsService {

	@Autowired
	private PostsMapper postsMapper;

	public Posts findPostById(int pid) {
		return postsMapper.selectByPrimaryKey(pid);
	}

	// ��ѯ�����ö��Ĳ�����Ϣ
	public List<Posts> findPostByList() {
		return postsMapper.getPostByPstatus();
	}

	// ��ѯ���еĲ�����Ϣ����ҳ��ʾ
	public List<Posts> findPostAll(@Param("page") int pages,
			@Param("limit") int limits) {
		return postsMapper.selectByAll(pages, limits);
	}

	// ��ѯ�����Ǿ����Ĳ�����Ϣ
	public List<Posts> findPostByPelite(@Param("page") int pages,
			@Param("limit") int limits) {
		return postsMapper.selectByPelite(pages, limits);
	}

	// �����������ѯ���в���
	public List<Posts> findPostByPreadings(@Param("page") int pages,
			@Param("limit") int limits) {
		return postsMapper.selectByPreadings(pages, limits);
	}

	// ������������ѯ���в���
	public List<Posts> findPostByPcomments(@Param("page") int pages,
			@Param("limit") int limits) {
		return postsMapper.selectByPcomments(pages, limits);
	}

	// ��ѯ����������������������
	public int findPostByCount() {
		return postsMapper.selectByCount();
	}

	// ��ѯ������������
	public int selectByJtCount() {
		return postsMapper.selectByJtCount();
	}

	// ����������
	public int updateCommentadd(Posts posts) {
		return postsMapper.updateCommentadd(posts);
	}

	public int updateCommentdown(Posts posts) {
		return postsMapper.updateCommentdown(posts);
	}

	// ���������
	public int updateReadingadd(Posts posts) {
		return postsMapper.updateReadingadd(posts);
	}

	// ���һ������
	public int insertPost(Posts posts) {
		return postsMapper.insert(posts);
	}

	// ��̨��ѯ���в�����Ϣ
	public List<Posts> selectByAllmsg() {
		return postsMapper.selectByAllmsg();
	}

	// ��̨����id��ѯ��������
	public Posts selectByany(int id) {
		return postsMapper.selectByany(id);
	}

	// ��̨���ݲ��ı��������ģ����ѯ
	public List<Posts> selectgetsome(String sum) {
		return postsMapper.selectgetsome(sum);
	}

	// ���ݲ���ID��ѯ��������ID
	public List<Comment> queryByPostsID(int id) {
		return postsMapper.queryByPostsID(id);
	}

	// ����idɾ����������
	public int deleteByPrimaryKey(int id) {
		return postsMapper.deleteByPrimaryKey(id);
	}

	// ��̨��ѯ��������
	public Posts selectByPrimaryKey(int id) {
		return postsMapper.selectByPrimaryKey(id);
	}

	// ��̨���ľ������ö�
	public int updateByPrimaryKeys(Posts posts) {
		return postsMapper.updateByExampleSelectives(posts);
	}

	// �����û�ID����ѯ���в���
	public List<Posts> findAllByUid(Integer uid) {
		return postsMapper.selectAllByUid(uid);
	}

	// �޸Ĳ�����Ϣ
	public int updatePost(Posts posts) {
		return postsMapper.updateByPrimaryKeySelective(posts);
	}

	// ���ݲ������ͱ�ţ���ѯ���в�����Ϣ
	public List<Posts> findPostsByPtypeID(Integer ptypeid) {
		return postsMapper.selectPostsByPtypeID(ptypeid);
	}

	// ���ݲ��ı���ģ����ѯ������Ϣ
	public List<Posts> findPostsByPTitle(String ptitle) {
		return postsMapper.selectPostsByPTitle('%' + ptitle + '%');
	}

}
