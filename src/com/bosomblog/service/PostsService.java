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

	// 查询所有置顶的博文信息
	public List<Posts> findPostByList() {
		return postsMapper.getPostByPstatus();
	}

	// 查询所有的博文信息，分页显示
	public List<Posts> findPostAll(@Param("page") int pages,
			@Param("limit") int limits) {
		return postsMapper.selectByAll(pages, limits);
	}

	// 查询所有是精贴的博文信息
	public List<Posts> findPostByPelite(@Param("page") int pages,
			@Param("limit") int limits) {
		return postsMapper.selectByPelite(pages, limits);
	}

	// 根据浏览量查询所有博文
	public List<Posts> findPostByPreadings(@Param("page") int pages,
			@Param("limit") int limits) {
		return postsMapper.selectByPreadings(pages, limits);
	}

	// 根据评论量查询所有博文
	public List<Posts> findPostByPcomments(@Param("page") int pages,
			@Param("limit") int limits) {
		return postsMapper.selectByPcomments(pages, limits);
	}

	// 查询满足条件的所有帖子数量
	public int findPostByCount() {
		return postsMapper.selectByCount();
	}

	// 查询精贴所有总数
	public int selectByJtCount() {
		return postsMapper.selectByJtCount();
	}

	// 更新评论数
	public int updateCommentadd(Posts posts) {
		return postsMapper.updateCommentadd(posts);
	}

	public int updateCommentdown(Posts posts) {
		return postsMapper.updateCommentdown(posts);
	}

	// 更新浏览量
	public int updateReadingadd(Posts posts) {
		return postsMapper.updateReadingadd(posts);
	}

	// 添加一条博文
	public int insertPost(Posts posts) {
		return postsMapper.insert(posts);
	}

	// 后台查询所有博客信息
	public List<Posts> selectByAllmsg() {
		return postsMapper.selectByAllmsg();
	}

	// 后台根据id查询单个博文
	public Posts selectByany(int id) {
		return postsMapper.selectByany(id);
	}

	// 后台根据博文标题和内容模糊查询
	public List<Posts> selectgetsome(String sum) {
		return postsMapper.selectgetsome(sum);
	}

	// 根据博客ID查询所有评论ID
	public List<Comment> queryByPostsID(int id) {
		return postsMapper.queryByPostsID(id);
	}

	// 根据id删除单个博客
	public int deleteByPrimaryKey(int id) {
		return postsMapper.deleteByPrimaryKey(id);
	}

	// 后台查询单个对象
	public Posts selectByPrimaryKey(int id) {
		return postsMapper.selectByPrimaryKey(id);
	}

	// 后台更改精贴和置顶
	public int updateByPrimaryKeys(Posts posts) {
		return postsMapper.updateByExampleSelectives(posts);
	}

	// 根据用户ID，查询所有博文
	public List<Posts> findAllByUid(Integer uid) {
		return postsMapper.selectAllByUid(uid);
	}

	// 修改博文信息
	public int updatePost(Posts posts) {
		return postsMapper.updateByPrimaryKeySelective(posts);
	}

	// 根据博文类型编号，查询所有博文信息
	public List<Posts> findPostsByPtypeID(Integer ptypeid) {
		return postsMapper.selectPostsByPtypeID(ptypeid);
	}

	// 根据博文标题模糊查询博文信息
	public List<Posts> findPostsByPTitle(String ptitle) {
		return postsMapper.selectPostsByPTitle('%' + ptitle + '%');
	}

}
